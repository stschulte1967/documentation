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

= Lesson 01

== The units on energy and power

The unit of energy is the Joule (J). The unit of power is the Watt (W).

$ J =  "kg" * m^2 /s^2 = N m $
$ W =  J / s = "kg" * m ^2 / s ^3 $

== Open and closed systems

Thermodynamics is the study of energy and the interaction of energy with matter.

Transforming energy, e.g. from potential to kinetic energy

Obtaining energy, e.g. convert potential energy + kinetic energy to mechanical work to electrical work.

Generate and apply energy, e.g. charging a battery

Any time there is a temp. difference between 2 systems there is a heat transfer.

There are three types of heat transfer:
- convection
- conduction
- radiation

Fluid mechanics is the motion of fluids (which includes gases and liquids) and the transformation of energy between mechanical and thermal forms.

=== Terminology and definitions

System: the object(s) under consideration.

A closed system is also called a control mass. Mass cannot cross the system boundary. There is a fixed quantity of matter in the system.

An open system is also called a control volume. Mass can cross the system boundary. The amount of matter within the control volume can change.

== Thermodynamic Properties

Properties - describe the characteristics of the system

Thermodynamic properties - describe the thermal properties of the system

State - the condition of the system as described by the system thermodynamic properties

Steady state means the system properties are not changing as a function of time

Extensive properties - depend on the extent (or the amount) of material in the system; these are properties that are additive, like mass

Intensive properties - do NOT depend oh the extent (or amount) of meterial in the system; these are properties which are NOT additive, like temperature

Equilibrium - when the system is unchanging in thers of thermal, mechanical, phase and chemical characteristics.

Process - a path between two states

=== Introduction of some properties

Density = mass pero unit volume $rho = 1 / v$

Specific volume = volume per unit mass $ v = 1 / rho$

Pressure (abolute and relative)

Temperature, $T[K] = T[C] + 273.15, T[F] = 1.8[C] + 32$

== Conservation of Energy for Closed Systems

Energy is closed systems:

$m = "const"$

$"KE" = 1/2 m arrow(v)^2, arrow(v)$ = velocity $[m/s]$

$"PE" = m g z$, z = height $[m]$, g = acceleration due to gravity

Work - energy transfer across the system boundary.

Work transfer is not a system property.

Work transfer depends on the process path.

There are many types or forms of work transfer.

$W$ = work transfer $["kJ"]$

$W = integral arrow(F)*d arrow(s)$

expanion and compression work, shaft work, ...

Piston example:

$delta W = P A d x$

$V$ = Volume $[m^3]$
$v$ = specific volume $[m^3/"kg"]$
$m$ = mass $["kg"]$
$A$ = area of piston surface

$W = integral_1^2 P d v$

need to know how P varies as a function of V.

$d V$ positive = expanion process $delta W > 0$

$d V$ negative = compression process $delta W < 0$

= Lession 02

== Work Transfer Mechanisms

Work - energy transfer across the system boundary

Work transfer is not a system property

Work transfer depends on the process path

There are many types of fprms of work transfer.
- Expansion and compression work - the work to raise or lower a piston.
- Shaft work, extension work, exectrical work, film work, electrical

Shaft work: $W=integral F_t d s$, $F_t$ = tangetial force, $v = R omega$ = velocity at point of application of $F_t$, "omega" = tangential velocity, R = radius

$omega dot = tau * omega$

Work out of the system is positive, $W > 0$, and work is done by the system.

Work into a system is negative, $W < 0$, and work is done on the system.

== Work required to compress air 

Let's do an exmaple pf work transfer analysis with numbers.
We have air in a piston that is ungoes 2 precesses in series. In the first step, the air is described a polytropic, where $p v^n$ = constant. The initial state of the air is 100 $k "Pa"$, $0.04 m^3/"kg"$. The final specific volume at he end of the first process is $0.02 m^3/"kg". n = 1.3$. In the second step, the air is subject to a constant pressure precess where the final specific vilume is equal to the initial state.
- sketch the preocesses on a P-v diagramm and label the states, 1, 2 and 3.
- determine the specific work (work per unit mass fo air) for each step and the overall process.

$p_2 = p_1*v_1/v_2$

$W/m = w = integral_(s_1)^(s_2) P d v + integral_(s_2)^(s_3) P d v = integral_(s_1)^(s_2) P_1 v_1^1.3/0.3/v^n +  P_2*(v_3-v_2) = -P_1 v_1^1.3/0.3/0.3[1/v^0.3]^(v_2)_(v_1) + P_2*(v_3-v_2) = 
- (P_1 v_1^1.3/0.3 [1/ v_2^0.3 - 1/v_1^03] ) +  P_2*(v_3-v_2) = -3.08 "kJ"/"kg" + 4.92 = 1.84$

== The first law of thermodynamics for a closed system

The First Law of Thermodynamics - relates changes in energy states to work and heat transfer.

The Fist Law of Thermodynamics defines the conservation of energy.

The conservation of mass (COM) states that mass can never by destroyed.

The conservation of energy (COE) states that energy can never be destoyed.

$E_2 - E_1 = Q - W$

=== the details of COE ...

an adiabatic process is one where $Q = 0$.

E is the total energy of the System

$E = "KE" + "PE" + "U"$

U = the internal energy of the system

u = the internal energy per mass

=== Q

Q is the energy transfer due to heat transfer

Q is NOT a property.

Q dependes on the process path.

$Q > 0$ is heat transfer into the system.

$Q < 0$ is heat transfer out of the system.

The sign convention for heat transfer is (typically) opposite that of work.

== Heat transfer

There are three types of heat transfer:
- conduction
- convection
- radiation

Heat transfer is a discipline of itself.

$Q_"cont" prop Delta T = T_S - T_"amb"$ 

$Q_"conv" prop Delta T = T_S - T_"amb"$

$Q_"rad" prop (T_S^4 - T_"amb"^4$

COE can be memorizzed using the simple expression: In - Out = Change.

net heat transfer in  - net work transfer out = change in system energy (for some time interval)

Can also write COE on a rate basis:

$E_2 - E_1 = attach(Q, bl: 1, br: 2) - attach(W, bl: 1, br: 2)$

$(d E) / (d t) = accent(Q, dot) - accent(W, dot)$

== Phase Diagrams

Solid, liquid and gas are the 3 phases of matter. The phase of a substance can be determined or identified by the state of the substance.

Saturation state - state which begins or ends a phase change

Critical point - defined by the critical temperature and is the maximum temperature where liquid and vapor phases can co-exist at equilibrium.

In the vapor dome T and P are dependent.

== 2D Phase Diagrams

Quality is only defined within the vapor dome.

$ "quality" = m_"vapor" / (m_"liq" + m_"vapor")$

$x = 1$ = sat. vapor

$x = 0$ = sat. liquid

