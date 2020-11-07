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

function PlotInterpolation(a,b,x,y,n)
    
    xvalues = [a:0.1:b;];
    yvalues = [a:0.1:b;];
    length = size(xvalues,1)
    
    for i = 1:length
        yvalues[i] = p(xvalues[i],x,y,n)
    end
    
    plot(xvalues,yvalues)
end