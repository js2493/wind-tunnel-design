To4 = 293.8589329;
temp = To4./(1+0.4/2.*machs.^2);
plot(xvals,temp,'LineWidth', 1.5);
ylim([260 300]);
grid on;
xlabel("Distance From Fan Along Wind Tunnel (meters)");
ylabel("Static Temperature (K)");
title("Static Temperature of Flow in Wind Tunnel");