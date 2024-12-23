#let isPractice = false
#let isSolution = false
#let title = [= Physics 223&: Engineering Physics III #if isPractice [Practice] Midterm]

#set page(
    paper: "us-letter",
    margin: (top: auto, rest: 0.625in),
    header: [Physics 223&: Engineering Physics III #h(1fr) #if isPractice [Practice] Midterm Exam #h(1fr) Name: \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\ #line(length: 100%) #v(-10pt) #line(length: 100%)],
    footer: context [#align(center, counter(page).display("1/1", both: true))]
)
#set par(justify: true)
#set text(font: "New Computer Modern")
#set enum(numbering: "1.a)")

#align(center)[#title]
#v(11pt)
The purpose of the following questions is meant to assess the student's understanding of and skills in applying the following concepts:

- Charges & Forces: the charge model, electric insulators & conductors, Coulomb's Law and the electric force
- The Electric Field: the electric field of a due to multiple point charges, the parallel-plate capacitor, motion of a charged particle in an electric field
- Gauss's Law: symmetry, electric flux
- The Electric Potential: the potential energy of point charges, // the electric potential inside a parallel-plate capacitor
- Potential & Field: finding the electric field from the potential

During this exam you are allowed access to both the textbook and your notes. Good luck.
#line(length: 100%)

///////////// PAGE 1 /////////////
// == Electric Charges & Forces
// 22.3 Insulators & Conductors
+ One end of a *neutral* rod is brought into close proximity to, but does not touch, an object with charge $Q < 0$.

    + Draw the final charge distribution of the rod if it is made of a *conducting* material such as copper? 
        Describe the motion of the charges before getting there.
        #v(15%)

    + Draw the final charge distribution of the rod if it is made of an *insulating* material such as rubber?
        Describe the motion of the charges before getting there.
        #v(15%)

    + Draw the final charge distribution of the rod after it is been pulled away from the charged object.
        Does this depend on if the rod is a conductor or an insulator? 
        #v(15%)

    + The charged object is said to \_\_\_\_\_\_\_\_ the rod?
        #columns(4, [a. charge #colbreak() b. electrify #colbreak() c. polarize #colbreak() d. magnetize])
    #v(1fr)

///////////// PAGE 2 /////////////
// 22.4 Coulomb's Law #25
+ The gray positive charge experiences a net force due to three other charges: the +1 charge that is seen, a negative charge, and a positive charge.
    Add the unseen positive and negative charges to the figure at the correct position, labelling them with the appropriate amount of charge, and explain why you chose those positions and charges. 
    #columns(2, [#colbreak() #figure(image("2.png"))])

// == The Electric Field
// 23.2 The Electric Field of Multiple Point Charges #7
+ For each figure, draw and label the net electric field vector $harpoon(E)_("net")$ at each of the points marked with a dot or, if appropriate,
    label the dot $harpoon(E)_("net") = harpoon(0)$.    The lengths of your vectors should indicate the magnitude of $harpoon(E)$ at each point.
    #align(center, image("3.png", width: 100%))
    #v(6%)

// 23.5 The Parallel-Plate Capacitor
+ A ball hangs from a thread between two vertical capacitor plates. Initially, the ball hangs straight down. The capacitor plates are charged as
    shown, then *the ball is given a small negative charge*. The ball moves to one side, but not enough to touch a capacitor plate.

    + Draw the ball and thread in the ball's new equilibrium position.

    + In the space below, draw a free-body diagram of the ball when in its new position. 
    #align(right, [#image("4.png", height: 20%)])
    #v(1fr)

///////////// PAGE 3 /////////////
// 23.7 Motion of a Charged Particle in an Electric Field
+ Ionized Helium $"He"^+$ has two protons and two neutrons in its nucleus $Q_n = 2e$ while only a single electron orbiting $Q_e = -e$.
    The Bohr model of the atom states that electrons can only exist at certain distances from the nucleus in order to "quantize" its electrostatic
    potential energy. These distances form concentric circular "rails" upon which the electrons travel, 
    otheriwise known as _electron shells_ or _energy levels_.    The lowest energy level is called the _ground state_ and is closest to the nucleus.

    + Draw and label the following *normalized* (i.e. just direction) vectors on a diagram of the $"He"^+$ ion with the electron in the lowest energy level: 
        #columns(2, [
            - the electron's velocity $harpoon(v)$,
            - acceleration $harpoon(a)$, 
            - the net force $harpoon(F)$ on the electron, 
            - and the electric field $harpoon(E)$ at the position of the electron.
        #colbreak()
            #align(right, [#image("5.png", width: 66%)])
        ])

    + Electrons can be _excited_ into higher energy levels by absorbing certain frequencies of light (i.e. photons with specific energies).
        How would the quantities above change if the electron were excited into one of these higher energy levels?
        Do any of them change by the same factor?
        #v(15%)

    + If the electron is excited from an energy level with radius $R$ to an energy level with radius $2R$,
        by what factor does each of these quantities change? 
        _Hint: The angular momentum $L$ for an object with linear momentum $p$ in uniform circular motion at a radius $r$ is defined by $L = r p$_.
        #v(1fr)

// == Gauss's Law
// + 24.3 Calculating Electric Flux
+ Consider a uniform electric field $harpoon(E) = E hat(x)$ and a hemisphere of radius $R$ oriented such that the area vector of the base points
    in the $-hat(x)$ direction.

    + What is the electric flux through the base of the hemisphere?
        #align(right, image("6.png", height: 20%))

    + What is the electric flux through the dome of the hemispehre? 
        
        Note: for a hemisphere, the area element $d harpoon(A)$ is such that 
        $ d harpoon(A) = R^2 sin(theta) [sin(theta) cos(phi) hat(x) + sin(theta) sin(phi) hat(y) + cos(theta) hat(z)] d theta d phi. $
        where $0 <= theta <= pi$ and $-pi/2 <= phi <= pi/2$.

        _Hint: 
        $integral_0^pi sin^2(theta) d theta = pi/2$ and 
        $integral.double f(r) g(theta) d r d theta = integral f(r) d r integral g(theta) d theta$_ and
        $harpoon(u) dot harpoon(v) = u_x v_x + u_y v_y + u_z v_z$. 
        #v(45%)

    + What is the electric flux through the entire hemisphere?
        #v(1fr)

///////////// PAGE 4 /////////////
// + 24.5 Using Gauss's Law
+ Consider a coaxial cable of length $L$ with a conducting hollow core of radius $R_c$ with uniform surface charge density $eta$ and
    an outer conducting shield of radius $R_s > R_c$ with uniform surface charge density $-eta$. *Note: the space between the core and the shield is _empty_.*

    + What is the electric flux $Phi_"i"$ through a Gaussian cylinder of radius $R_G < R_c$ and length $L_G < L$ that is coaxial with the cable?
        #align(right, image("Coaxial_cable_cutaway.svg.png", height: 20%))

    + What is the electric flux $Phi_"b"$ through a Gaussian cylinder of radius $R_c < R_G < R_s$ and length $L_G < L$ that is coaxial with the cable?
        #v(15%)

    + What is the electric flux $Phi_"o"$ through a Gaussian cylinder of radius $R_s < R_G$ and length $L_G < L$ that is coaxial with the cable?
        #v(15%)

    + Graph the electric flux through a Guassian cylinder of radius $R_c < R_G < R_s$ that is coaxial with the cable as its length $L_G$ increases from $0L$ to $2L$.
        #v(1fr)

///////////// PAGE 5 /////////////
// == The Electric Potential
// 25.2 The Potential Energy of Point Charges
+ Consider a ring of radius $R$ with a total charge $Q < 0$, and an object with mass $m$ and charge $q > 0$ at the center of the
    ring moving with velocity $harpoon(v) = v hat(s)$ along the axis away the ring.    The electric field $harpoon(E)(s)$ at a point on the central axis at a
    distance $s$ away from the center of the ring is given by 
    $ harpoon(E)(harpoon(s)) = 1 / (4 pi epsilon_0) (Q s) / (s^2 + R^2)^(3\/2) hat(s). $

    + What is the work done by the electric force on the object as it moves from the center of the ring to infinity?
        _Hint: Use u-substitution_
        #v(20%)

    + What is the change in *total mechanical* energy of the object between center of the ring and infinity?
        #v(20%)

    // + What initial speed does the object need to have in order to come to rest at the center of the ring? 
    + What is the initial speed the object needs to have to come to rest at infinity? In other words, what is the escape velocity of the ring?
        _Hint: The electric force conserves mechanical energy._
        #v(1fr)

///////////// PAGE 6 /////////////
// + 25.4 The Electric Potential
+ Given two atoms seperated by a great distance, they will naturally move toward each other due to the electro-static attraction between the electrons
    and the protons. At some point though, the electro-static repulsion between the electrons and between the protons becomes stronger.
    This competition results in an optimal distance between the atoms known as the _bond length_. 
    For two Hydrogen atoms, known as _molecular Hydrogen_ $H_2$, this optimal distance is 74 pm (1 pm = 1 picometer = $10^(-12)$ m).
    #align(center, image("H2-energy-2.png", width: 66%))

    + Is the electric potential at the location of each Hydrogen atom greater than or less than the electric potential immediately *toward* the other atom?
        What would happen if it was the opposite?
        #v(10%)

    + Is the electric potential at the location of each Hydrogen atom greater than or less than the electric potential immediately *away* from the other atom?
        #v(10%)

    + What is an approximate expression for the electric potential at a point far away (i.e. $r >> 74 "pm"$), but not infinitely so, from a $H_2$ molecule and why?
        #v(1fr)

// == Potential & Field
// + 26.2 Finding the Electric Field from the Potential
+ The figure below shows the equipotential lines in Volts for a negative charge at [-1, 0] and a positive charge at [1, 0].

    #if isPractice [
        #align(center, image("equipotentials_easy.png", width: 66%))
    ] else [
        #align(center, image("equipotentials.png", width: 75%))
    ]

    + On this contour map, draw the electric field vectors at each combination $(x, y)$ of $x = [-0.5, 0, 0.5]$ and $y = [-1, 0, 1]$.
        // #grid(columns: 3, \[-0.5, 1\], \[0, 1\], \[0.5, 1\] [-0.5, 0], [0, 0], [0.5, 0], [-0.5, -1], [0, -1], [0.5, -1]
        The length of each vector should be proportional to the field strength at that point.

    + What are the components of the electric field at $(0, 0)$?
