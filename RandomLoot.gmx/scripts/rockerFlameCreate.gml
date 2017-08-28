///rockerFlameCreate(x1, y1, x2, y2, count, dmg, dmgcd, CUCKED, mask activate tmr in steps, mask lifetime, [parent])
var _x1 = argument[0],
    _y1 = argument[1],
    _x2 = argument[2],
    _y2 = argument[3],
    _cnt = argument[4],
    _dmg = argument[5],
    _dmgcd = argument[6],
    _cuck = argument[7],
    _tmr = argument[8],
    _deltmr = argument[9];
part_emitter_region(psysfloor, emitter, _x1, _x2, _y1, _y2, ps_shape_ellipse, ps_distr_linear);
part_emitter_burst(psysfloor, emitter, global.rockerFlame, _cnt); 
// zone
var spm = instance_create(_x1 + abs(_x2 - _x1) div 2, _y1 + abs(_y2 - _y1) div 2, oFloorDamageMask);
spm.image_xscale = 2.5;
spm.image_yscale = 2.5;
spm.par = argument[10];
spm.dmg = _dmg;
spm.dmgcd = _dmgcd;
spm.cuck = _cuck;
spm.group = 1;
spm.activateTmr = _tmr;
spm.deleteTmr = _deltmr;
