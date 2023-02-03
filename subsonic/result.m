
    gamma = 1.4;
    syms a b;
    eqn = a == (b)*((2/(gamma+1))*(1+((gamma-1)/2)*b^2))^(-1*((gamma+1)/(2*gamma-2)));
    angles = 0:35;
    tanAng = tand(angles);
    areas = 6.*tanAng+1;
    areaRatio = areas.*1.1882;
    
    machs = 1:36;
    for c = 1:36
    qs = areaRatio(c);
    eqn = a == (b)*((2/(gamma+1))*(1+((gamma-1)/2)*b^2))^(-1*((gamma+1)/(2*gamma-2)));
    eqn = subs(eqn,a,1./qs);
    x = solve(eqn,b);
    x = double(x);
    x = x(1);
    machs(c) = real(x);
    end
    
    standTemp = (1+0.4/2.*machs.^2).^(-1);
    losses = (machs.^2).*standTemp;
    standLoss = losses./losses(end);
    results = [angles;areas;areaRatio;machs;standTemp;standLoss];
    
  


    
    
    