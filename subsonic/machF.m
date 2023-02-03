
    %friction flow
    val = double(input("Enter a value of 4fl/D: "));
    machNums = [0 0];
    llim = 0;
    ulim = 1;
    testM = 0.5;
    count1 = 0;
    while abs(((flD(testM)-val)/val)) > 0.0000000001
        if flD(testM) > val
            llim = llim+(ulim-llim)/2;
        elseif flD(testM) < val
            ulim = ulim-(ulim-llim)/2;
        end
        testM = (llim+ulim)/2;
        count1 = count1 +1;
    end
    machNums(1) = testM;
    
    if val<0.821
        llim = 1;
        ulim = 501;
        testM = 251;
        count2 = 0;
        while abs(((flD(testM)-val)/val)) > 0.0000000001
          if flD(testM) > val
              ulim = llim+(ulim-llim)/2;
          elseif flD(testM) < val
                llim = llim+(ulim-llim)/2;
          end
            testM = (llim+ulim)/2;
            count2 = count2 +1;
        end
        machNums(2) = testM;
    end
    disp("Subsonic Mach Number is : " + machNums(1));
    
    if val<0.821
        disp("Supersonic Mach Number is : " + machNums(2));
    else
        disp("Value of 4fL/D too high to calculate Supersonic Mach Number");
    end