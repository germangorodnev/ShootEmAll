///gameEffectCreate(x, y, efftype, [...])
switch (argument[2])
{
case EFFECTS.__BULLET_WZHUH:
    var dd = argument[3],
        partSys = gamePsysCreate(1, 80),
        xx = argument[0],
        yy = argument[1];
    part_system_depth(partSys, dd);
    
    var em = part_emitter_create(partSys);
    part_emitter_region(partSys, em, xx, xx, yy, yy, ps_shape_rectangle, ps_distr_gaussian);
    part_emitter_burst(partSys, em, global.bwzhuh, 1);

    part_emitter_destroy(partSys, em);
    //gamePsysDelete(partSys);
    break;
    
case EFFECTS.__LASER_GREEN_WZHUH:
    var dd = argument[3], // depth
        partSys = gamePsysCreate(1, 80),
        xx = argument[0],
        yy = argument[1];
    part_system_depth(partSys, dd);
    
    var em = part_emitter_create(partSys);
    part_emitter_region(partSys, em, xx, xx, yy, yy, ps_shape_rectangle, ps_distr_gaussian);
    part_emitter_burst(partSys, em, global.lasergreen, 1);

    part_emitter_destroy(partSys, em);
    //gamePsysDelete(partSys);
    break;
    
case EFFECTS.__LASER_RED_WZHUH:
    var dd = argument[3], // depth
        partSys = gamePsysCreate(1, 80),
        xx = argument[0],
        yy = argument[1];
    part_system_depth(partSys, dd);
    
    var em = part_emitter_create(partSys);
    part_emitter_region(partSys, em, xx, xx, yy, yy, ps_shape_rectangle, ps_distr_gaussian);
    part_emitter_burst(partSys, em, global.lasergreen, 1);

    part_emitter_destroy(partSys, em);
    //gamePsysDelete(partSys);
    break;
}
/*///gameEffectCreate(x, y, efftype, [...])
switch (argument[2])
{
case EFFECTS.__BULLET_WZHUH:
    var dd = argument[3],
        partSys = gamePsysCreate(),
        xx = argument[0],
        yy = argument[1];
    part_system_depth(partSys, dd);
    
    var em = part_emitter_create(partSys);
    part_emitter_region(partSys, em, xx, xx, yy, yy, ps_shape_rectangle, ps_distr_gaussian);
    part_emitter_burst(partSys, em, global.bwzhuh, 1);

    part_emitter_destroy(partSys, em);
    gamePsysDelete(partSys);
    break;
    
case EFFECTS.__LASER_GREEN_WZHUH:
    var dd = argument[3], // depth
        partSys = gamePsysCreate(),
        xx = argument[0],
        yy = argument[1];
    part_system_depth(partSys, dd);
    
    var em = part_emitter_create(partSys);
    part_emitter_region(partSys, em, xx, xx, yy, yy, ps_shape_rectangle, ps_distr_gaussian);
    part_emitter_burst(partSys, em, global.lasergreen, 1);

    part_emitter_destroy(partSys, em);
    gamePsysDelete(partSys);
    break;
}
