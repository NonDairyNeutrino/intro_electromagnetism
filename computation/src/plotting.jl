using Plots: plot, contour!, scatter!, quiver!, savefig

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

function drawEquipotentials(particleTuple :: Tuple)
    # find the bounding box of the system
    xMin, xMax = getindex.(getproperty.(particleTuple, :position), 1) |> extrema
    yMin, yMax = getindex.(getproperty.(particleTuple, :position), 2) |> extrema
    plotRange  = (xBounds = boundingBox(xMin, xMax), yBounds = boundingBox(yMin, yMax))

    # find the potential at the corners of the bounding box and in the midpoints
    # NOTE: use this to set refererence point for contours
    contourBounds = [potential(particleTuple)([x,y]) for (x,y) in Iterators.product(
            [plotRange.xBounds..., sum(plotRange.xBounds) / 2], 
            [plotRange.yBounds..., sum(plotRange.yBounds) / 2]
        )
    ] |> extrema

    # centerOfCharge = sum(particle.charge * particle.position for particle in particleTuple) / sum(getproperty.(particleTuple, :charge))
    # let centerPotential = potentialField(particleTuple)(centerOfCharge)
    #     if centerPotential < 2 * min(contourBounds...) || centerPotential
    # end

    # initialize the plot
    plt = plot(; xlabel = "x (m)", ylabel = "y (m)", title = "Equipotentials", ratio = :equal)

    # draw the chages
    scatter!(
        [getproperty.(particleTuple, :position)...] .|> Tuple;
        legend      = false,
        markersize  = [abs.(getproperty.(particleTuple, :charge))...],
        markercolor = [(getproperty.(particleTuple, :charge) .|> (x -> x > 0 ? :red : :blue))...]
        # TODO: add amount of charge as a label on each marker
    )

    # draw the equipotentials
    contour!(
        range(plotRange.xBounds..., 100), 
        range(plotRange.yBounds..., 100), 
        (x,y) -> potential(particleTuple)([x,y]);
        levels  = round.(range(contourBounds..., 25); sigdigits = 2),
        clims   = contourBounds,
        clabels = true,
        cbar    = true,
        gopacity = 0.25
        # fill = true
    )

    # now begins the best part of programming: working with user input
    print("Plotting complete. Saving image as png with name (press Enter to cancel): ")
    name = readline()
    if !isempty(name)
        while ispath(name * ".png") # check if file already exists
            print("File already exists. Overwrite (y/N)? ")
            if readline() == "y"
                break
            else
                print("New name: ")
                name = readline()
            end
        end
        savefig("$name.png")
        println("Image saved at: ", joinpath(pwd(), name * ".png"))
    end
end

# draw the electric field vectors
# let x = range(plotRange.xBounds..., 10), y = range(plotRange.yBounds..., 10), probePoints
#     # probePoints = Iterators.product(x, y) .|> (x -> [x...]) |> Tuple # looks like ([x1, y1], [x2, y2], ...)
#     # fieldPoints = (list -> ([getindex.(list, 1)...], [getindex.(list, 2)...]))(field(particleTuple).(probePoints))
#     fieldPoints = [field(particleTuple)([x,y]) for (x, y) in Iterators.product(x,y)]
#     # quiver!(x, y, quiver = fieldPoints)
# end