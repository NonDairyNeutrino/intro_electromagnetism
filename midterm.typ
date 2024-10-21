#set page(
  paper: "us-letter",
  header: [Physics 223&: Engineering Physics III #h(1fr) Midterm Exam #h(1fr) Name: \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\ #line(length: 100%) #v(-10pt) #line(length: 100%)],
  margin: (top: auto, rest: 0.625in)
)
#set par(justify: true)
#set text(font: "New Computer Modern")
#set enum(numbering: "1.a)")

#let title = [= Physics 223&: Engineering Physics III Midterm]

#align(center)[#title]
#v(11pt)
The purpose of the following questions is meant to assess the student's understanding of and skills in applying the following concepts:

- Charges & Forces: the charge model, electric insulators & conductors, Coulomb's Law and the electric force
- The Electric Field: the electric field of a due to multiple point charges, the parallel-plate capacitor, motion of a charged particle in an electric field
- Gauss's Law: symmetry, electric flux
- The Electric Potential: the potential energy of point charges, the electric potential inside a parallel-plate capacitor
- Potential & Field: finding the electric field from the potential

During this exam you are allowed access to both the textbook and your notes.  Good luck.
#line(length: 100%)

// == Electric Charges & Forces

// 22.3 Insulators & Conductors
+ One end of a *neutral* rod is brought into close proximity, but does not touch, an object with charge $Q != 0$.

  + Describe (with words and a picture) the final charge distribution of the rod if it is made of a *conducting* material such as copper? 
    How did it get like that? 

  + Describe (with words and a picture) the final charge distribution of the rod if it is made of an *insulating* material such as rubber?
    How did it get like that? 

  + Describe (with words and a picture) the final charge distribution of the rod if it is then pulled away from the charged object.
    Does this depend on if the rod is a conductor or an insulator? 

  + The charged object is said to \_\_\_\_\_\_\_\_ the rod?
  #columns(4, [#h(20%)a. Charge #colbreak() #h(20%)b. Electrify #colbreak() #h(20%)c. Polarize #colbreak() #h(20%)d. Magnetize])

// 22.4 Coulomb's Law #25
// #pagebreak()
+ The gray positive charge experience a net force due to two other charges: the +1 charge that is seen and a +4 charge that is not seen.
  Add the +4 charge to the figure at the correct position and explain why you chose that position. 
  #columns(2, [ ])//#figure()])

// == The Electric Field

// 23.2 The Electric Field of Multiple Point Charges #7
+ For each figure, draw and label the net electric field vector $harpoon(E)_("net")$ at each of the points marked with a dot or, if appropriate,
  label the dot $harpoon(E)_("net") = harpoon(0)$.  The lengths of your vectors should indicate the magnitude of $harpoon(E)$ at each point.

  #columns(3, [#h(11%)a. #colbreak() #h(11%)b. #colbreak() #h(11%)c. ]) 

// + 23.4 The Electric Fields of Rings, Disks, Planes, and Spheres

// 23.5 The Parallel-Plate Capacitor
+ A ball hangs from a thread between two vertical capacitor plates. Initially, the ball hangs straight down. The capacitor plates are charged as
  shown, then the ball is given a small negative charge. The ball moves to one side, but not enough to touch a capacitor plate.

  + Draw the ball and thread in the ball's new equilibrium position.

  + In the space below, draw a free-body diagram of the ball when in its new position.

// 23.7 Motion of a Charged Particle in an Electric Field
+ Ionized Helium $"He"^+$ has two protons and two neutrons in its nucleus $Q_n = 2e$ while only a single electron orbiting $Q_e = -e$.
  The Bohr model of the atom states that electrons can only exist at certain distances from the nucleus in order to "quantize" its electrostatic
  potential energy. These distances form concentric circular "rails" upon which the electrons travel, otheriwise known as _electron shells_ or _energy levels_, with the "lowest energy level" being closest to the nucleus.

  + Draw and label the following vectors on a diagram of the $"He"^+$ ion with the electron in the lowest energy level: the electron's velocity $harpoon(v)$ and acceleration $harpoon(a)$, the net force $harpoon(F)$ on the electron, and the electric field $harpoon(E)$ at the position of the electron. *Note: Don't worry about magnitude and length, just focus on direction.*

// == Gauss's Law

+ 24.1 Symmetry

// + 24.2 The Concept of Flux

+ 24.3 Calculating Electric Flux

+ 24.5 Using Gauss's Law

// == The Electric Potential

// 25.2 The Potential Energy of Point Charges
+ Consider a ring of radius $R$ with a total charge $Q > 0$, and an object with mass $m$ and charge $q > 0$ at a distance $d$ along the central axis of the
  ring moving with velocity $harpoon(v) = -v hat(d)$ along the axis toward the ring.  The electric field $harpoon(E)(d)$ at a point on the central axis at a distance $d$ away from the center of the ring is given by 
  $ harpoon(E)(d) = 1 / (4 pi epsilon_0) (Q d) / (d^2 + R^2)^(3\/2) hat(d). $

  + What is the work done by the electric force on the object as it moves from its initial point to the center of the ring?

  + What is the change in potential energy of the object between its initial position and the center of the ring?

  + What initial speed does the object need to have in order to come to rest at the center of the ring? _Hint: The electric force conserves mechanical energy._

+ 25.4 The Electric Potential

+ 25.5 The Electric Potential Inside a Parallel-Plate Capacitor

// == Potential & Field

+ 26.2 Finding the Electric Field from the Potential

// + 26.7 Dielectrics
