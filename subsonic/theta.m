function f = theta(beta,m1)
    gamma = 1.4;
    f = atan2(2*cot(beta)*((m1^2*(sin(beta))^2-1)),m1^2*(gamma+cos(2*beta))+2);
    %returns angle theta with shock angle beta and mach number inputs*
end
