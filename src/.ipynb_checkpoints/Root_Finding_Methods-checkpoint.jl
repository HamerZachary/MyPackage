function Bisection(a,b,f)
    
    left = a
    right = b
    mid = (a+b)/2
    temp = 0
    
    for i = 1:1000
        y1 = abs(f(left))
        y2 = abs(f(right))

        
        if((y2-y1) >= 0)
            temp = right
            right = mid
            mid = (left+right)/2
        end
        
        if((y2-y1) < 0)
            right = temp
            left = mid
            mid = (left+right)/2
        end
        
        if(right-left < 1e-7)
            if(f(mid) < -1e-5 || f(mid) > 1e-5)
                println("Root not found in the interval provided")
                break;
            else
                println("Root found in ", i, " iterations.")
                println("Root: ", mid)
                break
            end
        end 
    end
end

function SingleRootSecant(x0,x1,f)
    xnm1 = x1
    xnm2 = x0
    root = 0
    prnt = 0
    iterations = 1000
    
    for i = 1:iterations
        
        xn = ((xnm2*f(xnm1))-(xnm1*f(xnm2)))/(f(xnm1)-f(xnm2))
             
        if(xn == xnm1)
            println("Root found in ", i, " iterations.")
            root = xn
            prnt = 1
            break
        else
            xnm2 = xnm1
            xnm1 = xn
        end
        
        if(i == iterations-1 & (xn != xnm1))
            println("Root not found in ", i, " iterations.")
        end
        
    end
    
    if(prnt != 0)
        println("Root: ", root)
    end
    
end

function DoubleRootSecant(x0,x1,f)
    xnm1 = x1
    xnm2 = x0
    root1 = 0
    print = 1
    
    for i = 1:1000
        
        xn = ((xnm2*f(xnm1))-(xnm1*f(xnm2)))/(f(xnm1)-f(xnm2))

            
        if(xn == xnm1)
            root1 = xn
            break
        else
            xnm2 = xnm1
            xnm1 = xn
        end
        
    end
    
    
    root2 = root1
    y1 = f(root1+1)
    y2 = f(root1-1)
    factor = 10
    
    if(y1 > y2)
        
        xnm1 = x1-factor
        xnm2 = x0-factor
        
        while(root2 == root1)
            
            xn = ((xnm2*f(xnm1))-(xnm1*f(xnm2)))/(f(xnm1)-f(xnm2))
            
            if(xn == xnm1)
                root2 = xn
                
                if(root2 == root1)
                    factor = factor + 10
                    xnm1 = x1-factor
                    xnm2 = x0-factor
                end
            else
                xnm2 = xnm1
                xnm1 = xn
            end
        end
    end
            
    
    if(y1 < y2)
        
        xnm1 = x1+factor
        xnm2 = x0+factor
        
        while(root2 == root1)
            
            xn = ((xnm2*f(xnm1))-(xnm1*f(xnm2)))/(f(xnm1)-f(xnm2))
            
            if(xn == xnm1)
                root2 = xn
                
                if(root2 == root1)
                    factor = factor + 10
                    xnm1 = x1+factor
                    xnm2 = x0+factor
                end
            else
                xnm2 = xnm1
                xnm1 = xn
            end
        end
    end
          
    if (print == 1)
        println("")
        println("Root 1: ", root1)
        println("Root 2: ", root2)
    end
end

function Newton(x0,f,g)
    xn = x0
    iterations = 1000
    
    for i = 1:iterations
        

        xnp1 = xn - (f(xn)/g(xn))

            
        if(abs(xnp1-xn) < 1e-7)
            println("Root found in ", i ," iterations")
            println("Root: ", xnp1)
            break
        else
            xn = xnp1
        end
        
        if(i == iterations-1 & (abs(xnp1-xn) > 1e-7))
            println("Root not found in ", i, " iterations.")
        end
    end
end