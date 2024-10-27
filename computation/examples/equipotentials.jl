include("../src/IntroElectromagnetism.jl")
using .IntroElectromagnetism

# initialize the system of objects
particleTuple = (
    Particle(charge = 2, position = 1 * [cos(0 * 2pi/3), sin(0 * 2pi/3)]),
    Particle(charge = 2, position = 1 * [cos(1 * 2pi/3), sin(1 * 2pi/3)]),
    Particle(charge = 2, position = 1 * [cos(2 * 2pi/3), sin(2 * 2pi/3)]),
    Particle(charge = -1,position = [0, 0]),
)

drawEquipotentials(particleTuple)