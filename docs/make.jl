using Documenter, PolynomialTestSystems

makedocs(
    format = :html,
    sitename = "PolynomialTestSystems.jl",
    pages = [
        "PolynomialTestSystems" => "index.md"
        ]
)

deploydocs(
    repo   = "github.com/JuliaHomotopyContinuation/PolynomialTestSystems.jl.git",
    target = "build",
    julia = "0.6",
    osname = "linux",
    deps   = nothing,
    make   = nothing
)
