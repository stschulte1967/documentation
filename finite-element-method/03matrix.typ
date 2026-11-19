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
  subtitle: "Lesson 3",
  author: "Stephan Schulte",
  date: "2026-08-03",
)

= Lesson 3

== The matrix-vector weak form

$integral_(Omega^e) w^h_",x" sigma^h A d x$ for $e=1$: 

$integral_(Omega^e) (N^2_(,xi) xi_(,x) c_e^2) E A (sum_B N^B_(,xi) xi_(,x) d^B_e) d x$

$ = integral_(Omega^xi)(N^2_(,xi) 2/h^e c_e^2) E A (sum_B N^B_(,xi) d^B_e) d xi$

$integral_(Omega^e) w^h f A d x$ for $e=1$: 

$integral_(Omega^xi) (N^2 c^2_e) f h^e/2 A d xi$

Consider for a general element $Omega^e$:

$integral_(Omega^xi)(sum_A N^A_(,xi) c_e^2) E A (sum_B N^B_(,xi) d^B_e) 2/h^c d xi$, dofs are independent of $xi$

$= sum_(A,B) c_e^A (integral_(Omega^xi)( N^A_(,xi) (2 E A)/h_c N^B_(,xi) d xi) d^B_e$

$integral_(Omega^xi) (sum_A N^A c^A_e) f h^e/2 A d xi$, dofs are independent of $xi$

$= sum_A c^A_e integral_(Omega^xi) N^A f h^e/2 A d xi$

For $e=1$ there is no sum over $A$. Instead we use $A=2$.

Use matrix-vector product to eliminate the $sum_A$ and $sum_B$.

$sum_(A,B=1)^N c_e^A (integral_(Omega^xi)( N^A_(,xi) (2 E A)/h_c N^B_(,xi) d xi) d^B_e = <c^1_e,c^2_e> (2 E A)/h_c (integral_(Omega^xi) mat(N^1_(,xi)N^1_(,xi),N^1_(,xi)N^2_(,xi);N^2_(,xi)N^1_(,xi),N^2_(,xi)N^2_(,xi)) d xi) mat(d_e^1; d_e^2) $

Note: This holds if $E$ and $A$ are uniform over $Omega^e$.

With $N^1(x) = (1-xi)/2, N^2(x) = (1 + xi)/2$ follows $N^1_(,xi) = -1/2, N^2_(,xi) = 1/2$, the previous term reduces to

$= <c^1_e,c^2_e> (2 E A)/h_c mat(1/4,-1/4;-1/4,1/4) integral_(Omega^xi) d xi mat(d_e^1; d_e^2)$, with $integral_(Omega^xi) d xi=2$ 

$= <c^1_e,c^2_e> (E A)/h_c mat(1,-1;-1,1) mat(d_e^1; d_e^2)$

Similar: $sum_A c^A_e integral_(Omega^xi) N^A f h^e/2 A d xi$, with $f$ and $A$ uniform over $Omega_e$

$= <c^1_e,c^2_e> f A h^e/2 integral_(-1)^1 mat(N^1;N^2) d xi$ 

$= <c^1_e,c^2_e> f A h^e/2 mat(1;1)$

Note that for $e=1$ the terms further simplify.

Recall finite dimensional weak form:

$sum_"e=1"^n_"el" integral_(Omega^e) w^h_",x" sigma^h A d x = sum_"e=1"^n_"el" integral_(Omega^e) w^h f A d x + w^h (L) t A$

$=>  c^2_1 (E A)/h^e < -1, 1> mat(d_1^1;d^2_1) + sum_(e=2)^N <c_e^1, c_e^2> (E A)/h^e mat(1,-1;-1,1) mat(d^1_e; d^2_e) = c^2_1 (f A h^e)/2 + sum_(e=2)^N <c^1_e, c^2_e> mat((f A h^e)/2;(f A h^e)/2) + c^2_N t A$

Remark: $u^h_e = sum_A N^A (x(xi)) d_e^A; w^h_e = sum_B N^A (x(xi)) c_e^A $

The Kronecker delta property of the basis functions ensures that the nodal dofs of the solution field are indeed its values at the node.

Note that the following map holds between local and global dofs.

$d^A_e = d_(e+A-1)$, local dof A in element $e$ = global elements of $A$.

Same is true for $c$

Matrix vector weak form in terms of global matrices and vectors

$c^2_1 (E A)/h^1 < -1, 1> mat(d_1^1;d^2_1) + sum_(e=2)^N < c_e^1, c_e^2 > (E A)/h^e mat(1,-1;-1,1) mat(d^1_e; d^2_e) = c^2_1 (f A h^1)/2 + sum_(e=2)^N <c^1_e, c^2_e> mat((f A h^e)/2;(f A h^e)/2) + c^2_N t A$

Lets call $(E A)/h^e mat(1,-1;-1,1) = underline(K)_e = $ element stiffness matrix and $mat((f A h^e)/2;(f A h^e)/2) = underline(F)_e = $ element force vector.

Assembly:
$mat(c_2, c_3, .... c_(n_"el"), c_(n_"el"+1)) E A mat(-1/h_1, 1/h_1 + 1/h^2, -1/h^2; 0, -1/h^2, 1/h^2+1/h^3, -1/h_3; 0,0,-1/h^3   ) mat(d_1;d_2;d_3;dots.v;d_(n_"el");d_(n_("el"+1)))$

$mat(c_2, c_3, .... c_(n_"el"), c_(n_"el"+1)) (f A)/2 mat(h^1 + h^2, ; h^2+ h^3;h^3; dots.v; h^(n_("el"-1)) + h^(n_"el"); h^(n_"el"))$

$mat(c_2, c_3, .... c_(n_"el"), c_(n_"el"+1)) E A mat(-1/h^1, 1/h^1 + 1/h^2, -1/h^2, dots.h;
                                                            , -1/h^2, 1/h^2 + 1/h^3, -1/h^3, dots.h;
                                                            ,       , -1/h^3, 1/h^3 + 1/h^4, -1/h^4, dots.h;
                                                            ,       ,       , dots.down;
                                                      ) mat(d_1; d_2; dots.v; d_(n_"el"); d_(n_("el"+ 1))) = mat(c_2, c_3, .... c_(n_"el"), c_(n_"el"+1)) (f A)/2 mat(h^1 + h*2; h_2 + h^3; dots.v) + mat(c_2, c_3, .... c_(n_"el"), c_(n_"el"+1)) mat(0;0;dots.v;t A)$

== The finite element equation in matrix-vector form

$underline(C)^T  underline(K) underline(d) = underline(C)^T underline(F)$

$ => underline(K) underline(d) = underline(F)$, this is the final form of the Finite Element equation.

Remarks:
+ $underline(K)$ is synnetric, positive definite, with banded tridiagonal structure. It is the stiffness matrix.
+ $underline(F) = (f A h^e)/2 mat(2;dots.v;1) + mat(0;dots.v;t A) (E A)/h^e + mat(u_o;0;dots.v;0)$

$underline(d) = underline(K)^-1 underline(F) $

$u^h_e = sum_A N^A d^A_e$

