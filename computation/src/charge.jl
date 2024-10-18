# this file serves as the "spacetime" upon with all effects lie e.g. the 
# electric and potential fields, the motion of charges/charge distributions
# more specifically, here we define common configurations and distributions 
# of charge on a grid i.e. a charge field

function initializeChargeField(dims :: Dims) :: Matrix{Float64}
    return zeros(dims)
end

"""
    addPointCharge!(grid :: Matrix{Float64}, charge :: Float64, position :: CartesianIndex) :: Matrix{Float64}

Add a point charge to the grid at a position
"""
function addPointCharge!(grid :: Matrix{Float64}, charge :: Float64, position :: CartesianIndex) :: Matrix{Float64}
    # TODO: change grid variable to Ref(grid)
    grid[CartesianIndex(position)] += charge
    return grid
end

"""
    addRegionCharge!(grid :: Matrix{Float64}, charge :: Union{Float64, Matrix{Float64}}, from :: CartesianIndex, to :: CartesianIndex) :: Matrix{Float64}

Add a region of uniform charge to the grid.
The region is spanned by the given cartesian indices.
The region could thus be a line or other rectangular region.

Note: the structure of the charge distribution must match the structure of the space specification.
e.g charge Float64[1 2 3] with from = CartesianIndex(2,2) and to = CartesianIndex(2,4)
"""
function addRegionCharge!(grid :: Matrix{Float64}, charge :: Union{Float64, Matrix{Float64}}, from :: CartesianIndex, to :: CartesianIndex) :: Matrix{Float64}
    grid[from : to] .+= charge
    return grid
end

