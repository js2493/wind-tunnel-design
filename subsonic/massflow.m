function f = massflow(StagPressure,StagTemperature,MachNumber,Area)
 f = 0.6847*StagPressure/sqrt(StagTemperature*287)*q(MachNumber)*Area;
end
