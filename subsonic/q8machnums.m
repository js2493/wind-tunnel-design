    load data;
    areaRatio = yvals*2*1.1882; %values of A/A*
    gamma = 1.4;
    
    syms a b;
    eqn = a == (b)*((2/(gamma+1))*(1+((gamma-1)/2)*b^2))^(-1*((gamma+1)/(2*gamma-2)));
    %a is q(M), b is M
    
    machs = 1:701; %starting at 0 meters, ending at 7 meters with gap of 0.01 meters
    
    for c = 1:701
        qM = 1./areaRatio(c); %values of q(M)
        eqn = a == (b)*((2/(gamma+1))*(1+((gamma-1)/2)*b^2))^(-1*((gamma+1)/(2*gamma-2)));
        eqn = subs(eqn, a, qM);
        x = solve(eqn, b);
        x = double(x);
        x = x(1);
        machs(c) = real(x);
    end

    
    
    