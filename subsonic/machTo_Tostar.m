    %non adiabatic flow
    val = double(input("Enter a value of To/To*: "));
    machNums = [0 0];
    llim = 0;
    ulim = 1;
    mach_test = 0.5;
    count1 = 0;
    while abs(((To2_o1(1, mach_test)-val)/val)) > 0.00001
        if To2_o1(1, mach_test) > val
            ulim = ulim-(ulim-llim)/2;
        elseif To2_o1(1, mach_test) < val
            llim = llim+(ulim-llim)/2;
        end
        mach_test = (llim+ulim)/2;
        count1 = count1 +1;
    end
    machNums(1) = mach_test;
    
    
    if val>0.5
        llim = 1;
        ulim = 51;
        mach_test = 26;
        count2 = 0;
        while abs(((To2_o1(1, mach_test)-val)/val)) > 0.00001
          if To2_o1(1, mach_test) > val
              llim = llim+(ulim-llim)/2;
          elseif To2_o1(1, mach_test) < val
              ulim = ulim-(ulim-llim)/2;
          end
            mach_test = (llim+ulim)/2;
            count2 = count2 +1;
        end
        machNums(2) =  mach_test;
    end
    disp("Subsonic Mach Number is : " + machNums(1));
    
    if val>0.5
        disp("Supersonic Mach Number is : " + machNums(2));
    else
        disp("Value of To/To* too low to calculate Supersonic Mach Number");
    end