mfr = gamma.*(yvals.*2)./areaRatio.*(Po4/sqrt(R*To4));
plot(xvals,mfr,'LineWidth', 1.5);
ylim([202.5 203]);
grid on;
xlabel("Distance From Fan Along Wind Tunnel (meters)");
ylabel("Mass Flow Rate (kg/s)");
title("Mass Flow Rate in Wind Tunnel");