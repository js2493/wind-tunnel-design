function f = To2_o1(m1,m2)
   gamma = 1.4;
   f = (((1+gamma*m1^2)/(1+gamma*m2^2))^2)*((m2/m1)^2)...
       *((1+(gamma-1)/2*m2^2)/(1+(gamma-1)/2*m1^2));
   clear gamma;
   %non adiabatic flow
end

%input mach numbers at point 1 and 2

%output ratio of stagnation temperature between point 2 and 1
%use m1 = 1 for To/To*