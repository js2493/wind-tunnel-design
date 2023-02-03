presA1 = pres0(2)./((ToT(machsA(1:361))).^(1.4./0.4));
presA2 = pres0(6)./((ToT(machsA(362:end))).^(1.4./0.4));

presA = [presA1 presA2];
clear presA1;
clear presA2;

plot(xvals(1:361),presA(1:361),"LineWidth",1);
hold on
plot(xvals(362:end),presA(362:end),"LineWidth",1);
grid on
grid minor
legend("Pre-Shock","Post-Shock");
xlim([0 5.6]);
title("Pressure Along Supersonic Wind Tunnel");
ylabel("Pressure (Pa)");
xlabel("Distance from Fan (meters)");
hold off