"""
    potential(particle :: Particle, position :: Vector{Float64}) :: Float64

The electric potential due to a point charge at point away from the charge.
"""
function potential(particle :: Particle, position :: Vector{Float64}) :: Float64
    seperation = position - particle.position
    return k * particle.charge / norm(seperation)
end