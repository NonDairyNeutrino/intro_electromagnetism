module IntroElectromagnetism
export Particle, field, potential, drawEquipotentials, threshold
using LinearAlgebra: norm, normalize, dot

"""
    The electric constant k = 1 / 4 pi epsilon_0
"""
const k = 1 # 9 * 10^9 # N * m^2 / C^2

"""
    Particle(charge, mass, position, velocity)

Constructs a representation of a particle with different properties.
"""
struct Particle
    charge   :: Float64
    mass     :: Float64
    position :: Vector{Float64}
    velocity :: Vector{Float64}
    function Particle(; charge = 1, mass = 1, position = [0,0], velocity = [0,0])
        new(charge, mass, position, velocity)
    end
end

echo(msg) = (display(msg); msg)
threshold(x :: Float64, thresh = 10^(-10)) = x < thresh ? 0.0 : x

include("electric_potential.jl")
include("electric_field.jl")
include("plotting.jl")

end
