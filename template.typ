// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!
#let project(title: "", authors: (), organization: "", location: "", header: none, body) = {
  // Set the document's basic properties.
  set document(author: authors, title: title)
  set page(paper: "us-letter", numbering: "1", number-align: right)

  // Save heading and body font families in variables.
  let body-font = "New Computer Modern"
  let sans-font = "NewCMSans"

  // Set body font family.
  set text(font: body-font, lang: "en")
  show math.equation: set text(weight: 400)
  show heading: set text(font: sans-font)

  // Title page.
  // The page can contain a header if you pass one with `header: "header.png"`.
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

  //
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

  

  pagebreak()

  // Main body.
  set par(justify: true)

  body
}