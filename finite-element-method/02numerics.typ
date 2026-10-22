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
  subtitle: "Lesson 2",
  author: "Stephan Schulte",
  date: "2026-08-03",
)

= Week 2

== The Galerkin week form

The strong and week forms of 1-D linear elliptic PDEs:

Given $u_0$, $t$, $f$ and the constitutive relation $sigma = E u_",x"$

Strong form

Find $u$ such that $dv(sigma, x) + f = 0 in (0,L)$ with $u(0) = u_0$ and $sigma(L) = t$.

Weak form

Find $u in scr(S) = {u | u(0) = u_0}$ such that $forall w in scr(V) = {w | w(0) = 0}$ 

$integral_0^L w_",x" sigma A d x = integral_0^L w f A d x + w(L) t A$

Recall that string form is completely equivalent to the week form.

The finite element method is based on an approximate version of the week form.

$u in scr(S)$ and $w in scr(V)$, $scr(S)$ and $scr(V)$ are infinite-dimensional function spaces.

Construct approximations in a finite-dimensional function spaces. Means we restrict the solution space and weighting function space.

Find $u^h(x) in scr(S)^h subset scr(S), scr(S)^h = { u^h in H^1(0, L) | u^h(0) = u_0}$ such that $forall w^h in scr(V)^h subset scr(V), scr(S)^h = { w^h in H^1(0, L) | w^h(0) = 0}$

$integral_0^L w^h_",x" sigma^h A d x = integral_0^L w^h f A d x + w^h (L) t A$

This is called the finite dimensial week form or the Galerkin week form.

The finite dimensional weak form is not equivalent to the strong form - in general.

== Basic Hilbert Spaces

In the Galerkin week form we have use a function space $H^1$.

Consider a function $v:(0,L) arrow.r RR $

Define the function $v$ to be an $L^2$ - function, if $integral_0^L v^2 d x < infinity$ than $v in L^2 (0,L)$

$v$ is $L^2$ if it is square integrable.

e.g. 
$v(x) = "const"$

$v(x) = sum_"k=0"^N a_k x^k$

$v(x) = H(x - x_0)$, Heavisite function

but

$v(x) = sigma (x - x_0)$, is not element of $L^2(0,L)$, because the integral is not defined.

Can in general define $L^p$ functions $p in RR$.

How about control over the derivatives of $v$? Regularity.

$v(x) in H'(0,L)$ if 

$ integral_0^L (v^2 + L^2 v_",x"^2) d x < infinity$

Remark: $L^2 $ has been introduced for dimensional purposes. It is common to use $m(0,L)^"1/d" = L$, m stands for measure., $d$: spacial dimension.

$v in H^1(0,L)$ if $integral_0^L (v^2 + (m(0,L))^2 v_",x"^2) d x < infinity$

$u^h$ and $u_",x"^h$ are square integrable.

e.g. H^1(0,L) functions

$v(x) = "const"$

$v(x) = sum_"k=0"^N a_k x^k$

combinations of polinomes

but non continuous functions are not in $H^1$.

== The finite element method for the 1-D linear elliptic PDE

Find $u^h(x) in scr(S)^h subset scr(S), scr(S)^h = { u^h in H^1(0, L) | u^h(0) = u_0}$ such that $forall w^h in scr(V)^h subset scr(V), scr(S)^h = { w^h in H^1(0, L) | w^h(0) = 0}$

$integral_0^L w^h_",x" sigma^h A d x = integral_0^L w^h f A d x + w^h (L) t A$

$u^L$ is called trail function, too.

$sigma^h = E u^h_",x"$

$f(x)$ is not finite dimensional.

$t$ is a point value.

$integral_0^L w^h_",x" sigma^h A d x = integral_0^L w^h f A d x + w^h (L) t A$

How do we obtain $u^h, w^h$? or $scr(S), scr(V)$

Partition $Omega = (0,L)$ into finite elements which are disjoint subdomains of $(0,L)$.

Partition $Omega$ into subdomains $Omega^e$

$overline(Omega) = union_"e=1"^n_"el" Omega^e$, $Omega^e = (x^e, x^"e+1")$

$x^e$: nodes of the Partition

$Omega^e$: element

$integral_Omega w^h_",x" sigma^h A d x = integral_Omega w^h f A d x + w^h (L) t A$

$sum_"e=1"^n_"el" integral_(Omega^e) w^h_",x" sigma^h A d x = sum_"e=1"^n_"el" integral_(Omega^e) w^h f A d x + w^h (L) t A$

Represent $scr(S)^h, scr(V)^h$ over each $Omega^e$.

$Omega$ contains the nodal points ${x^2, x^3, ..., x^(N-1)}$.

$Omega  != union_(e=1)^N Omega^e$

$overline(Omega) = overline(union_(e=1)^N Omega^e)$, contains all node points.

== Basic functions

$sum_"e=1"^n_"el" integral_(Omega^e) w^h_",x" sigma^h A d x = sum_"e=1"^n_"el" integral_(Omega^e) w^h f A d x + w^h (L) t A$

Representation of $u^h(x)$ and $w^h(x)$. Need to represent $u^h(x)$ and $w^h(x)$ over $Omega^e, e = 1,,,n_"el"$

Define local basis functions on $Omega^e$ - funite number of basic functions over $Omega^e$ and therefore over $Omega$.

Two basis functions over $Omega^e$ - polynomials, complete basis $=>$ linear polynomials on $Omega^e$.

$N^1(x), N^2(x)$ $u_e^h(x) = sum_(A=1)^n_"el" N^A(x) d^A_e = N^1(x) d_e^1 + N^2(x) d_e^2$

$N^A(x)$: basis function, $A=1,2$, or nodal basis function

$d^A_e$: degree of freedom $A=1,2$ on element $e$ or nodal degree of freedom

Similarly for $w_e^h(x)$.

$w_e^h(x) sum_(A=1)^n_"el" N^A(x) c^A_e = N^1(x) c_e^1 + N^2(x) c_e^2$

$c_e^A$: degree of freedom of weighting function.

Bubnov-Galerkon method uses the same basis function for $u_e^h$ and $w_e^h$

Map the interval $(x^e, x^(e+1)$ to a bi unit domain $xi = (-1, 1)$.

$N^1(x) = N^1(x(xi))$

$N^2(x) = N^2(x(xi))$

$N^1(xi) = (1-xi)/ 2, N^2(xi) = (1 + xi)/2$

$xi^1$, where $xi = -1$, $xi^2$, where $xi = 1$

$N^A(xi^B) = delta_"AB"$

== The bi-unit domain

- Also $N^1(xi) + N^2(xi) = (1-xi)/2 + (1 + xi)/2 = 1$
- Generalizable to heigher-order polynomials - Lagrange polynomials

- $x^(e+1)$: global node number $e+1$, local nude number 2 for $Omega^e$, local node number 1 for $Omega^(e+1)$. Basis function for global node $e+1$ is non-zero only in elements $Omega^e$ and $Omega^(e+1)$.

- Compact support of global basis functions

Remark: local definition of basis functions leads to global basis functions associated with each node $x^e$, with compact support in $Omega^(e-1)$ and $Omega^e$.

$sum_"e=1"^n_"el" integral_(Omega^e) w^h_",x" sigma^h A d x = sum_"e=1"^n_"el" integral_(Omega^e) w^h f A d x + w^h (L) t A$

Note: In $Omega^e$ for $e=1$ (Starting point). At this point is $u^h = u_0$, $w^h = 0$. This means that at this point we only need $N^2(x)$. However for all other elements we have $w^h_e = sum_(A=1)^n_"el" N^A(x) c^A_e$

Need to compute $W^L_",x", u^L_",x"$

$u^h_"e,x"(xi) = sum_(A=1)^n_"el" N^A_",x"(xi) d^A_e, w^h_"e,x"(xi) = sum_(A=1)^n_"el" N^A_",x"(x) c^A_e$

$u^h_"e,x"(xi) = sum_(A=1)^n_"el" N^A_(,xi) xi_(,x) d^A_e, w^h_"e,x"(xi) = sum_(A=1)^n_"el" N^A_(,xi) xi_(,x) c^A_e$

Mapping to $Omega^e$ from $Omega^xi$.

$x_e (xi) = sum_(A=1)^N_n_e (N^A (xi)) x_e^A$, Isoparametric formulation 

$x_(,xi)|_e = sum_(A=1)^N_n_e N^A_(,xi) x^A_e = N^1_(,xi) x^1_e + N^2_(,xi) x_e^2 = (x^2_e - x^1_e)/2 = (x^(e+1) - x^e)/2 = h^e/2$

$h^e$ can be different for each $Omega^e$ - non-uniform discretization

The isoparametric map is invertable, from this follows that $xi_(,x) = 1/x_(,xi)$

From this follows:

$u^h_(,x) = sum_(A=1)^N_n_e N^A_(,xi) 2/h^e d^A_e, w^h_(,x) = sum_(A=1)^N_n_e N^A_(,xi) 2/h^e c^A_e$

Consider the integrals:

$integral_(Omega^e) w^h_",x" sigma^h A d x = integral_(Omega^e) w^h_",x" E A u^h_(,x) d x = integral_(Omega^e) (sum_A N^A_(,xi) 2/h^e c^A_e )E A (sum_B N^B_(,xi) 2/h^e d^B_e ) d x$

$ integral_(Omega^e) w^h f(x(xi)) A d x = integral_(Omega^e) (sum_A N^A c^A_e) f(x(xi))  A d x$

$integral_(Omega^e) w^h_",x" E A u^h_(,x) d x =  integral_(Omega^xi) (sum_A N^A_(,xi) 2/h^e c^A_e )E A (sum_B N^B_(,xi)  d^B_e ) d xi$

$integral_(Omega^e) (sum_A N^A c^A_e) f(x(xi))  A d x = integral_(Omega^xi) (sum_A N^A c^A_e) f(xi) h^e/2 A d xi$















