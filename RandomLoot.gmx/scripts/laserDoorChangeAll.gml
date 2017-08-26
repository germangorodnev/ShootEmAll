///laserDoorChangeAll(close)
with (oLevelDoor)
{
    block = argument[0];
    var lvl = oLevel.level,
    collvl = oLevel.colLevel;
    if (block)
    {
        // set grid
        lvl[# xr, yr] |= LEVEL.WALL;
        mp_grid_add_cell(oLevel.levelPf, xr, yr);
        levelTileMark(xr, yr, tileType);
    }
    else
    {
        lvl[# xr, yr] &= ~LEVEL.WALL;
        mp_grid_clear_cell(oLevel.levelPf, xr, yr);
        //levelTileMark(xr, yr, tileType);
    }
}
