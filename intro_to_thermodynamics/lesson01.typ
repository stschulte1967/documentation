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

= Lesson 03

== Thermodynamic properties and the saturation area

P-v-T surfaces or diagrams are used in graphical, tabulated and the form of relations.

The most common working fluids are water(steam), air, nitrogen, refrigerants, etc.

Saturation tables only include the saturated liquid and saturated gas data. You need to determine the actual state conditions for any quality where $0<x<1$.

specific volume: $v_"tot" = (1- x) v_"f" + x * v_g$

== Internal Energy, Enthalpy and the specific heat

$U$ = total internal energy

$u = U/m_"tot"$ = specific internal energy 

$u = (1-x) u_f + x u_g$

Enthalpy: $h equiv u + P v, H equiv U + P V$, state relation

$h = (1-x) h_f + x h_g$, in saturation area

All theromodynamics properties data are relative to a reference state. Since we are taking the difference between state conditions, the reference state cancels.

The specific heats, or heat cpacities, are intensive properties of simple compressible substances ($c_p, c_v$)

$c_v equiv ((d u) / (d T))_v, c_p equiv ((d u) / (d T))_p$

$k equiv c_p/c_v$, ratio of specific heats

If you have T und P, can you fully define the state of s system if you are in the superheat reagon? YES!

If you have P and u, can you fully define the state of a system if you are in the saturation region? YES!

== The incompressible substance

=== Incompressible substance model - for liquids and solids

$v = "constant"$ and $u = f(T)$ under this conditions $c_p = c_v = c$

If c is independent of T we have $u_2 - u_1 = c(T_2 - T_1) $ and $h_2 - h_1 = c(T_2 - T_1) + v (p_2 - p_1) $

=== Ideal gas model

$P v = R T$ and $u = f(t)$, R = specific gas constant, 

=== More outcomes of the Ideal Gas Model

$u_2 - u_1 = integral_(T_1)^(T_2) c_v (T) d T$

$h_2 - h_1 = integral_(T_1)^(T_2) c_p (T) d T$

$ h = u + R T$, for ideal gases! it implies $c_p(T) = c_v(T) + R$

=== Politropic processes revisited

$P V^n = "const"$

$n = 0, P = "const" ->$ isobar.

$n -> infinity, V = "const" ->$ isometric

=== Open Systems

$dot(m)_"in"$ = instantanious mass flow rate at the inlet

$dot(m)_"out"$ = instantanious mass flow rate at the exit

== Conservation of mass for open systems

COM for control volume: $(d m_"cv")/(d t) = sum_"i=1"^"in" dot(m)_"in" + sum_"i=1"^"out" dot(m)_"out" $

We will assume 1D flow for all our work
- All flow is normal to the boudnaries at the inlet and co-exist
- All intensive propertoes are uniform across the inlet and exit areas.

The conservation of mass is therefore:

mass crossing $d A$ for time period $d t$ = $V rho = rho V_n d t d A$
                                                                       
deviding by $d t$

$dot(m) = integral_A rho V_n d A$

== Exmaple Steam Turbine

Consider steam at that enters a turbine at 69 bar, 548 C with a volocity of 64 $m/s$. The turbins is operating at steady state conditions and the steam leaves the turbine as a dry saturated vapor at 10 bar. The inlet diameter of the turbins is 0.45m and the outlet diameter is 3.6 m.

In: $dot(m), v_1, P_1, T_1, D_1 => A_1$

Out: $dot(m), P_2, D_2 => A_2$

Get $rho$ at in and out through steam table calculator

In values: $v = 0.0518$

Out value: $v = 0.194$

$dot(m) = 196.5"kg"/s$

$v_2 = 3.75 m/s$

= Lesson 04

== Flow work and the conservation of Energy

COE: $ (d E_"cv")/(d t) = dot(Q) - dot(W) + sum dot(m_"in")(u_"in" + (v_"in"^2)/2 + g z_"in") - sum dot(m_"out")(u_"out" + (v_"out"^2)/2 + g z_"out")$

Let's consider the flow work, or the work done by the fluid because the fluid is at a non-zero pressure

$dot(W) = dot(W)_"cv" + dot(W)_"flow" = dot(W)_"cv" + P_e A_e arrow(v)_e - P_i A_i arrow(v)_i = dot(W)_"cv" + dot(m)_e P_e v_e - dot(m)_i P_i v_i$

$(d E_"cv")/(d t) = dot(Q) - dot(W) - sum(dot(m)_e P_e v_e) + sum(dot(m)_i P_i v_i) + sum(dot(m)_i (u_i + arrow(v)_i^2/2 + g z_i)) - sum(dot(m)_e (u_e + arrow(v)_e^2/2 + g z_e)) $

$(d E_"cv")/(d t) = dot(Q) - dot(W) + sum(dot(m)_i (h_i + arrow(v)_i^2/2 + g z_i)) - sum(dot(m)_e (h_e + arrow(v)_e^2/2 + g z_e)) $

== Steady State, Steady Flow Devices

Let's consider the COE and some simple (steady flow and steady state) flow devices:

$(d E_"cv")/(d t) = dot(Q) - dot(W) + sum(dot(m)_i (h_i + arrow(v)_i^2/2 + g z_i)) - sum(dot(m)_e (h_e + arrow(v)_e^2/2 + g z_e)) $

Nozzles and diffusers:

$dot(W) = 0, dot(Q) = 0$

Turbines:

$dot(m) = 0, dot(Q) = 0, dot(W)_t = dot(m)(h_i - h_e)$

Compressors and pumb:

$dot(Q) = 0, dot(W)_"pump" = dot(m)(h_i - h_e) < 0$

Heat exchangers:

$dot(W) = 0, dot(Q) = 0, dot(m)_1 + dot(m)_3 = dot(m)_2 + dot(m)_4$

COE = $dot(m)_1 h_1 + dot(m)_3 h_3 = dot(m)_2 h_2 + dot(m)_4 h_4$

Throttle/Valve

$h_i = h_e$

== Compressing water

Water is comressed from an initial saturated vapor state at 200 kPA to a pressure of 1MPa and a temperature of 250 C. The water is cooled dureing the process using convection with a specific heat transfer of 93 kJ/kg. Dies this process produce work or require work? And what is the specific work of the process?

$delta U = Q-W/m => u_2 - u_1 = q - w$

$w = W/m = q + u_1 - u_2 = -272.7 "kJ"/"kg"$

== Steam turbine part 2

Consider steam at that enters a turbine at 69 bar, 548 C with a volocity of 64 $m/s$. The turbins is operating at steady state conditions and the steam leaves the turbine as a dry saturated vapor at 10 bar. The inlet diameter of the turbins is 0.45m and the outlet diameter is 3.6 m. Earlier we found the mass flow tate of steam through the turbine ($196.5 "kg"/s$), and the velocity at the exit of the turbine ($arrow(v) = 3.75 m/s$) using COM and $dot(m) = rho arrow(v) A$. What is the power generated by the turbine at these conditions?

$dot(W) = dot(m)(h + (arrow(v)/2))_i - (h + (arrow(v)/2))_o)$

$dot(W) = 143 M W$

How much of the power generated by the turbine is attributable to kinetic energy and how much is attributable to flow work and internal enegy?

$dot(W)_"KE" / dot(W)_"tot" = 0.28%$

The kinetic energy can be ignored!

== Cooling a Microcomputer

Let's consider a fan which has to cool a microprocessor in a desktop computer. If ambient air is used to cool the microchip and the heat dissipated by the CPU is 10W, what is the temperature of the aur out of the computer if the aur speed is $0.9m/s$?

= Lesson 05

== Cooling a Microcomputer (cont)

$dot(m) = rho A arrow(v)$

$dot(Q) = dot(m) (h_2 - h_1) = dot(m) c_p (T_2 - T_1)$

$rho = P/(R_"air" T)$

$rho_1 = 1.185 "kg"/m^3, c_p = 1.005 "kJ" / ("kg" K)$

$T_2 = dot(Q)/(dot(m) c_p) + T_1 = 345K$

== Transient analysis

We want to fill a car tire that is low on air. Let's assume we are using a really good compressor that has a large reservoir tank with air at 20C and 350 psi. Our tire,
10 L in volume, initially jas air at 15 psi and 20 C. We fill the tire antil we reach the recommended 35 psi. If we assume the tire fills rapidly and the process is essentially adiabatic, how much air do we need to add to fill the tire? And can we determine the temperature of the air in the tire after we have finished filling the tire?

$ integral_1^2 d dot(m)_"cv" d t = integral_1^2 d dot(m)_"in" d t$, we assume that the mass flow rate is constant during the process!

$ integral_1^2 d dot(m)_"cv" d t = dot(m) delta t => m_"in" = m_2 - m_1 $

$d U_"cv"/ (d t) = dot(m)_"in" h_"in" => U_2 - U_1 = m_"in" h_"in"$

== Cycle analysis

By definition a cycle ends where it begins! $E_(i,"cycle") = E_(o, "cycle")$

COE: Assume closed power cycle

$ 0 = Delta E_"cycle" = Q_"cycle" - W_"cycle" => Q_"cycle" = W_"cycle"$

=== Power Cycle Efficiency

In general performance metric = $"what you want"/"what did you pay for it to get it"$

$eta_p = $ efficiency of power plant

$eta_p = dot(W)_"cycle"/dot(Q)_"in" = (dot(Q)_"in" - dot(Q)_"out") / dot(Q)_"in" = 1 -  dot(Q)_"out" / dot(Q)_"in" $

=== Refrigeration and Heat Pump Cycles

$ W_"cycle" = Q_"cycle" = Q_"out" - Q_"in"$

refigerator: coefficient of performance: $beta = Q_"in" / W_"cycle"$

heat pumps: coefficient of performance: $ gamma = Q_"out" / W_"cycle"$, $gamma$ can never be $< 1$

Always want $eta, beta, gamma$ be as big as possible.

= Lesson 06

== The second law of thermodynamics

The 1st law of thermodynamics tells us if a process is allowed or does the process violate the conservation of energy?

The 2nd law of thermodynamics tells us the allowed directrion of a process.

The 2nd law of thermodynamics also allows us to quantify limiting behaviour, i.e. maximum and minimum values for processes.

The 2nd law of thermodynamics also introduces a lot of other powerful and interesting concepts like the absolute temperature scale and the thermodynamics property $S ["kJ"/K]$ and specific entropy $s ["kJ"/(K "kg")]$.

=== Cycles

$eta_p = (dot(Q)_H - dot(Q)_L)/dot(Q)_H$

$eta_(p,"max") = eta_"carnot" = 1 - T_L/T_H $

A heat engine only requires a temperature difference to create work. Some people propose the temperature difference between the water at the surface of the ocean ($T_"ocean surface" = 22 C$) and the ocean floor ($T_"ocean floor" = 4 C$ ayt 2000 m below sea level) could be used to create a power plant from this free and sustainable resource. What is the maximu thermodynamic efficiency of such a system?

$eta_(p,"max") = eta_"carnot" = 1 - T_L/T_H = 1 - 277 / 295 = 6.1% $

== The Carnot Cycle

Refrigerator

$beta_"max" = T_L/(T_H - T_L)$

Heat pumb

$gamma_"max" = T_H/(T_H - T_L)$

=== Carnot Process

4 idial processes:

$1 - 2$ 1. adiabatic process, $attach(Q, bl: 1, br: 2) = 0$, turbine

$2 - 3$ 1. isothermic process, $T_2 = T_3$, , condensor

$3 - 4$ 2. adaiabatic process, $attach(Q, bl: 3, br: 4) = 0$, pump

$4 - 1$ 2. isothermic process, $T_4 = T_1$, boiler

== Rankine Power plant

The Rankine power plant also known as the steam power cycle.

General features:

$1 - 2$ 1. adiabatic process, $attach(Q, bl: 1, br: 2) = 0$, turbine

$2 - 3$ 1. condensor

$3 - 4$ 2. adaiabatic process, $attach(Q, bl: 3, br: 4) = 0$, pump

$4 - 1$ 2. boiler

negl. $Delta "KE" + "PE"$, assume steady state and steady flow. No heat transfer with surroundings.

The overall thermal efficiency: $eta_P = dot(W)_"cycle" / dot(Q)_"in" = ((h_1 - h_2) + (h_3-h_4))/(h_1-h_4) = 1 + (h_3 - h_2)/(h_1-h_4)$

== Ideal Performance and Entropy

Basic steps to increase the themal efficiency of the Ranking power plant.

1. Increase $p_"boiler"$
2. Reduce $p_"condensor"$

=== Real power cycles - where are the losses?

For real turbines and real pumps are non-isentropic. For real boilers and condensors are non-isobaric.

$eta_"turbine"$

$eta_"pump"$

More advanced methods to increase the efficiency of Rankine Power plants - superheaters.

More advanced methods to increase the efficiency of Rankine Power plants - re-heaters.

The second law of thermodynamics:
- establishes entropy as a thermodynamic property
- is used to determine te ideal or best performance we can expect from a device or process.
- is used to predict the direction of processes.
- is used to evaluate and quantify the effects of irreversibilties
- is used to establish conditions for quilibrium
- allows us to define reversible and irreversible processes

What is the practical interpretation of the property entropy and the process term, the generation of entropy?

- That is a difficult question to answer.
- Entropy is not like termperature or pressure, where we have good tangible examples we can relate to.
- Entropy is a measuyre of disorder in the syste, The generation of entropy is a measure of the irreversibilities that occur dureing a process.
- Think of the reversible process which is defined as a process that can occur and the be reversed and the system is returen to the exact origial conditions without changeing the surroundings of the system.
- Now thin of the example of brakes on a bicyle or on your car. When the brakes are applied (i.e. work transfer occurs), the rims of the wheels are heated by friction. This process is irreversible. The amount of friction heating is an indication of the magnitude of entropy generation.

= Lecture 7

== Rankine Power plants

$dot(W)_"cycle" = 500 "MW" = dot(W)_"T1" + dot(W)_"T2" + dot(W)_P = dot(Q)_"cycle" = [(h_1 - h_2) + (h_3-h_4) + (h_5-h_6)] dot(m) => dot(m) = 1.29*10^6 "kg"/h$

= Lesson 8

== Air Standard Power Cycle

Working fluid is air

$1 - 2$ 1. isentropic (s=const), compressor

$2 - 3$ 1. isobaric, turbine

$3 - 4$ 2. isentropic, fictunal heat exchanger

$4 - 1$ 2. isobaric, compressor

Turbine: $dot(W)/dot(m) = h_3 - h_4 = c_p(T_3 - T_4)$

Compressor: $dot(W)/dot(m) = h_1 - h_2 = c_p(T_1 - T_2)$

Assume ideal gas model with constant specific heats

Combustor: $dot(Q)/dot(m) = h_3 - h_2 = c_p(T_3 - T_2)$

Cycle efficiency: $eta_"cycle" = dot(W)_"cycle" / dot(Q)_in = (dot(W)_T + dot(W)_C)/dot(Q)_"comb"$

- Cycle efficiency increases with increasing burner operating pressure (just like Rankine cycle).
- Compressor work is a much higher fraction of the turbine work compared to pump work in a Rankine cycle (back work ratio).
- Reheat and intercooling can improve the Brayton cycle efficiency.
- There is a lot of useful heat going "out the stack" with the basic Brayton cycle.

Combined cycles - the sum of the parts is grater than the whole.

$dot(W)_"cycle" = dot(W)_"in,compressor" + dot(W)_"gas turbine" + dot(W)_"pump" + dot(W)_"steam turbine"$

$dot(Q)_"cycle" = dot(Q)_"in,combustor" + dot(Q)_"out, fictitional condensor" + dot(Q)_"in, suplement"$

More than 20% of the U.S. total energy use in 1997 was wasted in termal losses from power plats. That is enough energy to power almost all of the transport sector.

Efficiency of combined heat and power plant: $(W_"cycle" + Q_"out") / Q_"in"$

== Carbin reserves and Global Warming

