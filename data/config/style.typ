// BẢNG MÀU — đổi 3 dòng này để đổi toàn bộ màu chủ đề tài liệu
// ------------------------------------------------------------
#let color-primary   = rgb("#1B3A6B")   // xanh navy — heading, đường kẻ, tiêu đề chạy
#let color-accent    = rgb("#2E7D6B")   // xanh rêu — khung ví dụ
#let color-warn      = rgb("#B5651D")   // cam đất — khung nhận xét/lưu ý
#let color-bg-light  = rgb("#F4F6FA")   // nền khung định nghĩa
#let color-bg-accent = rgb("#F1F7F5")   // nền khung ví dụ
#let color-bg-warn   = rgb("#FBF1E8")   // nền khung nhận xét

// ------------------------------------------------------------
// KHUNG NỘI DUNG: Định nghĩa / Ví dụ / Nhận xét
// Dùng trong main.typ: #def[...]  #example[...]  #note[...]
// ------------------------------------------------------------
#let def(title: "Định nghĩa", body) = block(
  width: 100%, fill: color-bg-light, stroke: (left: 3pt + color-primary),
  inset: (left: 12pt, right: 10pt, top: 8pt, bottom: 8pt), radius: 2pt,
  above: 1em, below: 1em,
)[#text(fill: color-primary, weight: "bold")[#title.] #body]

#let example(title: "Ví dụ", body) = block(
  width: 100%, fill: color-bg-accent, stroke: (left: 3pt + color-accent),
  inset: (left: 12pt, right: 10pt, top: 8pt, bottom: 8pt), radius: 2pt,
  above: 1em, below: 1em,
)[#text(fill: color-accent, weight: "bold")[#title.] #body]

#let note(title: "Nhận xét", body) = block(
  width: 100%, fill: color-bg-warn, stroke: (left: 3pt + color-warn),
  inset: (left: 12pt, right: 10pt, top: 8pt, bottom: 8pt), radius: 2pt,
  above: 1em, below: 1em,
)[#text(fill: color-warn, weight: "bold")[#title.] #body]

// ------------------------------------------------------------
// BẢNG có hàng tiêu đề tô màu
// Dùng: #styled-table(columns: (auto, auto), [Cột 1], [Cột 2], [a], [b])
// ------------------------------------------------------------
#let styled-table(columns: none, ..cells) = table(
  columns: columns, align: left + horizon,
  stroke: 0.5pt + rgb("#CCCCCC"),
  fill: (x, y) => if y == 0 { color-primary } else if calc.odd(y) { color-bg-light } else { white },
  inset: 7pt,
  ..cells.pos().enumerate().map(((i, c)) => {
    if i < columns.len() { text(fill: white, weight: "bold")[#c] } else { c }
  })
)

// ---------------------------------------------
#let project(title: "", authors: (), date: none, body) = {

  // 1) Trang & số trang
  set page(
    paper: "a4",
    margin: (top: 2.5cm, bottom: 2.5cm, left: 3cm, right: 2cm),
    numbering: "1",
    number-align: center + bottom,
    header: context {
      let chs = query(heading.where(level: 1).before(here()))
      if chs.len() > 0 and here().page() > 1 {
        set text(size: 9pt, fill: color-primary)
        align(right)[#upper(chs.last().body)]
        v(-6pt)
        line(length: 100%, stroke: 0.4pt + color-primary)
      }
    },
  )

  // 2) Phông chữ & ngôn ngữ
  set text(font: ("STIX Two Text", "Times New Roman"), size: 13pt, lang: "vi")

  // 3) Đoạn văn
  set par(justify: true, leading: 0.8em, first-line-indent:( amount: 1.27cm, all: true))
  show par: set block(spacing: 1.2em)

  // 4) Đánh số chương/mục — "1", "1.1", "1.1.1"
  set heading(numbering: "1.1")

  // 5) Heading cấp 1: có nhãn "CHƯƠNG x", canh giữa, đường kẻ màu bên dưới
  show heading.where(level: 1): it => {
    pagebreak(weak: true) 
  
    v(0.5em)
    align(center)[
      #if it.numbering != none [
        #text(size: 15pt, weight: "bold", fill: color-primary)[CHƯƠNG #counter(heading).display()]
        #linebreak()
      ]
      #text(size: 17pt, weight: "bold")[#upper(it.body)]
    ]
    v(0em)
    line(length: 100%, stroke: 1.2pt + color-primary)
    v(0cm)
  }

  // 6) Heading cấp 2, cấp 3
  show heading.where(level: 2): it => {
    v(0.9em)
    text(size: 14pt, weight: "bold", fill: color-primary)[#it]
    v(0.2em)
  }
  show heading.where(level: 3): it => text(size: 13pt, weight: "bold", style: "italic")[#it]

  // 7) Caption cho bảng/hình: đậm, màu primary, dạng "Bảng 1: ..."
  show figure.caption: it => text(size: 10.5pt, fill: color-primary)[
    #text(weight: "bold")[#it.supplement #context it.counter.display():] #it.body
  ]

show math.equation.where(block: false): set text(size: 15pt)
  show math.equation.where(block: true): set text(size: 15pt) 
  
  // 8) Khối tiêu đề bài viết (chỉ hiện nếu title != "" — để trống nếu bạn tự
  //    làm trang bìa riêng bằng #page(numbering: none)[...] trong main.typ)
  if title != "" {
    align(center)[
      #text(size: 18pt, weight: "bold")[#title]
      #v(0.8em)
      #if authors.len() > 0 [
        #text(size: 11pt, style: "italic")[#authors.join(", ")]
        #v(0.4em)
      ]
      #if date != none [#text(size: 10pt)[#date]]
    ]
    v(1.5em)
  }

  body
}
