///playerAbilityUse(pos in arr)
var pos = argument[0],
    abilId = abils[pos],
    ex = 0;
    
switch (abilId)
{
case ABILITIES.__DASH:
    // set cooldown
    abilsTmr[pos] = abilsTmrCnt[pos];
    playerSetState(PLAYER_STATES.__DASH);
    ex = 1;
    break;  
case ABILITIES.__HEAL:
    // set cooldown
    abilsTmr[pos] = abilsTmrCnt[pos];
    playerChangeHP(abilsParams[0]);
    break;  
case ABILITIES.__SPIKES:
    // set cooldown
    abilsTmr[pos] = abilsTmrCnt[pos];
    playerSpikesCreate(x - 60, y - 25, x + 60, y + 25, 
        irandom_range(20, 30), 4, round(.3 * room_speed), CUCKED.__NORMAL,
        round(.3 * room_speed), global.spikeMaskLife);
    break;  
}
return ex;
