#import "template.typ": *
#show: template.with(
  title: [考研英语一 复习笔记],
  short_title: "英语一笔记",
  description: [
    考研英语一考试结构分析与写作模板汇总
  ],
  date: datetime(year: 2024, month: 06, day: 04),
  authors: (
    (
      name: "GitHub @ Origami404",
      link: "https://github.com/Origami404",
      affiliations: "1",
    ),
    (
      name: "GitHub @ Tinnci",
      link: "https://github.com/Tinnci",
      affiliations: "2",
    ),
  ),
  affiliations: (
    (id: "1", name: "Original Author"),
    (id: "2", name: "Fork Maintainer - Typst Compatibility & Enhancements"),
  ),
  lof: false,
  lot: false,
  lol: false,
  // bibliography_file: "refs.bib",
  paper_size: "a4",
  cols: 1,
  text_font: "Noto Serif CJK SC",
  code_font: "CaskaydiaCove NFM",
  accent: blue, // blue
)

#show heading: it => { v(0.4em); it; v(-0.1em); }
#show math.equation.where(block: true): it => {v(0.5em); it; v(0.5em);}

#include "./英语/00-考试结构与分值.typ"
#include "./英语/01-写作模板.typ"
