
    gamma1 = 1.4;
    syms a b;
    eqn = a == (b)*((2/(gamma1+1))*(1+((gamma1-1)/2)*b^2))^(-1*((gamma1+1)/(2*gamma1-2)));
    qs = double(input("Enter a value of A/A*: "));
    eqn = subs(eqn,a,1./qs);
    x = solve(eqn,b);
    x = double(x);
    if qs ~= 1
        x = x(1:2);
    else
        x = x(1);
    end
     M = real(x);
    if qs ~= 1
     disp("Subsonic Mach Number: " + M(1));
     disp("Supersonic Mach Number: " + M(2));
    else
     disp("Flow is Sonic (Mach Number = 1)");
    end
    

    
    
    