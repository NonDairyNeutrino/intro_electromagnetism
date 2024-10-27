"""
    field(particle :: Particle, position :: Vector{Float64}) :: Vector{Float64}

The electric field vector due to a point charge at a point away from the charge.
"""
function field(particle :: Particle, position :: Vector{Float64}; normalized = true) :: Vector{Float64} 
    seperation  = position - particle.position # seperation vector between the charge and the measurement
    direction   = normalize(seperation)        # unit vector pointing between the two objects
    if normalized
        return direction
    else
        seperation2 = dot(seperation, seperation)       # square magnitude of the seperation vector
        strength    = k * particle.charge / seperation2 # strength of the electric field at given position
        return strength * direction
    end
end

"""
    field(particle :: Particle) :: Function

Gives a function for the electric field for the given particle.
"""
function field(particle :: Particle; normalized = true) :: Function
    return (position -> field(particle, position; normalized = normalized))
end

function field(system :: Tuple; normalized = true) :: Function
    return (position :: Vector{Float64} -> sum(field(particle, position; normalized = normalized) for particle in system))
end