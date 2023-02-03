
    areaRatio = yvals(362:end)./Astar_shock; %values of A/A*
    gamma = 1.4;
    
    syms a b;
    eqn = a == (b)*((2/(gamma+1))*(1+((gamma-1)/2)*b^2))^(-1*((gamma+1)/(2*gamma-2)));
    %a is q(M), b is M
    
    machVals = [0;0];
    for c = 1:200
        qM = 1./areaRatio(c); %values of q(M)
        eqn = a == (b)*((2/(gamma+1))*(1+((gamma-1)/2)*b^2))^(-1*((gamma+1)/(2*gamma-2)));
        eqn = subs(eqn, a, qM);
        x = solve(eqn, b);
        x = double(x);
        x = real(x(1:2));
        machVals = [machVals x];
%         if(c<201 | c>250)
%         machsA(c) = real(x(1));
%         elseif c>=201 && c<=250
%         machsA(c) = real(x(2));
%         elseif c<=350
%         machsA(c) = 2;
%         end
    end

    machVals = machVals(1:2,2:end);

    
    