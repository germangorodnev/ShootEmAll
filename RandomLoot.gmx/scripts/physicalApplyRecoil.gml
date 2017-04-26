///physicalApplyRecoil(recoilSpd, direction)
var rec = argument[0],
    dir = argument[1];
if (!recoilApply)
    exit;
recoilApply--;
hspd += floor(lengthdir_x(rec, dir));
vspd += floor(lengthdir_y(rec, dir));
