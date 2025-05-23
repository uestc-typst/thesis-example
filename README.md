<div align="center">
<strong>
<samp>

无须给本仓库Star, 建议给[模板](https://github.com/uestc-typst/thesis-template)仓库点Star！有问题也需要在[模板](https://github.com/uestc-typst/thesis-template)仓库提issues.

<h1 align="center">
  <img alt="Typst" src="https://github.com/uestc-typst/thesis-template/blob/main/pics/uestc-love-typst.png">
</h1>

<a href="https://github.com/uestc-typst/thesis-template/blob/main/LICENSE">
<img alt="Apache-2 License" src="https://img.shields.io/badge/license-Apache%202-brightgreen"
></a>

<a href="https://github.com/uestc-typst/thesis-example/blob/output/%E5%AD%A6%E4%BD%8D%E8%AE%BA%E6%96%87%E5%86%99%E4%BD%9C%E6%8C%87%E5%8D%97%E5%8F%8A%E4%BE%8B%E5%AD%90.pdf">
<img alt="doc" src="https://img.shields.io/badge/%E7%82%B9%E8%BF%99%E9%87%8C-%E6%9F%A5%E7%9C%8B%E6%96%87%E6%A1%A3-red.svg"
></a>

<a href="https://qm.qq.com/q/CcdqIUtQfQ">
<img alt="点击加入QQ群" src="https://img.shields.io/badge/%E7%82%B9%E5%87%BB%E5%8A%A0%E5%85%A5-QQ%E7%BE%A4:1051374133-bule?logo=qq"
></a>


<a href="https://github.com/uestc-typst/thesis-template/discussions">
<img alt="discussions" src="https://img.shields.io/badge/%E8%AE%BA%E6%96%87%E5%8F%8D%E9%A6%88-%E8%AE%BA%E5%9D%9B-blue"
></a>

</samp>
</strong>
</div>


# 📚电子科技大学学位论文Typst模板实例

> [!IMPORTANT]  
> 本仓库是一个模板仓库, 在[Github主页](https://github.com/qujihan/uestc-typst-thesis-example)右上角可以看到一个 `Use this template` 按钮, 可以直接使用本仓库作为模板创建一个新的仓库.
> 
> 各位同学可以在本仓库的基础上进行修改
> 
> 模板本着内容于样式分离的原则, 本仓库基本除了内容不包含任何样式代码

# 🚀 快速开始
```shell
# 如果想尝试一下就下载这个
git clone https://github.com/qujihan/uestc-typst-thesis-example.git thesis
# 如果想使用Fork的仓库
git clone https://github.com/{YOUR-NAME}/uestc-typst-thesis-example.git thesis

cd thesis; 
git submodule update --init --recursive

# 生成一个名为 学位论文写作指南及例子.pdf 的文件
# 可以在 makefile 中修改生成的文件名
make build

# 生成一个名为 学位论文写作指南及例子.pdf 的文件, 并且随着写作实时预览
# 可以在 makefile 中修改生成的文件名
make watch
```

# 当 Fork 本仓库后需要更改的事情
## 建议修改
- 修改`.vscode/settings.json`文件
    - 将`学位论文写作指南及例子.pdf`修改为需要的名字(务必以.pdf结尾)
    - 修改`tinymist.exportPdf`参数(我不需要自动构建, 因为会卡, 你可以通过需求修改)

## 🏔️ 流水线构建(如果只想本地写可以忽略)
可以在 `.github/workflows/ci.yml` 文件中修改流水线构建的配置. 比如流水线的名称, 触发条件, 构建命令等

**默认操作是：向任意分支push代码后, 会将所有pdf文件强制推送到output分支(之前生成的文件会被覆盖)**