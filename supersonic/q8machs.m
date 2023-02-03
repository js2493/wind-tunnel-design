plot(xvals(1:361),machsA(1:361),"LineWidth",1);
hold on
plot(xvals(362:end),machsA(362:end),"LineWidth",1);
grid on
grid minor
legend("Pre-Shock","Post-Shock");
xlim([0 5.6]);
ylim([0 2.2]);
title("Mach Number Along Supersonic Wind Tunnel");
ylabel("Mach Number");
xlabel("Distance from Fan (meters)");
hold off