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

= Coding Assignment 1

== Installation of deal.II

== Basis function

Generalized basis function:

$N^A(xi) = product_(B=0,B!=A)^"basisFunctionOrder" (xi - xi^B)/(xi^A - xi^B)$

For order = 1 we find ($xi^0 = -1, xi^1 = 1$):

$N^0(xi) = product_(B=1)^1 (xi - xi^B)/(xi^0 - xi^B) =(xi - 1)/(-1 - 1) = (xi - 1)/(-2) = (1-xi) / 2$

$N^1(xi) = product_(B=0,B!=1)^1 (xi - xi^B)/(xi^1 - xi^B) = (xi - xi^0)/(xi^1 - xi^0) = (xi + 1) / 2 = (1 + xi)/2$

For order = 2 we find ($xi^0 = -1, xi^1 = 0, xi^2 = 1$):

$N^0(xi) = product_(B=0,B!=0)^2 (xi - xi^B)/(xi^0 - xi^B) = ((xi - 0)/(-1 - 0)) ((xi - 1)/(-1 - 1)) = -xi (1-xi)/2$

$N^1(xi) = product_(B=0,B!=1)^2 (xi - xi^B)/(xi^1 - xi^B) = ((xi - -1)/(0 - -1)) ((xi - 1)/(0 - 1)) = (xi + 1)/1 (xi-1)/(-1) = (1 + xi) (1-xi) = 1 - xi^2$

$N^2(xi) = product_(B=0,B!=2)^2 (xi - xi^B)/(xi^2 - xi^B) = ((xi - -1)/(1 - -1)) ((xi - 0)/(1 - 0)) = (xi + 1)/2 xi = xi (1 + xi)/2$

For order = 3 we find ($xi^0 = -1, xi^1 = - 1/3, xi^2 = 1/3, xi^3=1$):

$ N^0(xi) = product_(B=0,B!=0)^3 (xi - xi^B)/(xi^0 - xi^B) = ((xi - -1/3)/(-1 - -1/3)) ((xi - 1/3)/(-1 - 1/3)) ((xi - 1)/(-1 - 1)) = ((xi +1/3)/(-2/3)) ((xi - 1/3)/(-4/3)) ((x - 1)/-2) = $

$ -9/16 xi^3 + 9/16 xi^2 + 1/16 xi - 1/16 = (1-9xi^2)(xi-1)/16$

$ N^1(xi) = 27/16 xi^3 - 9/16 xi^2 - 27/16 xi + 9/16 = (9(xi^2-1)(3xi-1))/16 $

$ N^2(xi) = -27/16 xi^3 - 9/16 xi^2 + 27/16 xi + 9/16 = (9xi^2-1)(xi+1))/16$

$ N^3(xi) = 9/16 xi^3 + 9/16 xi^2 - 1/16 xi - 1/16 = ((9xi^2-1)(xi+1))/16$

== Derivatives of basis functions

Order 1

$N^0_(,xi)(xi) = -1/2$

$N^1_(,xi)(xi) = 1/2$

Order 2

$N^0_(,xi)(xi) = xi -1/2$

$N^1_(,xi)(xi) = xi -2 xi$

$N^2_(,xi)(xi) = xi + 1/2$

Order 3

$N^0_(,xi)(xi) = (-27 xi^2 + 18 xi + 1)/16$

$N^1_(,xi)(xi) = (9 (9xi^2 -2 xi -3))/16$

$N^2_(,xi)(xi) = (-9 (9xi^2 - 2 xi +3)/16$

$N^3_(,xi)(xi) = (27 xi^2 +18 xi -1)/16$





