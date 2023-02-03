function f = Po_Pstar(M)
   gamma = 1.4;
   f = (1/M)*((2+(gamma-1)*M^2)/(gamma+1))^((gamma+1)/(2*gamma-2));
   clear gamma;
   %friction flow
end

