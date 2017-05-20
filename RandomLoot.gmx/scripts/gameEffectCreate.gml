///gameEffectCreate(x, y, efftype, [...])
switch (argument[2])
{
case EFFECTS.__BULLET_WZHUH:
    var dd = argument[3],
        psys = gamePsysCreate(),
        xx = argument[0],
        yy = argument[1];
    part_system_depth(psys, dd);
    
    var em = part_emitter_create(psys);
    part_emitter_region(psys, em, xx, xx, yy, yy, ps_shape_rectangle, ps_distr_gaussian);
    part_emitter_burst(psys, em, global.bwzhuh, 1);

    part_emitter_destroy(psys, em);
    gamePsysDelete(psys);
    break;
    
case EFFECTS.__LASER_GREEN_WZHUH:
    var dd = argument[3], // depth
        psys = gamePsysCreate(),
        xx = argument[0],
        yy = argument[1];
    part_system_depth(psys, dd);
    
    var em = part_emitter_create(psys);
    part_emitter_region(psys, em, xx, xx, yy, yy, ps_shape_rectangle, ps_distr_gaussian);
    part_emitter_burst(psys, em, global.lasergreen, 1);

    part_emitter_destroy(psys, em);
    gamePsysDelete(psys);
    break;
}
