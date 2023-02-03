velocity = machs.*sqrt(1.4*287.*temp);
plot(xvals,velocity,'LineWidth', 1.5);
ylim([0 220]);
grid on;
xlabel("Distance From Fan Along Wind Tunnel (meters)");
ylabel("Fluid Velocity (m/s)");
title("Velocity of Flow in Wind Tunnel");