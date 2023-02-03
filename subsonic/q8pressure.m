Po4 = 102185.2253;
pressure = Po4.*(1+0.4/2.*machs.^2).^(-1.4/0.4);
plot(xvals,pressure/1000,'LineWidth', 1.5);
ylim([70 105]);
grid on;
xlabel("Distance From Fan Along Wind Tunnel (meters)");
ylabel("Static Pressure (KPa)");
title("Static Pressure of Flow in Wind Tunnel");