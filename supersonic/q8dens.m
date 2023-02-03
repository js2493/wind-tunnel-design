densA = presA./(8314/28.97.*temps);


plot(xvals(1:361),densA(1:361),"LineWidth",1);
hold on
plot(xvals(362:end),densA(362:end),"LineWidth",1);
grid on
grid minor
legend("Pre-Shock","Post-Shock");
xlim([0 5.6]);
title("Density Along Supersonic Wind Tunnel");
ylabel("Density (kg/m^3)");
xlabel("Distance from Fan (meters)");
hold off