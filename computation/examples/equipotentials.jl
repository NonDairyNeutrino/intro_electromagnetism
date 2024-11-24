include("../src/IntroElectromagnetism.jl")
using .IntroElectromagnetism

# initialize the system of objects
particleTuple = (
# protons equidistant from central electron
    Particle(charge = 1, position = 1 * [cos(0 * 2pi/3), sin(0 * 2pi/3)]),
    Particle(charge = 1, position = 1 * [cos(1 * 2pi/3), sin(1 * 2pi/3)]),
    Particle(charge = 1, position = 1 * [cos(2 * 2pi/3), sin(2 * 2pi/3)]),
    Particle(charge = -1,position = [0, 0]),
    Particle(charge = 10, position = [2,0])
#    Particle(charge = -1, position = [-1, 0]),
#    Particle(charge =  1, position = [1,  0])
)

drawEquipotentials(particleTuple)
