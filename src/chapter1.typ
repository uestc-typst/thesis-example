#import "lib.typ": *

= 绪论
== 为什么使用Typst
在Github仓库的README中也提到了，学校并没有强制我们使用Word或者LaTeX，只要是符合学校的论文要求既可，如@要求
所示。正是有了这句话，才有了后面的故事（笑）。

#picture-figure("学校对于学位论文实现的要求", image("/src/pic/学位论文实现形式不做要求.png", width: 80%))<要求>

在知乎上有一篇文章《Typst 中文用户使用体验》#footnote(link("https://zhuanlan.zhihu.com/p/669097092"))，非常详细的介绍了Typst的优点，以及与LaTex的对比。

稍微总结一下就是：简单、快。

虽然比不上Word的所见所得，但是在我M1芯片的Macbook
Air上面，实时预览本文的速度数量级大概是毫米级的。错误排查的能力更是甩LaTex几条街。

在易用性上，如果不编写模板的话，在我所知的文档工具里，仅仅比markdown难。在写作方便，只要在交叉引用、图片、表格、公式等方面需要一些处理，其他的地方与markdown*几乎无异*。

想象一下，对于一个复杂的文档，Word模板可能鼠标乱点就会搞坏，但是在Git的加持下，只要不动template所在的目录，基本上没有搞坏模板的可能性。至于LaTex...，我虽然用的不太多，但是满屏反斜杠真令我望而生畏。

== Typst资源

诚然Typst优势非常明显，但是不得不承认，Typst是一个新兴的技术，在资源上还是比较欠缺的。

在24年9月份左右，Typst官方上线了Forum（类似论坛）。我认为算是Typst的里程碑事件了。我在使用Typst的过程中，遇到的许多问题都是在上面找到的答案。

还有Typst的中文社区也是非常活跃，Typst的LSP（Tinymist Typst）就是中文社区的一位大佬开发的。

插播一条八卦：曾经最出名的LSP是typst-lsp，但是功能落后且更新缓慢。得益于他的好名字，还是很多不明真相的人去使用。于是Typst的作者去了Github上提了一个issue#footnote(link("https://github.com/nvarner/typst-lsp/issues/520"))，呼吁typst-lsp的作者废弃该插件，并让大家去使用Tinymist
Typst。

下面罗列一下Typst一些资源：
- #link("https://typst.app/home/")[Typst 官网]： #link("https://typst.app/home/")
- #link("https://typst.app/docs/")[Typst 文档]： #link("https://typst.app/docs/") 我经常使用
- #link("https://forum.typst.app/")[Typst 论坛]： #link("https://forum.typst.app/") 有问题在这里提问，基本上都能找到答案
- #link("https://github.com/typst/")[Typst Github]： #link("https://github.com/typst/")
- #link("https://typst-doc-cn.github.io/guide/")[Typst 中文社区]： #link("https://typst-doc-cn.github.io/guide/")
- #link("https://typst-doc-cn.github.io/tutorial/")[Typst 小蓝书]： #link("https://typst-doc-cn.github.io/tutorial/")
- #link("https://typst-doc-cn.github.io/guide/FAQ.html")[Typst 常见问题]： #link("https://typst-doc-cn.github.io/guide/FAQ.html")

最后，欢迎大家加入UESTC Typst 学位论文群：#link("https://github.com/qujihan/uestc-thesis-typst-template/issues/1")
