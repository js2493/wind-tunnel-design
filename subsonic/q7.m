xvalsEnt = 0:0.01:2;
yvalsEnt = 0.0625.*(2-xvalsEnt).^3 + 0.1637.*(2-xvalsEnt).^2 + 0.5;
xvalsTest = 2.01:0.01:3.99;
yvalsTest = 0.5.*ones(1,199);
xvalsEx = 4:0.01:7;
yvalsEx = 0.5 + 0.0271.*(xvalsEx-4).^3 + 0.111.*(xvalsEx-4).^2;

xvals = [xvalsEnt xvalsTest xvalsEx];
yvals = [yvalsEnt yvalsTest yvalsEx];

plot(xvals,yvals,"LineWidth", 2);
xlabel("X Distance from Fan (meters)");
ylabel("Half Height (meters)");
title("Wind Tunnel Height vs Distance Along Wind Tunnel");

ylim([0 2.4])
clear xvalsEnt;
clear yvalsEnt;
clear xvalsTest;
clear yvalsTest;
clear xvalsEx;
clear yvalsEx;

