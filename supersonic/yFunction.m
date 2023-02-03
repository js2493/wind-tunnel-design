xvals = 0:0.01:11.6;

yvals1 = 0:400;
for c = 0:400
    
    yvals1(c+1) = (c/100)^3/64 - (3*(c/100)^2)/32 + 12961/19998;
end

yvals2 = 0:100;
for c = 400:500
    
    yvals2(c-399) = (4075*((c/100) - 4)^2)/13332 - (4075*((c/100) - 4)^3)/19998 + 1481/9999;
end

yvals3 = 0:150;
for c = 500:650
    yvals3(c-499) = .25;
end

yvals4 = 0:10;
for c = 650:660
    
    yvals4(c-649) = (3*((c/100) - 13/2)^2)/4 - 5*((c/100) - 13/2)^3 + 1/4;

end

yvals5 = 0:200;
for c = 660:1160
    
    yvals5(c-659) = (9*((c/100) - 33/5)^2)/100 - (3*((c/100) - 33/5)^3)/250 + 101/400;

end

plot(xvals(561),yvals4(end),"rx", "LineWidth", 5);
hold on
plot(xvals(1:401),yvals1,"LineWidth",1);
plot(xvals(401:501),yvals2,"LineWidth",1);
plot(xvals(501:651),yvals3,"LineWidth",1);
plot(xvals(651:661),yvals4,"LineWidth",1);
plot(xvals(661:1161),yvals5,"LineWidth",1);

title("Half-Height y(x) Along Supersonic Wind TunneL");
legend("Location of Shock")
xlabel("Distance from Fan (meters)");
ylabel("Half Height (meters)");
xlim([0 11.6]);


grid on
grid minor
hold off
