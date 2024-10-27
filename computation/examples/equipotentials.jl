include("../src/IntroElectromagnetism.jl")
using .IntroElectromagnetism

# initialize the system of objects
particleTuple = (
    Particle(2, 1, 1 * [cos(0 * 2pi/3), sin(0 * 2pi/3)], [0,0]),
    Particle(2, 1, 1 * [cos(1 * 2pi/3), sin(1 * 2pi/3)], [0,0]),
    Particle(2, 1, 1 * [cos(2 * 2pi/3), sin(2 * 2pi/3)], [0,0]),
    Particle(-1, 1, [0, 0], [0,0]),
)

drawEquipotentials(particleTuple)