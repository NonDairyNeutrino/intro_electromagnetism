# sandbox

# SETUP
using Plots: plot, contour!, scatter!, quiver!
using LinearAlgebra

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

"""
    potential(particle :: Particle, position :: Vector{Float64}) :: Float64

The electric potential due to a point charge at point away from the charge.
"""
function potential(particle :: Particle, position :: Vector{Float64}) :: Float64
    seperation = position - particle.position
    return k * particle.charge / norm(seperation)
end

function potential(particle :: Particle)
    return (position -> potential(particle)(position))
end

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

function field(particle :: Particle)
    return (position -> field(particle, position))
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

# echo(msg) = (@show msg; msg)

# PROGRAM
# INITIALIZATION
particleVector = [
    Particle(10, 1, 0.5 * [-1, 0], [0, 0]),
    Particle(1, 1, 0.5 * [1, 0], [0,0])
]

xMin, xMax = extrema(particle.position[1] for particle in particleVector)
yMin, yMax = extrema(particle.position[2] for particle in particleVector)

# probePoints = [particle.position .+ reim(exp(im * theta)) for theta in 0:pi/2:2pi for particle in particleVector]

# PLOT
plot(; xlabel = "x (m)", ylabel = "y (m)")
contour!(
    range(boundingBox(xMin, xMax)..., 100), 
    range(boundingBox(yMin, yMax)..., 100), 
    (x, y) -> sum(potential(particle, [x, y]) for particle in particleVector);
    levels = begin
        levelVector = zeros(Float64, 40 #= 0:pi/2:2pi x 0.1:0.1:1=#)
        for (i, (theta, radius)) in enumerate(Iterators.product(0:pi/2:3pi/2, 0.1:0.1:1))
            pot = 0
            for particle in particleVector
                pot += potential(particle, particle.position .+ reim(radius * exp(im * theta)))
            end
            levelVector[i] = pot
        end
        round.(push!(levelVector, 0.0); sigdigits = 2)|> unique
    end,
    clabels = true,
    cbar = false
    # color = :turbo
)

scatter!(
    getproperty.(particleVector, :position) .|> Tuple;
    legend = false, 
    markersize = getproperty.(particleVector, :charge)
)