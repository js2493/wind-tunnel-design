velA = machsA.*sqrt(1.4*8314/28.97.*temps);


plot(xvals(1:361),velA(1:361),"LineWidth",1);
hold on
plot(xvals(362:end),velA(362:end),"LineWidth",1);
grid on
grid minor
legend("Pre-Shock","Post-Shock");
xlim([0 5.6]);
title("Velocity Along Supersonic Wind Tunnel");
ylabel("Velocity (m/s)");
xlabel("Distance from Fan (meters)");
hold off