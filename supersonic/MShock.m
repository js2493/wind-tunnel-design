function f = MShock(M)
    gamma = 1.4;
    x = (1+(gamma-1)/2*M^2)/(gamma*M^2-(gamma-1)/2);
    f = sqrt(x);
end

%input mach number before or after normal shock

%output mach number after or before normal shock