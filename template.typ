#let notebook(title: "", authors: (), organization: "", location: "", header: none, body) = {
  set document(author: authors, title: title) // PDF metadata
  set page(paper:"a4")

  // Font setup
  let body-font = "New Computer Modern"
  let sans-font = "NewCMSans"
  set text(font: body-font, lang: "en")
  show math.equation: set text(weight: 400)
  show heading: set text(font: sans-font)

  // Title page (flagged for reconstruction)
  move(dy:-100pt)[
    #if header != none {
        align(center, image(header, width: 650pt, height: 400pt))
    }
  ]
  move(dx:-100pt, dy:-100pt,
    rect(width: 300%, outset: 20pt, fill:rgb("#FAC898"))[
        #move(dx:95pt)[
        #pad(
            right: 20%,
            text(font: sans-font, 2.5em, weight: 700, title),   
        )
        #pad(
            right: 20%,
            text(font: sans-font, 1em, weight: 700, authors),
        )
        ]
    ]
  )
  pad(
    top: -6em,
    right: 20%,
    text(font: body-font, 1em, organization)
  )  
  pad(
    top: -0.5em,
    right: 20%,
    text(font: body-font, 1em, location),
  )
  v(1fr)
  pagebreak()

  // Blank page
  pagebreak()

  // Table of contents
  table(
  columns: (auto, auto, auto),
  inset: 10pt,
  align: horizon,
  [], [], [],
  [], [], [],
  [], [], []
  )
  pagebreak()

  // Blank page
  pagebreak()

  // Main body
  set page(numbering: "1", footer: locate(loc => {
      let i = counter(page).at(loc).first() // Get page number
      if calc.even(i) {
        return align(left,[#i])
      }
      if calc.odd(i) {
        return align(right,[#i])
      }
      
    }))
  counter(page).update(1)
  set par(justify: true)

  body
}