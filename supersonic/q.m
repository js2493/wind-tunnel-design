function f = q(M)
    gamma = 1.4;
    f = (M).*((2./(gamma+1)).*(1+((gamma-1)./2).*M.^2)).^(-1.*((gamma+1)./(2.*gamma-2)));
end

%input mach number of flow

%output q(M), the mass flow function