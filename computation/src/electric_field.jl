"""
    field(particle :: Particle, position :: Vector{Float64}) :: Vector{Float64}

The electric field vector due to a point charge at a point away from the charge.
"""
function field(particle :: Particle, position :: Vector{Float64}) :: Vector{Float64} 
    seperation  = position - particle.position      # seperation vector between the charge and the measurement
    seperation2 = dot(seperation, seperation)       # square magnitude of the seperation vector
    strength    = k * particle.charge / seperation2 # strength of the electric field at given position
    direction   = seperation / norm(seperation)     # unit vector pointing between the two objects
    return strength * direction
end

"""
    field(particle :: Particle) :: Function

Gives a function for the electric field for the given particle.
"""
function field(particle :: Particle) :: Function
    return (position -> field(particle, position))
end