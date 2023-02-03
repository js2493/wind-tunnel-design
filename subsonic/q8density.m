po4 = 1.204328093;
density = po4.*(1+0.4/2.*machs.^2).^(-1/0.4);
plot(xvals,density,'LineWidth', 1.5);
ylim([0.95 1.25]);
grid on;
xlabel("Distance From Fan Along Wind Tunnel (meters)");
ylabel("Static Density (kg/m^3)");
title("Static Density of Flow in Wind Tunnel");