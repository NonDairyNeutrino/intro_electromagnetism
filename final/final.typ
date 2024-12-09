#let isPractice = true
#let isSolution = false
#let title = [= Physics 223&: Engineering Physics III #if isPractice [Practice] Final Exam]

#set page(
    paper: "us-letter",
    margin: (top: auto, rest: 0.625in),
    header: [Physics 223&: Engineering Physics III #h(1fr) #if isPractice [Practice] Final Exam #h(1fr) Name: \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\ #line(length: 100%) #v(-10pt) #line(length: 100%)],
    footer: context [#align(center, counter(page).display("1/1", both: true))]
)
#set par(justify: true)
#set text(font: "New Computer Modern")
#set enum(numbering: "1.a)")

#align(center)[#title]
#v(11pt)

Show all your work for full credit. Clearly indicate your final answers with appropriate units.

+ A point charge $q_1 = 5.0 mu C$ is fixed at the origin, and a second charge $q_2 = -3.0 mu C$ is located at $x = 4.0 m$.
  +  Calculate the magnitude and direction of the force on $q_2$ due to $q_1$.
  +  Suppose a third charge, $q_3 = 2.0 mu C$, is placed at $(4.0 m, 3.0 m)$. What is the net force on $q_3$?
  +  Briefly explain the difference between how conductors and insulators would respond if these charges were brought near them.
  // + *Extra Credit:* Explain why the Coulomb is a stupid unit.  Some possibly helpful quantities are that Sweden has a population of about $1.05 times 10^7$ with the average mass of one of those people being 74kg.

+ A charge $Q = 6.0 mu C$ is distributed uniformly over a spherical shell of radius $R = 0.5 m$.
  +  Calculate the electric field at $r = 0.25 m$, $r = 0.5 m$, and $r = 1.0 m$.
  +  If a test charge $q = 2.0 mu C$ is placed at $r = 1.0 m$, what force does it experience?
  +  Explain the relationship between the electric field and force in this scenario.

+ A long, thin rod of charge has a linear charge density $lambda = 5.0 mu C \/ m$.
  +  Use Gauss's Law to find the electric field at a distance $r = 0.2 m$ from the rod.
  +  Why is symmetry important when applying Gauss's Law?
  +  A spherical shell of radius $R = 1.0 m$ encloses the rod. What is the total flux through the sphere?

+ A parallel-plate capacitor has a separation of $d = 0.01 m$ and a voltage difference $V = 100.0 V$.
  +  Calculate the electric field between the plates.
  +  If a $1.0 mu C$ charge is moved from one plate to the other, what is the change in potential energy?
  +  Discuss how the potential relates to the potential energy in this setup.

+ A capacitor with capacitance $C = 10.0 mu F$ stores $Q = 500.0 mu C$ of charge.
  +  Calculate the energy stored in the capacitor.
  +  A dielectric with a relative permittivity $epsilon_r = 4.0$ is inserted. How does the energy change?
  +  Explain how a uniform electric field can be derived from a potential difference.

+ A cylindrical resistor of length $L = 2.0 m$ and cross-sectional area $A = 0.01 m^2$ has resistivity $rho = 10^(-6) Omega m$.
  +  Calculate the resistance of the cylinder.
  +  If a current of $I = 5.0 A$ flows through it, find the voltage across the resistor.
  +  Describe how conductivity differs from resistivity.

+ A series RC circuit with $R = 100.0 Omega$ and $C = 20.0 mu F$ is connected to a $12.0 V$ battery.
  +  Calculate the time constant of the circuit.
  +  How long will it take for the capacitor to charge to $8.0 V$?
  +  Explain the physical significance of the time constant.

+ A solenoid has $n = 100.0 "turns"\/m$ and carries a current of $I = 2.0 A$.
  +  Find the magnetic field inside the solenoid.
  +  A charged particle with $q = 1.0 mu C$ moves with velocity $v = 100.0 m/s$ perpendicular to the field. Calculate the force on the particle.
  +  Explain how Ampere's Law applies to the solenoid.
  #v(1fr)

+ A circular loop of radius $r = 0.2 m$ is placed in a uniform magnetic field that changes from $B = 0$ to $B = 0.5 T$ in $t = 0.1 s$.
  +  Calculate the induced EMF in the loop.
  +  If the loop has resistance $R = 10.0 Omega$, find the induced current.
  +  State Lenz's Law and describe its role in this problem.

+ An RLC circuit consists of $R = 50.0 Omega$, $C = 10.0 mu F$, and $L = 0.1 H$ connected to an AC source with $V = 120.0 V$ and $f = 60.0 "Hz"$.
  +  Calculate the capacitive and inductive reactances.
  +  Impedance is a generalization of the idea of resistance and
     is defined as $Z = R + j X$, where 
     $Z$ is the impedance of an element, 
     $R$ is the resistance, 
     $j$ is the imaginary unit, 
     and $X$ is the reactance.
     If in a series circuit, impedances add such that $Z_(12) = Z_1 + Z_2$, determine the total impedance of the circuit.
  +  What is the current in the circuit? _Hint: Ohm's Law_

// + *Extra Credit:* In one inertial frame, a purely electric field $harpoon(E)$ exists. A second frame moves at velocity $harpoon(v)$ relative to the first.
//   +  Qualitatively describe how the moving observer perceives a magnetic field $harpoon(B)$ in addition to $harpoon(E)$.
//   +  Derive the relationship between the transformed fields using relativistic transformations.

// = Extra Credit

// In one inertial frame, a purely electric field $vec(E)$ exists. A second frame moves at velocity $vec(v)$ relative to the first. The transformations between the electric and magnetic fields are given by:

// $E'_"parallel" = E_"parallel"$

// $E'_"perpendicular" = gamma (E_"perpendicular" + vec(v) times vec(B))$

// $B'_"parallel" = B_"parallel"$

// $B'_"perpendicular" = gamma (B_"perpendicular" - (1/c^2) vec(v) times vec(E))$

// where $gamma = 1/sqrt(1 - v^2/c^2)$, $vec(v)$ is the velocity of the moving frame, and $c$ is the speed of light.  

// A stationary frame observes $vec(E) = (200, 0, 0) N/C$ and $vec(B) = (0, 0, 0) T$. A second frame moves with $vec(v) = (0, 10^7, 0) m/s$ relative to the first.  

//   + (a) Calculate the transformed electric field $vec(E')$ in the moving frame.  
//   + (b) Calculate the transformed magnetic field $vec(B')$ in the moving frame.  

