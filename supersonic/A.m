function f = A(M)
    gamma = 1.4;
    f = 1/((M)*((2/(gamma+1))*(1+((gamma-1)/2)*M^2))^(-1*((gamma+1)/(2*gamma-2))));
    %input mach number
    %output A/A* for given mach number
end

