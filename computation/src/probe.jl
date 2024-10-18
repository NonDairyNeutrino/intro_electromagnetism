function probeGrid(center :: Vector{T}, dx :: T, xRadius :: T, dy :: T, yRadius :: T) :: Matrix{Vector{T}} where T <: Real
    xStepCount = div(xRadius, dx)
    yStepCount = div(yRadius, dy)
    stepIterator = Iterators.product(yRadius:-1:-yRadius, -xRadius:xRadius)
    return [center + [dx * xStep, dy * yStep] for (yStep, xStep) in stepIterator]
end

function probeGrid(center :: Vector{T}, dr :: T, radius :: T) :: Matrix{Vector{T}} where T <: Real
    return probeGrid(center, dr, radius, dr, radius)
end

function probeRing(center :: Vector{T}, radius :: T, dtheta :: T) :: Vector{T} where T <: Real
    stepCount = div(2 * pi * radius, dtheta)
    return [radius * [cos(i * dtheta), sin(i * dtheta)] for i in 1:stepCount]
end