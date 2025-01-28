#import "lib.typ": *

= 如何使用模板<how-to-use>

== Typst安装<install>
Typst相对于LaTex的一个优点就是安装简单了。在Typst的Github Release#footnote(link("https://github.com/typst/typst/releases"))中找到相应的版本，下载对应系统的安装包就可以了。

另外还有不那么手动的方式：
- 对于Rust用户：`cargo install typst-cli`
- 对于MacOS用户：`brew install typst`
- 对于Windows用户：`scoop install typst`

== 使用指南
在使用之前，需要明确几个问题。首先，如果使用Typst模板，会接触到#text(fill: red)[*两个*]仓库，分别是模板所在的仓库以及示例所在的仓库。我们现在分别成为Template仓库#footnote(link("https://github.com/qujihan/uestc-thesis-typst-template/"))与Example仓库#footnote(link("https://github.com/qujihan/uestc-typst-thesis-example"))。

Template仓库包含模板的代码，定义了应该如何生成学位论文的结构以及论文写作中所需要的一些函数。Example仓库为本文档源代码，这既作为文档又作为写作参考的样例，一举两得。因为作者遵循的理念是样式与内容分离，所以才分为两个目录。

如果你查看本文档的源代码（主要在`src/`目录下）就会发现，怎么写起来和md那么像！只要记住几个函数，并且按照本模板的例子修改一下个人信息，甚至比md还简单！

== 使用指南
由于知识诅咒#footnote(link("https://zh.wikipedia.org/wiki/知识的诅咒"))与精力优先，我无法事无巨细的说明如何使用本模板。所以需要大家多提问，多提问，多提问。

下面我会介绍如何跑起来，再介绍如何使用。

使用指南宝库：字体、图/表、尾注、引用、参考文献、伪代码等。

=== 跑起来

按照一下步骤操作，就可以跑起来。
#block(width: 100%)[
  #set align(center)
  #block()[
    #set align(left)

    ```bash
    # 下载本文源代码
    git clone https://github.com/qujihan/uestc-typst-thesis-example.git example
    cd example;
    # 下载模板代码(模板代码作为git submodule)
    git submodule update --init --recursive
    # makefile中包含了编译命令
    make
    ```
  ]
]

有几个问题，正如 @install 中提到的，现在Typst的版本还没有发布正式版本，所以需要使用`0.13.0-rc1`版本。请使用`cargo install typst-cli@0.13.0-rc1`来安装或者在Github下载。
另外如果提示找不到typst命令，可以在makefile中修改`typst`命令的路径。

=== 字体
如果你编写文档中发现中英文之间，符号与中文中间有错位问题，十之八九是字体原因。模板默认的中文字体是`SimHei`（黑体）与`SimSum`（宋体），英文字体是`Times New Roman`。并没有设置等宽字体。

`SimHei`与`SimSum`是Windows系统自带的字体，与其他系统并不适配。并且是没有加粗功能的。在模板中，加粗是通过描边来实现的。（其实在Word中也是类似的原理）

这个字体不仅老，而且适配度极差，如果可以的话，建议改成思源系列字体#footnote("思源黑体" + link("https://github.com/adobe-fonts/source-han-sans/releases"))#footnote("思源宋体" + link("https://github.com/adobe-fonts/source-han-serif/releases"))。都选择下载Language
Specific xxxxx Simplified Chinese (简体中文) 就可以了。在使用的时候，修改模板目录下的`template/utils/constant.typ`中的`#let font = (宋体: ("Times New Roman", "Source Han Serif SC"), 黑体: ("Times New Roman", "Source Han Sans SC"))`就可以使用了。

#text(fill: red)[本文档使用的思源系列字体。]

=== 图/表
图表处理还是比较麻烦的，当需要插入图片或者表格的时候，需要使用模板提供的函数来插入，因为需要记录图表的编号。（如图1-2
xxx，表3-4 xxx）

模板提供的函数可以在模板目录下的`template/tools/figure-i.typ`中找到。也可以看`template/tools/lib.typ`中的`figure-i`向外提供了什么函数。

下面举个例子。

示例代码：
#block(width: 100%)[
  #set align(center)
  #block(breakable: false)[
    #set align(left)
    ```typ
    // 首先需要导入模板
    #import "../uestc-thesis-template/lib.typ":*

    #picture-figure("这是一个测试图片", image("/path.svg"))
    #picture-figure("这是一个测试图片", image("/path.svg"))
    #table-figure("这是一个表格", table("1", "2", "3", "4"))
    #table-figure("这是一个表格", table("1", "2", "3", "4"))
    ```
  ]
]

#picture-figure("这是一个测试图片", image("/uestc-thesis-template/pics/logo.svg"))
#picture-figure("这是一个测试图片", image("/uestc-thesis-template/pics/logo.svg"))
#table-figure("这是一个表格", table("1", "2", "3", "4"))
#table-figure("这是一个表格", table("1", "2", "3", "4"))

会发现，因为当前是在@how-to-use 中，所以figure的编号是从当前章节开始的。

==== 三线表
#block(width: 100%)[
  #set align(center)
  #block(breakable: false)[
    #set align(left)
    ```typ
    #block(width: 100%)[
      #set align(center + horizon)
      #set text(size: 10pt)
      #table(
        columns: 2,
        stroke: none,
        // 这是顶头的粗线
        table.hline(stroke: 1pt),
        table.header([名称], [网站]),
        // 这是中间的细线
        table.hline(stroke: 0.5pt),
        // 第一行
        [电子科技大学研究生学位论文撰写规范#linebreak()（2022年1月修订）],
        [#link("https://gr.uestc.edu.cn/xiazai/114/3917")],
        // 第二行
        [电子科技大学视觉形象],
        [#link("https://vi.uestc.edu.cn/")],
        // 第三行
        [Typst 模板地址],
        [#link("https://github.com/qujihan/uestc-thesis-typst-template")],
        // 这是下面的粗线
        table.hline(stroke: 1pt),
      )
    ]
    ```
  ]
  #linebreak()
]

效果：
#block(width: 100%)[
  #set align(center + horizon)
  #set text(size: 10pt)
  #table(
    columns: 2,
    stroke: none,
    // 这是顶头的粗线
    table.hline(stroke: 1pt),
    table.header([名称], [网站]),
    // 这是中间的细线
    table.hline(stroke: 0.5pt),
    // 第一行
    [电子科技大学研究生学位论文撰写规范#linebreak()（2022年1月修订）],
    [#link("https://gr.uestc.edu.cn/xiazai/114/3917")],
    // 第二行
    [电子科技大学视觉形象],
    [#link("https://vi.uestc.edu.cn/")],
    // 第三行
    [Typst 模板地址],
    [#link("https://github.com/qujihan/uestc-thesis-typst-template")],
    // 这是下面的粗线
    table.hline(stroke: 1pt),
  )
]

=== 尾注

示例代码：
#block(width: 100%)[
  #set align(center)
  #block(breakable: false)[
    #set align(left)
    ```typ
    这是学校的官网#footnote(link("电子科技大学：" + "https://www.uestc.edu.cn/"))。
    ```
    #linebreak()
  ]
]

效果如下：

这是学校的官网#footnote(link("电子科技大学：" + "https://www.uestc.edu.cn/"))。

link的作用是可以点击跳转。

=== 引用
引用比较简单，在想要被引用的对象后面添加一个`<ref-anchor>`，当想要引用的时候使用`@ref-anchor`就可以了。

示例代码：
#block(width: 100%)[
  #set align(center)
  #block(breakable: false)[
    #set align(left)
    ```typ
    #picture-figure(
      "这是一个测试图片",
      image("/uestc-thesis-template/pics/logo.svg")
    )<uestc-logo>

    我会在这里引用@uestc-logo。
    ```
    #linebreak()
  ]
]

#picture-figure("这是一个测试图片", image("/uestc-thesis-template/pics/logo.svg"))<uestc-logo>
我会在这里引用@uestc-logo。

=== 参考文献

参考文献使用`bib`格式，可以参考`src/bib/`目录下的例子。 当想要引用的时候，与上文的引用如出一撤。

示例代码：
#block(width: 100%)[
  #set align(center)
  #block(breakable: false)[
    #set align(left)
    bib文件，在`src/bib/`目录下。

    ```bib
    @book{kopka2004guide,
      title     = {Guide to LATEX},
      author    = {Kopka, Helmut and Daly, Patrick W and Rahtz, SPQ},
      volume    = {4},
      year      = {2004},
      publisher = {Addison-Wesley Boston, MA}
    }
    ```

    typ文件中引用。
    ```typ
    我这里会引用参考文献@kopka2004guide。
    ```
  ]
  #linebreak()
]

我这里会引用参考文献@kopka2004guide。

== 常见的问题

=== 路径
如果翻看了#link("")[本文档仓库]的makefile文件，会发现有`--root .`这个参数。这个参数指定了资源的根目录。

在访问时候，可以使用`/src/test.png`这样的绝对路径来访问，也可以使用`test.png`这样的相对路径来访问。（假设编写的文档与test.png在同一个目录）

=== Git
在使用Git管理代码的时候，如果使用中文路径，可能会转换成unicode代码，无法分辨出原始路径。类似显示`\u4e2d\u6587\u8def\u5f84`。

可以在命令行中使用`git config --global core.quotepath false`来解决这个问题。
