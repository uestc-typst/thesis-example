#import "uestc-thesis-template/lib.typ": *

#show: thesis.with(
  info: (
    // DEBUG 开关
    // DEBUG: true,
    /*
      论文排版基础信息
    */
    info-keys.匿名: false,
    info-keys.黑体字体: "SimHei",
    info-keys.宋体字体: "SimSun",
    info-keys.加粗粗度: 250, // 只有在不使用 Sim* 系列字体的时候会起作用
    /*
      封面信息
      作者基本参数 会影响总体封面效果
    */
    info-keys.申请学位级别: "硕士", // 硕士、博士
    info-keys.学位类型: "专业型", // 学术型、专业型
    /*
      封面
      可以在标题以及学院中看到使用 \n 来换行
      其他标识符也是可以的, 例如 \t
    */
    info-keys.论文中文标题: "UESTC-Typst学位论文模板\n使用指南及使用示例",
    info-keys.作者学科专业: "排版学", // 学术型填写, 专业型忽略
    info-keys.作者专业学位类别: "排版学", // 专业型填写, 学术型忽略
    info-keys.作者学号: "2022XXXXXXXX",
    info-keys.作者中文名: "作者姓名",
    info-keys.指导老师中文名: "导师姓名",
    info-keys.指导老师职称中文: "教授",
    info-keys.作者学院: "计算机科学与工程学院\n(网络空间安全学院)",
    /*
      中文扉页
    */
    info-keys.分类号: "TP309.2",
    info-keys.密级: "公开",
    info-keys.UDC: "004.78",
    // 标题与已经在封面中中定义
    // 作者中文名已经在封面中定义
    // 指导老师中文名已经在封面中定义
    // 指导老师职称中文已经在封面中定义
    info-keys.指导老师单位: "电子科技大学 成都",
    info-keys.合作导师中文名: "合作导师姓名",
    info-keys.合作导师职称中文: "教授",
    info-keys.合作导师单位: "合作导师单位",
    // 申请学位级别已经在作者基本参数中定义
    // 专业型: 专业学位类型 已经在封面中定义
    // 学术型: 作者学科专业 已经在封面中定义
    info-keys.专业学位领域: "Typst排版", // 专业型填写, 学术型忽略
    info-keys.提交日期: "2025年3月17日",
    info-keys.答辩日期: "2025年4月15日",
    info-keys.学位授予单位: "电子科技大学",
    info-keys.学位授予日期: "2025年6月1日",
    info-keys.答辩委员会主席: "主席名称",
    info-keys.答辩委员会主席职称: "主席职称",
    info-keys.答辩委员会成员: ("xxx", "xxx"),
    info-keys.答辩委员会成员职称: ("xxx", "xxx"),
    /*
       英文扉页
    */
    info-keys.论文英文标题: "UESTC-Typst Thesis Template Usage Guide and Usage Examples",
    info-keys.作者学科专业英文: "Imitate the Heaven and Earth", // 学术型填写, 专业型忽略
    info-keys.作者专业学位类别英文: "Three heads and six arms", // 专业型填写, 学术型忽略
    info-keys.作者英文名: "Nezha",
    info-keys.指导老师英文名: "Taiyi Zhenren",
    info-keys.指导老师职称英文: "Sage",
    info-keys.作者学院英文: "Jinguang Cave on Qianyuan Mountain",
    /*
      论文内容信息
      这里需要注意直接传字符串(如参考文献)以及include(如中文摘要部分)的区别
      在示例文章中有描述, 搜索关键字include
    */
    info-keys.中文摘要: include "src/摘要-中文.typ",
    info-keys.中文摘要关键字: ("电子科技大学", "Typst", "学位论文", "前程似锦"),
    info-keys.英文摘要: include "src/摘要-英语.typ",
    info-keys.英文摘要关键字: ("UESTC", "Typst", "Thesis", "Future"),
    info-keys.附录: (include "src/附录-1.typ", include "src/附录-2.typ"),
    info-keys.致谢: include "src/致谢.typ",
    info-keys.参考文献: "src/bib/参考文献1.bib",
    info-keys.攻读学位期间取得成果: include "src/攻读学位期间取得成果.typ",
  ),
)

#include "src/chapter1.typ"
#include "src/chapter2.typ"
#include "src/chapter3.typ"
#include "src/chapter4.typ"
