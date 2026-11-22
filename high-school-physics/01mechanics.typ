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


