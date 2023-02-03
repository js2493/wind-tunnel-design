function f = massflow(StagPressure,StagTemperature,MachNumber,Area)
 f = 0.6847.*StagPressure./sqrt(StagTemperature.*287).*q(MachNumber).*Area;
end

%input stagnation pressure in Pa, stagnation temp in K, 
%mach number, area in m^2

%output mass flow in kg/s
