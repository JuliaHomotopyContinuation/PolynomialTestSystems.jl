__precompile__()

module PolynomialTestSystems

    import MultivariatePolynomials
    const MP = MultivariatePolynomials

    import DynamicPolynomials: Polynomial, PolyVar, @polyvar

    using Compat

    include("testsystem.jl")
    include("systems.jl")

end
