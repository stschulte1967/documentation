#import "@preview/diverential:0.3.0": *

#let report(
  title,
  subtitle: none,
  author: none,
  date: datetime.today().display(),
  organization: none,
  abstract: none,
  toc: true,
  body,
) = {
  set document(
    title: title,
    author: if author == none { () } else { (author,) },
  )

  set page(
    paper: "a4",
    margin: (top: 2.5cm, bottom: 2.5cm, left: 2.4cm, right: 2.4cm),
  )

  set text(
    font: "New Computer Modern",
    size: 11pt,
  )

  set par(
    justify: true,
    leading: 0.65em,
    first-line-indent: 0pt,
  )

  set heading(numbering: "1.")

  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    v(0.8em)
    text(size: 18pt, weight: "bold")[#it.body]
    v(0.4em)
  }

  show heading.where(level: 2): it => {
    v(0.7em)
    text(size: 14pt, weight: "bold")[#it.body]
    v(0.3em)
  }

  show heading.where(level: 3): it => {
    v(0.5em)
    text(size: 12pt, weight: "bold")[#it.body]
  }

  show link: set text(fill: rgb("#2155a3"))

  align(center + horizon)[
    #if organization != none [
      #text(size: 12pt, weight: "bold")[#organization]
      #v(1.5cm)
    ]

    #text(size: 24pt, weight: "bold")[#title]

    #if subtitle != none [
      #v(0.25cm)
      #text(size: 14pt)[#subtitle]
    ]

    #v(1.2cm)

    #if author != none [
      #text(size: 12pt)[#author]
    ]

    #if date != none [
      #v(0.15cm)
      #text(size: 11pt)[#date]
    ]

    #v(1fr)

    #if abstract != none [
      #block(width: 80%, align(left)[
        #text(size: 12pt, weight: "bold")[Abstract]
        #v(0.25em)
        #text(size: 10pt)[#abstract]
      ])
    ]
  ]

  pagebreak()

  set page(
    header: context {
      let page-number = counter(page).get().first()
      if page-number > 1 [
        #text(size: 9pt, fill: rgb("#666666"))[#title]
        #h(1fr)
        #text(size: 9pt, fill: rgb("#666666"))[#page-number]
        #v(-0.2em)
        #line(length: 100%, stroke: 0.5pt + rgb("#bbbbbb"))
      ]
    },
  )

  if toc [
    heading(level: 1, numbering: none)[Contents]
    outline(
      title: none,
      indent: auto,
      depth: 3,
    )
    pagebreak()
  ]

  body
}

= No lo set

== Momentum

$ arrow(p) = m arrow(v) $

$ sum(arrow(F)) = dv(m arrow(v), t) $

== Conservation of Momentum

If A and B are interacting with each other $d arrow(p)_A = d arrow(p)_b$.

== Impuls

Impuls: $sum(arrow(F)) d t = d p$ = change of momentum. 

= Gravity

== Newton's law of gravity

Gravity is the force of attraction between two masses.

$ F_g = (G m_1 m_2)/(r^2) $ 

G is $6.67 * 10^(-11) (N m^2)/("kg"^2)$

Near to earth we have

$ F_g = (G M m)/(R^2) $

where $G$ is the gravitational constant, $M$ is the mass of earth and $R$ is the radius of earth.

We know that $F_g = m g$ and so 

$ g = (G M)/(R^2) $

== Centripetal force

At constant speed a circular movement as to fulfill $sum(arrow(F))$ is orthogonal to $arrow(v)$

== Orbital motion

Keplers first law:

All planets revolve around the sun in an elliptical orbit with sun at one of the foci.

Kepler's second law:

A line joining the planet and the sun sweeps equal areas at equal time intervals.

Kepler's third law:

Farther the planet, longer the time period.

= Electrostatic

== Coulomb's law

Charge: $e = 1.602 * 10^(-19)C$

$ arrow(F) = K(q_1 q_2)/(arrow(r)^2) $

with $K = 8.99*10^9 (N m)/C^2$.

$ arrow(E) = arrow(F)/Q $

= Energy

== Kinetic Energy

Energy through to motion.

$ K = 1/2 m v^2 $

== Potential Energy

Energy through to location.

Potential energy is assigned to a system of interacting particles.

Depends on arragement

== Konservation of energy



