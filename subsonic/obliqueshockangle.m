
    gamma1 = 1.4;
    syms a b m1;
    eqn = tan(a) == 2*cot(b)*((m1^2*(sin(b))^2-1)/(m1^2*(gamma1+cos(2*b))+2));
    theta = double(input("Enter a value of theta: "));
    mach1 = double(input("Enter a value of M1*: "));
    if theta > pi
       theta = deg2rad(theta);
    end
    eqn = subs(eqn,a,theta);
    eqn = subs(eqn,m1,mach1);
    x = vpasolve(eqn,b);
    x = double(x);
    disp(x);
    

    
    
    