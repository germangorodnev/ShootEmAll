///physicalSetRecoil(spd, dir, [fric = stdfric])
recoilApply = 1;
recoilTmr = 5;
recoilSpd = argument[0]; // WARNING
recoilDir = argument[1];
if (argument_count > 2)
    recoilFric = argument[2];
if (argument_count > 3)
    recoilTmr = argument[3];
