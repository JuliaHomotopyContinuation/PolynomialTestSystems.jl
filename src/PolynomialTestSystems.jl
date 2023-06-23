module PolynomialTestSystems

    import MultivariatePolynomials as MP

    import DynamicPolynomials
    import DynamicPolynomials: @polyvar
    using LinearAlgebra

    include("testsystem.jl")
    include("systems.jl")

end
