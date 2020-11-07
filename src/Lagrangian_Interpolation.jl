using Plots

function l(j,t,x,n)
    prod = 1.0
    
    for i = 1:n
        
        if(i != j)
            prod = prod*(t-x[i])/(x[j]-x[i])
        end
    end
    
    return prod
end

function p(t,x,y,n)
    r = 0.0
    
    for j = 1:n
        r = r + y[j]*l(j,t,x,n)
    end
    
    return r
end

function PlotInterpolatedPolynomial(a,b,x,y,n)
    print = 1
    
    xvalues = [a:0.1:b;]
    yvalues = p.(xvalues,x,y,n)
    
    plot(xvalues,yvalues)
end