// 错题集专用模板

// 错题模板函数
#let 错题模板(
  title: "数学错题集",
  subject: "数学",
  accent: rgb("#DC143C"),
  body
) = {
  
  // 基本设置
  set document(title: title)
  set page(
    paper: "a4",
    margin: (x: 2cm, y: 2.5cm),
    numbering: "1",
    number-align: center,
    header: [
      #set text(fill: accent, size: 10pt)
      #align(right)[#subject 错题集]
      #line(length: 100%, stroke: (thickness: 0.5pt, paint: accent))
    ]
  )
  
  set text(font: ("Times New Roman", "Noto Serif CJK SC", "SimSun"), size: 11pt)
  set par(justify: true, leading: 0.65em)
  
  // 标题样式
  show heading.where(level: 1): it => [
    #set text(size: 18pt, weight: "bold", fill: accent)
    #v(1em)
    #align(center)[#it.body]
    #v(0.5em)
    #line(length: 60%, stroke: (thickness: 1pt, paint: accent))
    #v(1em)
  ]
  
  show heading.where(level: 2): it => [
    #set text(size: 14pt, weight: "bold", fill: accent)
    #v(0.8em)
    #it.body
    #v(0.3em)
  ]
  
  show heading.where(level: 3): it => [
    #set text(size: 12pt, weight: "bold")
    #v(0.5em)
    #it.body
    #v(0.2em)
  ]
  
  // 数学公式设置
  set math.equation(numbering: "(1)")
  show math.equation: eq => {
    set block(spacing: 0.8em)
    eq
  }
  
  body
}

// 知识点标签函数
#let 知识点标签(tags) = {
  let colors = (
    "微积分": rgb("#e74c3c"),
    "线性代数": rgb("#3498db"), 
    "概率论": rgb("#2ecc71"),
    "中值定理": rgb("#9b59b6"),
    "导数": rgb("#f39c12"),
    "积分": rgb("#e67e22"),
    "矩阵": rgb("#1abc9c"),
    "向量": rgb("#34495e"),
    "随机变量": rgb("#27ae60"),
    "分布": rgb("#8e44ad")
  )
  
  for tag in tags {
    let color = colors.at(tag, default: rgb("#95a5a6"))
    box(
      fill: color.lighten(80%),
      stroke: (paint: color, thickness: 1pt),
      radius: 3pt,
      inset: (x: 6pt, y: 3pt)
    )[
      #set text(size: 9pt, fill: color.darken(20%))
      #strong[#tag]
    ]
    h(0.3em)
  }
}

// 题目框函数
#let 题目框(difficulty: "中等", tags: (), body) = {
  let diff_colors = (
    "简单": rgb("#2ecc71"),
    "中等": rgb("#f39c12"), 
    "困雾": rgb("#e74c3c")
  )
  let diff_color = diff_colors.at(difficulty, default: rgb("#95a5a6"))
  
  block(
    fill: diff_color.lighten(90%),
    stroke: (paint: diff_color, thickness: 2pt),
    radius: 5pt,
    inset: 15pt,
    width: 100%
  )[
    // 题目标题
    #block(
      fill: diff_color.lighten(80%),
      inset: 8pt,
      radius: 3pt,
      width: 100%
    )[
      #set text(weight: "bold", fill: diff_color.darken(20%))
      📝 题目
      #h(0.5em)
      #box(
        fill: diff_color,
        radius: 2pt,
        inset: (x: 6pt, y: 3pt)
      )[
        #set text(size: 9pt, fill: white, weight: "bold")
        #difficulty
      ]
      #h(1fr)
      #知识点标签(tags)
    ]
    
    #v(0.5em)
    #body
  ]
}

// 解析框函数  
#let 解析框(method: "标准解法", body) = {
  let color = rgb("#3498db")
  block(
    fill: color.lighten(95%),
    stroke: (paint: color, thickness: 2pt),
    radius: 5pt,
    inset: 15pt,
    width: 100%
  )[
    #block(
      fill: color.lighten(85%),
      inset: 8pt,
      radius: 3pt,
      width: 100%
    )[
      #set text(weight: "bold", fill: color.darken(20%))
      💡 解析：#method
    ]
    
    #v(0.5em) 
    #body
  ]
}

// 易错点提醒框
#let 易错点(body) = {
  let color = rgb("#e74c3c")
  block(
    fill: color.lighten(95%),
    stroke: (paint: color, thickness: 2pt),
    radius: 5pt,
    inset: 15pt,
    width: 100%
  )[
    #block(
      fill: color.lighten(85%),
      inset: 8pt,
      radius: 3pt,
      width: 100%
    )[
      #set text(weight: "bold", fill: color.darken(20%))
      ⚠️ 易错点
    ]
    
    #v(0.5em)
    #body
  ]
}

// 知识点总结框
#let 知识点总结(body) = {
  let color = rgb("#2ecc71")
  block(
    fill: color.lighten(95%),
    stroke: (paint: color, thickness: 2pt),
    radius: 5pt,
    inset: 15pt,
    width: 100%
  )[
    #block(
      fill: color.lighten(85%),
      inset: 8pt,
      radius: 3pt,
      width: 100%
    )[
      #set text(weight: "bold", fill: color.darken(20%))
      💡 知识点总结
    ]
    
    #v(0.5em)
    #body
  ]
}

// 自动归类函数
#let 自动归类(content) = {
  // 根据内容关键词自动判断知识点
  let tags = ()
  
  if content.contains("导数") or content.contains("f'") or content.contains("微分") {
    tags.push("导数")
  }
  if content.contains("积分") or content.contains("∫") or content.contains("integral") {
    tags.push("积分")
  }
  if content.contains("中值定理") or content.contains("罗尔") or content.contains("拉格朗日") {
    tags.push("中值定理")
  }
  if content.contains("矩阵") or content.contains("matrix") {
    tags.push("矩阵")
  }
  if content.contains("向量") or content.contains("vector") {
    tags.push("向量")
  }
  if content.contains("概率") or content.contains("随机") {
    tags.push("概率论")
  }
  
  // 默认分类
  if tags.len() == 0 {
    if content.contains("f(") or content.contains("函数") {
      tags.push("微积分")
    }
  }
  
  tags
}
