%tempA = temp0(2)./(ToT(machsA(1:end)));


plot(xvals(1:361),temps(1:361),"LineWidth",1);
hold on
plot(xvals(362:end),temps(362:end),"LineWidth",1);
grid on
grid minor
legend("Pre-Shock","Post-Shock");
xlim([0 5.6]);
ylim([170 330]);

title("Temperature Along Supersonic Wind Tunnel");
ylabel("Temperature (K)");
xlabel("Distance from Fan (meters)");
hold off