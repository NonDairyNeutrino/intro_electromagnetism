"""
    potential(particle :: Particle, position :: Vector{Float64}) :: Float64

The electric potential due to a point charge at point away from the charge.
"""
function potential(particle :: Particle, position :: Vector{Float64}) :: Float64
    seperation = position - particle.position
    return k * particle.charge / norm(seperation)
end

"""
    potential(particle :: Particle) :: Function

Gives a function for the electric potential due to the given charge at a given point.
"""
function potential(particle :: Particle) :: Function
    return (position -> potential(particle, position))
end

"""
    potentialField(position :: Vector{Float64}) :: Float64

Gives a the value of the electric potential due to all chages in the system.
"""
function potentialField(particleTuple :: Tuple) :: Function
    return (position :: Vector{Float64} -> sum(potential(particle, position) for particle in particleTuple))
end