// 单题错题模板
#import "../错题模板.typ": *

// 单题函数
#let 单题(
  题号: "001",
  标题: "题目标题",
  科目: "数学",
  难度: "中等",
  知识点: (),
  题目内容: [],
  解析方法: "标准解法", 
  解析内容: [],
  易错点内容: none,
  知识点总结内容: none
) = {
  
  // 使用错题模板
  show: 错题模板.with(
    title: 科目 + "错题 " + 题号 + " - " + 标题,
    subject: 科目,
    accent: if 科目 == "微积分" { rgb("#e74c3c") } 
            else if 科目 == "线性代数" { rgb("#3498db") }
            else if 科目 == "概率论" { rgb("#2ecc71") }
            else { rgb("#95a5a6") }
  )
  
  // 标题
  align(center)[
    #set text(size: 16pt, weight: "bold")
    #科目 错题 #题号
    #if 标题 != none [
      #linebreak()
      #set text(size: 14pt)
      #标题
    ]
  ]
  
  v(1em)
  
  // 题目框
  题目框(
    difficulty: 难度,
    tags: 知识点
  )[
    #题目内容
  ]
  
  v(0.8em)
  
  // 解析框
  解析框(
    method: 解析方法
  )[
    #解析内容
  ]
  
  // 易错点（可选）
  if 易错点内容 != none {
    v(0.8em)
    易错点[
      #易错点内容
    ]
  }
  
  // 知识点总结（可选）
  if 知识点总结内容 != none {
    v(0.8em)
    知识点总结[
      #知识点总结内容
    ]
  }
}
