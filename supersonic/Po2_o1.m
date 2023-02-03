function f = Po2_o1(m1,m2)
   gamma = 1.4;
   f = ((1+gamma*m1^2)/(1+gamma*m2^2))*((1+(gamma-1)/2*m2^2)/(1+(gamma-1)/2*m1^2))^(gamma/(gamma-1));
   clear gamma;
   %non adiabatic flow
end

%input mach numbers at point 1 and point 2 in non adiabatic flow with
%constant cross section and no friction

%output Po2/Po1 (stagnation pressures)

