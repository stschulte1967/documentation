#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2cm),
)

#set text(font: "New Computer Modern", size: 11pt)
#set heading(numbering: "1.")

#let titleblock(title, subtitle: none, author: none, date: none) = block[
  #align(center)[
    #text(size: 20pt, weight: "bold")[#title]
    #if subtitle != none [
      #parbreak()
      #text(size: 12pt)[#subtitle]
    ]
    #if author != none or date != none [
      #parbreak()
      #text(size: 10pt)[
        #if author != none [Author: #author]
        #if author != none and date != none [  |  ]
        #if date != none [Date: #date]
      ]
    ]
  ]
]

#titleblock(
  "Introduction to Thermodynamics",
  subtitle: "Lesson 1",
  author: "Stephan Schulte",
  date: "2026-08-03",
)

= Overview
This are my private notes on the course "Introduction to Thermodynamics".

== The units on energy and power

The unit of energy is the Joule (J). The unit of power is the Watt (W).

$ J =  "kg" * m^2 /s^2 = N m $

== Example
A simple formula:

$E = m c^2$
