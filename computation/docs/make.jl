using IntroElectromagnetism
using Documenter

DocMeta.setdocmeta!(IntroElectromagnetism, :DocTestSetup, :(using IntroElectromagnetism); recursive = true)

const page_rename = Dict("developer.md" => "Developer docs") # Without the numbers
const numbered_pages = [
    file for file in readdir(joinpath(@__DIR__, "src")) if
    file != "index.md" && splitext(file)[2] == ".md"
]

makedocs(;
    modules = [IntroElectromagnetism],
    authors = "Nathan Chapman <NChapman@whatcom.edu>",
    repo = "https://github.com/NonDairyNeutrino/IntroElectromagnetism.jl/blob/{commit}{path}#{line}",
    sitename = "IntroElectromagnetism.jl",
    format = Documenter.HTML(; canonical = "https://NonDairyNeutrino.github.io/IntroElectromagnetism.jl"),
    pages = ["index.md"; numbered_pages],
)

deploydocs(; repo = "github.com/NonDairyNeutrino/IntroElectromagnetism.jl")
