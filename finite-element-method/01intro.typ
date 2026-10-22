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
  subtitle: "Lesson 1",
  author: "Stephan Schulte",
  date: "2026-08-03",
)

= Week 01

== Linear elliptic partial differential equations

=== Linear elliptic differential equation in one dimension
Examples: 
- 1-D heat conduction at steady state
- 1-D mass diffucaion at steady state
- 1-D elasticity at steady state

$u_g$: specified displacement at $x = L$ 

or 

$t$: specifiedtraction at $x = L$

$f$ distributed body force

Find $u(x) (0,1) arrow.r RR$ (real number) given $u(0) = u_0$, $u_g$ or $t$, $f(x)$, the constitutive relation $sigma = E u_x$ such that 

$dv(sigma, x) + f = 0$ in $(0,L)$ 

with boundary condition $u(0) = u_0$ and either $u(L) = u_g$ or $sigma(L) = t$

Boundary conditions:

- $u(0) = u_0$ and $u(L) = u_g$: Dirichlet boundary condition, for elasticity: displacement boundary condition
- $u(0) = u_0$ and $sigma(L) = t$: Neumann boundary condition, for elasticity: traction boundary condition

Boundary conditions 

Either 
+ Dirichlet bcs at $x = 0$ and $x = L$
+ Dirichlet bc at $x = 0$ and Neumann bc at $x = L$

We do not consider Neumann bc at $x = 0$ and $x = L$

=== Neuman bc at $x = 0$ and $x = L$

For a moment consider bcs at $x = 0$ and $x = L$

$ sigma(0) = e u_",x"|_"x=0" = t_0 $
$ sigma(L) = e u_",x"|_"x=L" = t_L $

consider u(x) satisfying these Neumann bc and the differential equation

$dv(sigma, x) + f = 0$ in $(0,L)$

$dv(E u_",x", x) + f = 0$ in $(0,L)$ 

But $u(x) + overline(u)$ (const w.r.t x) is also a solution.

The solution u(x) is non-unique up to a rigit body motion $overline(u)$.

Neumann bcs alone can be specified for the time-depending elasticity problem.

=== Body force

Recall the fody force $f(x)$:

$dv(sigma, x) + f(x) = 0$ in $(0,L)$

f: the forcing function in general pdes. e.g. $f(x) = rho(x) g$

=== Open interval

The differential equation $dv(sigma, x) + f(x) = 0$ in $(0,L)$ is only defined at the open interval ($x = 0$ and $x = L$ excluded)!

This is because we have boundary conditions on $u(x)$ or on $u_",x"$ at boundary points.

=== Constitutive relation

The constitutive relation 

$sigma = E u_",x"$

In context of elasiticity:

$sigma$: stress

$u_",x"$: strain, sometimes denoted by $epsilon$.

$E$: Youngs modulus

The 1-D (scalar) linear elliptic problem also models heat or diffusive mass transport.

Find $u(x) :  (0,1) arrow.r RR$ given $u_0$ and $u_g$ or $overline(j)$, $f(x)$ and the constitutive relation $j = -kappa u_",x"$ such that 

$-dv(j,x) = f(x)$ in $(0,L)$

With boundary conditions $u(0) = u_0$ and $u(L) = u_g$  or $j(L) = -overline(j)$

== Strong form of a linear partial differential equation of elliptic type in 1-D

Find $u(x)$ given $u_0$, $u_g$ or $t$, $f(x)$ and a constitutive relation $sigma = E u_",x"$ such that

$dv(sigma, x) + f(x) = 0$ in $(0,L)$

with boundary conditions 

$u(0) = u_0$

and either

$u(L) = u_g$ or $sigma(L) = t$

this implies

$dv(, x)(E dv(u, x)) + f(x) = 0$ in $(0,L)$

We require "strong conditions" of "smopthness" on $u(x)$ because the strong form has two spatial derivatives.

We require the pde to hold pointwise in $(0,L)$.

An analytic solution 

$integral_0^y dv(sigma,x) d x = - integral_0^y f d x$ where $y in (0,L)$

$sigma(y) - sigma(0) = - integral_0^y f d x$

$dv(E u_",x",, eval:y) - E u_",x"(0) = - integral_0^y f d x$

This does not really help in reality, so lets try a different approach

== Week form of pde in 1-D

Find $u(x) in scr(S) = {u | u(0) = u_0}$, consider Direichlet b.c. at $x = 0$, only.

given $u_0, t, f(x)$ and constitutive relation $sigma = E u_",x"$ such that $forall w in scr(V) = { w | w(0) = 0}$

$ integral_0^L w_",x" sigma A d x = integral_0^L w f A d x + w(L) t A$, where $A d x$ is a volume element.

The week form is the basis of the finite element method, and of other variationally based numerical methods.

The strong form and the week form are equivalent (Proof in class).







