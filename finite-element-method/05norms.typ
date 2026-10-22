#import "@preview/diverential:0.3.0": *

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
  "Finite Element Method",
  subtitle: "Lesson 5",
  author: "Stephan Schulte",
  date: "2026-08-03",
)

= Lesson 5 - Norms

Consider the finite-dimensional trial solution, $u^h$ - also called the finite element solution.

$u^h_e = sum_A N^A d^A_e$

- $u^h_e$ is continuous
- $u^h_(,x)$ is continuous in $Omega^e$
- $u^h_(,x)$ is dis-continuous in $Omega$

The Lagrange polynomial basis functions have been constructed to be only $C^0 (Omega)$ - not $C^n(Omega)$ for $n > 0$.

In general a function is in $C^n(Omega)$ if its derivatoves up tp oder $n$ are continous on $Omega$.

However, does $u^h in H^1(Omega)$?

$integral_Omega ((u^h)^2 + (m(Omega)^(2/n_"sd") (u^h_",x")^2) d x < infinity$



