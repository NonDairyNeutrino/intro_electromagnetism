include("../src/IntroElectromagnetism.jl")
using .IntroElectromagnetism
using Plots: plot, contour!, scatter!, quiver!

# initialize the system of objects
particleTuple = (
    Particle(-5, 1, 0.5 * [-1, 0], [0, 0]),
    Particle( 100, 1, 0.5 * [1, 0], [0,0])
)

# find the bounding box of the system
xMin, xMax = getindex.(getproperty.(particleTuple, :position), 1) |> extrema
yMin, yMax = getindex.(getproperty.(particleTuple, :position), 2) |> extrema
plotRange  = (xBounds = boundingBox(xMin, xMax), yBounds = boundingBox(yMin, yMax))

# find the potential at the corners of the bounding box
# NOTE: use this to set refererence point for contours
contourBounds = extrema(potentialField(particleTuple).(Iterators.product(plotRange...) .|> (x -> [x...])))

# initialize the plot
plot(; xlabel = "x (m)", ylabel = "y (m)")

# draw the equipotentials
contour!(
    range(plotRange.xBounds..., 100), 
    range(plotRange.yBounds..., 100), 
    (x,y) -> potentialField(particleTuple)([x,y]);
    levels  = round.(range(contourBounds..., 25); sigdigits = 2),
    clims   = contourBounds,
    clabels = true,
    cbar    = true,
    # ratio   = :equal,
    gopacity = 0.25
)

# draw the chages
scatter!(
    [getproperty.(particleTuple, :position)...] .|> Tuple;
    legend      = false,
    markersize  = [abs.(getproperty.(particleTuple, :charge))...],
    markercolor = [(getproperty.(particleTuple, :charge) .|> (x -> x > 0 ? :red : :blue))...]
    # TODO: add amount of charge as a label on each marker
)