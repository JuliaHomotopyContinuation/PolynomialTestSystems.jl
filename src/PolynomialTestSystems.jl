module PolynomialTestSystems

    import MultivariatePolynomials as MP

    import DynamicPolynomials: Polynomial, PolyVar, @polyvar, differentiate
    using LinearAlgebra

    include("testsystem.jl")
    include("systems.jl")

end
