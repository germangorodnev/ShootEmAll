///abilityAdd(ABILITIES.__ new)
var pos = abilCount++;
abils[pos] = argument[0];
abilsTmr[pos] = -1;
switch (argument[0])
{
case ABILITIES.__DASH:
    abilsTmrCnt[pos] = room_speed;
    abilsIco[pos] = 1;
    abilsParams[0] = 180; // distance
    abilsParams[1] = 5; // speed
    psysfloor = global.pse;
    abilsParams[2] = part_emitter_create(psysfloor); // main 10 depth
    break;
}
