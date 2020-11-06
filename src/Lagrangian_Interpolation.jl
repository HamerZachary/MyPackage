using Plots

function l(j,t,n)
    prod = 1.0
    
    for i = 1:n
        
        if(i != j)
            prod = prod*(t-x[i])/(x[j]-x[i])
        end
    end
    
    return prod
end

function p(t,n)
    r = 0.0
    
    for j = 1:n
        try
            r = r + y[j]*l(j,t,n)
        catch error
            if isa(error,UndefVarError)
                println("Arrays of points are not defined.")
                println("Please define arrays of points as follows:")
                println("")
                println("x = [x1,x2,x3,...,xn]")
                println("y = [y1,y2,y3,...,yn]")
                println("")
                prinlnt("Please note, variables must be x[] and y[] to use this method. Any other labeled array will not work.")
                return 0.0
                break
            end
        end
    end
    
    return r
end

function PlotInterpolatedPolynomial(a,b)
    print = 1
    
    try
        xvalues = [a:0.1:b]
        yvalues = p.(xvalues)
        
    catch error
        if isa(error,UndefVarError)
            println("Unable to construct the y values of the interpolated polynomial.")
            println("Please check to see if appropriate arrays are defined.")
            print = 0
        end
    end
    
    if (print = 1)
        plot(xvalues,yvalues)
    end
end