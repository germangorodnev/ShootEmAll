///physicalApplyRecoil(recoilSpd, direction)
if (!recoilApply)
    exit;
var rec = argument[0],
    dir = argument[1];
if (recoilTmr && !--recoilTmr)
    recoilApply = 0;
recoilSpd = approach(recoilSpd, 0, recoilFric);
hspd += (lengthdir_x(rec, dir));
vspd += (lengthdir_y(rec, dir));
