function Help()
    println("**Root Finding Methods**")
    println("1. Bisection(a,b,f)")
    println("2. SingleRootSecant(x0,x1,f)")
    println("3. DoubleRootSecant(x0,x1,f)")
    println("4. Newton(x0,f,g)")
    println("")
    println("     a - Left interval endpoint")
    println("     b - Right interval endpoint")
    println("     x0 - Initial value")
    println("     x1 - Initial value + 1")
    println("     x - Initial point to start")
    println("     f - function")
    println("     g - derivative of function")
    println("")
    println("**Lagrangian Interpolation Methods**")
    println("1. p(t,x[],y[],n)")
    println("2. PlotInterpolation(a,b,x[],y[],n)")
    println("3. PlotInverseInterpolation(a,b,x[],y[],n)")
    println("")
    println("     a - Left endpoint of valid interpolation")
    println("     b - Right endpoint of valid interpolation")
    println("     x[] - Array of x values to interpolate")
    println("     y[] - Array of y values to interpolate")
    println("     n - Number of points being interpolated")
    println("     t - Singular point to evaluate in the interpolated polynomial")
end