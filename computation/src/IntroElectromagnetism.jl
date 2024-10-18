module IntroElectromagnetism
export Particle, field, potential
using LinearAlgebra

"""
    The electric constant k = 1 / 4 pi epsilon_0
"""
const k = 9 * 10^9 # N * m^2 / C^2

struct Particle
    charge   :: Float64
    mass     :: Float64
    position :: Vector{Float64}
    velocity :: Vector{Float64}
end

include("electric_field.jl")
include("electric_potential.jl")

end
