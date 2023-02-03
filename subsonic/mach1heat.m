syms f m1 m2
gamma = 1.4;
eqn = f == (((1+gamma*m1^2)/(1+gamma*m2^2))^2)*((m2/m1)^2)*((1+(gamma-1)/2*m2^2)/(1+(gamma-1)/2*m1^2));
eqn = subs(eqn,f,4.764);
eqn = subs(eqn,m2,0.5);

eqn = double(solve(eqn,m1));
disp(eqn);