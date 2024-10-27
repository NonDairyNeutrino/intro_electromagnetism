module IntroElectromagnetism
export Particle, field, potential, potentialField, boundingBox, threshold
using LinearAlgebra: norm, dot

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
end

function boundingBox(dimMin, dimMax, pad = 0.1)
    intervalLength = dimMax - dimMin
    if dimMin != dimMax
        return (dimMin - pad * intervalLength, dimMax + pad * intervalLength)
    elseif dimMin == dimMax != 0
        return (0.9 * dimMin, 1.1 * dimMax)
    else
        return (-1,1)
    end
end

echo(msg) = (display(msg); msg)
threshold(x :: Float64, thresh = 10^(-10)) = x < thresh ? 0.0 : x

include("electric_potential.jl")
include("electric_field.jl")

end
