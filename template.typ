// CTU dissertation template
// Adjust fonts, margins, and heading styles here.

#let dissertation(
  title: "",
  title-czech: "",
  author: "",
  supervisor: "",
  department: "",
  year: "",
  abstract-en: [],
  abstract-cs: [],
  body,
) = {

  // ── Document metadata ────────────────────────────────────────────────
  set document(title: title, author: author)

  // ── Page geometry ────────────────────────────────────────────────────
  set page(
    paper: "a4",
    margin: (top: 2.5cm, bottom: 2.5cm, inside: 3.5cm, outside: 2.5cm),
    numbering: "1",
    number-align: center,
  )

  // ── Typography ────────────────────────────────────────────────────────
  set text(font: "New Computer Modern", size: 11pt, lang: "en")
  set par(justify: true, leading: 0.65em)

  // ── Headings ─────────────────────────────────────────────────────────
  set heading(numbering: "1.1")
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    v(1.5em)
    block(text(size: 18pt, weight: "bold", it))
    v(1em)
  }
  show heading.where(level: 2): it => {
    v(1em)
    block(text(size: 14pt, weight: "bold", it))
    v(0.5em)
  }

  // ── Title page ───────────────────────────────────────────────────────
  page(numbering: none)[
    #align(center)[
      #v(3cm)
      #text(size: 14pt)[Czech Technical University in Prague] \
      #text(size: 12pt)[Faculty of Electrical Engineering] \
      #text(size: 12pt)[#department]
      #v(3cm)
      #text(size: 22pt, weight: "bold")[#title]
      #v(1cm)
      #text(size: 14pt, style: "italic")[#title-czech]
      #v(2cm)
      #text(size: 14pt)[PhD Dissertation]
      #v(3cm)
      #grid(
        columns: (1fr, 1fr),
        align: (left, right),
        [*Author:* #author],
        [*Supervisor:* #supervisor],
      )
      #v(1fr)
      #text(size: 12pt)[Prague, #year]
    ]
  ]

  // ── Abstracts ─────────────────────────────────────────────────────────
  page(numbering: none)[
    #heading(level: 1, numbering: none, outlined: false)[Abstract]
    #abstract-en
    #v(2em)
    #heading(level: 1, numbering: none, outlined: false)[Abstrakt]
    #abstract-cs
  ]

  // ── Table of contents ─────────────────────────────────────────────────
  page(numbering: none)[
    #outline(indent: 1em)
  ]

  // ── Body ──────────────────────────────────────────────────────────────
  counter(page).update(1)
  body
}
