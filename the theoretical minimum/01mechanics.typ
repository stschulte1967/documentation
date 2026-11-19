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

#let report-title = "Theoretical Minimum"
#let report-subtitle = "Mechanics"
#let report-author = "Stephan Schulte"
#let report-date = "November 15, 2026"

#align(center)[
  #text(size: 24pt, weight: "bold")[#report-title]
  #v(0.5em)
  #text(size: 14pt, fill: rgb("4d4d4d"))[#report-subtitle]
  #v(1.5em)
  #text(size: 12pt)[#report-author]
  #linebreak()
  #text(size: 10pt, fill: gray)[#report-date]
]

#v(2cm)


#outline(title: "Table of Contents")

#pagebreak()

= The nature of classical physics

== Exercise	1:	

Since	the	notion	is	so	important	to	theoretical	physics,	think	about	what	a	closed
system	is	and	speculate	on	whether	closed	systems	can	actually	exist.	What	assumptions	are
implicit	in	establishing	a	closed	system?	What	is	an	open	system?

Answer:

By definition a closed system is one where no mass is exchanged which the environment.

There cannot exist a real closed system, except probably the whole universe, and even there we do not know whether this really exists, or whether there are more than one universe interconnected which each other.

What we normally see as a closed system is an idealized model. Ignoring effects like diffusion of molecules etc, which have no real impact on the effect you want to accomplish.

An open system is one where mass is exchanged with the environment, like motors, pipelines, etc.

== Exercise	2
Can	you	think	of	a	general	way	to	classify	the	laws	that	are	possible	for	a	six-state system?

Answer:

You can classify a six-state system using the number of independent cycles.

= Interlude 1: Spaces, Trigonometry, and Vectors

== Exercise	1:	
Using	a	graphing	calculator	or	a	program	like	Mathematica,	plot	each	of	the following	functions.	See	the	next	section	if	you	are	unfamiliar	with	the	trigonometric	functions.

$f(t) = t^4 + 3t^3 -12 t^2 + t - 6$

$g(x) = sin(x) - cos(x)$

$theta(alpha) = e^alpha + alpha ln(alpha)$

$x(t) = sin^2(x) - cos^2(x)$

== Exercise	2
Work	out	the	rule	for	vector	subtraction.

== Exercise	3

Show	that	the	magnitude	of	a	vector	satisfies $|arrow(A)|^2 = arrow(A) . arrow(A)$

== Exercise	4	
Let	($A_x	=	2,	A_y	=	-3,	A_z	=	1$)	and	($B_x	=	-4,	B_y	=	-3,	B_z	=	2$).	
Compute	the	magnitude of $arrow(A)$ and $arrow(b)$,	their	dot	product, and	the	angle	between	them.

== Exercise	5
	Determine	which	pair	of	vectors	are	orthogonal.	$(1,	1,	1)	(2,	-1,	3)	(3,	1,	0)	(-3,	0,	2)$

== Exercise	6
Can	you	explain	why	the	dot	product	of two vectors	that	are	orthogonal	is	0?

Answer:

Because $cos(pi/2)$ is $0$. 
