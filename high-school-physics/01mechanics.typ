#import "@preview/diverential:0.3.0": *

#set page(
  paper: "a4",
  margin: (left: 30mm, right: 30mm, top: 25mm, bottom: 25mm),
  numbering: "1",
)

#set text(font: "Libertinus Serif", size: 11pt)
#set par(leading: 0.8em)
#set heading(numbering: "1.")

#show heading: it => {
  block(above: 1.2em, below: 0.5em)[
    #text(size: 1.15em, weight: "bold")[#it.body]
  ]
}

#let report-title = "High School Physics"
#let report-subtitle = "Mechanics"
#let report-course = "High School Physics"
#let report-author = "Stephan Schulte"
#let report-date = "November 17, 2026"

#align(center)[
  #text(size: 24pt, weight: "bold")[#report-title]
  #v(0.5em)
  #text(size: 14pt, fill: rgb("4d4d4d"))[#report-subtitle]
  #v(1.5em)
  #text(size: 12pt)[#report-course]
  #linebreak()
  #text(size: 11pt)[#report-author]
  #linebreak()
  #text(size: 10pt, fill: gray)[#report-date]
]

#v(2cm)

#outline(title: "Table of Contents")

#pagebreak()

= Describing motion

- Position: $arrow(x)$
- Velocity: $arrow(v) = dv(arrow(x), t)$
- Acceleration: $arrow(a) = dv(arrow(v),t) = dv(arrow(x),t, deg: 2)$

= Forces

- Applied Force (Pull)
- Graviational Force (Pull)
- Normal Force (Push)
- Frictional Force (Push)
- Thrust (Push)
- Drag (Push)
- Buoyant (Push)
- Lift (Push)

$ arrow(F)_"net" = sum(arrow(F)) $

= Newton's first and second law

== Newton's first law

What keeps objects at rest? Objects at rest have a natural tendency to stay at rest until an unbalanced force acts on it.

What keeps object in motion? Objects in motion have a natural tendency to continue its motion with same velocity until an unbalanced force ats on it!

Objects at rest stay at rest. Objects in motion stay in motion at the same velocity until an unbalanced force acts on it!

== Newton's second law

$ arrow(a) = sum(arrow(F))/M $

== Newton's third law

When A puts a force on B, B puts an equal and opposite force an A.

$ arrow(F)_"AB" = - arrow(F)_"BA" $


