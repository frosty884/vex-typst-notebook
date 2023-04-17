#import "template.typ": *

#show: notebook.with(
  title: "Engineering Notebook 2023-2024",
  authors: "John Doe, Jane Doe",
  organization: "Illinois Institute of Technology",
  location: "Chicago, Illinois",
  header: "header.jpg",
)

// We generated the example code below so you can see how
// your document will look. Go ahead and replace it with
// your own content!
#table(
  columns: (auto, auto, auto),
  inset: 10pt,
  align: horizon,
  [], [*Area*], [*Parameters*],
  [],
  $ pi h (D^2 - d^2) / 4 $,
  [
    $h$: height \
    $D$: outer radius \
    $d$: inner radius
  ],
  [],
  $ sqrt(2) / 12 a^3 $,
  [$a$: edge length]
)

#counter(heading).display()

= Introduction
#lorem(60)

== In this paper
#lorem(20)

=== Contributions
#lorem(40)

= Related Work
#lorem(1400)
