// 数学公式背诵模板

#let 数学公式背诵模板(
  title: "数学公式背诵",
  subject: "数学",
  accent: rgb("#3498db"),
  body
) = {
  set document(title: title)
  set page(
    paper: "a4",
    margin: (x: 2cm, y: 2.5cm),
    numbering: "1",
    number-align: center,
    header: [
      #set text(fill: accent, size: 10pt)
      #align(right)[#subject 公式背诵]
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
  
  // 数学公式设置
  set math.equation(numbering: "(1)")
  show math.equation: eq => {
    set block(spacing: 0.8em)
    eq
  }
  
  body
}

