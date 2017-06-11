///playerAbilityUse(pos in arr)
var pos = argument[0],
    abilId = abils[pos];
    
switch (abilId)
{
case ABILITIES.__DASH:
    // set cooldown
    abilsTmr[pos] = abilsTmrCnt[pos];
    playerSetState(PLAYER_STATES.__DASH);
    break;  
case ABILITIES.__HEAL:
    // set cooldown
    abilsTmr[pos] = abilsTmrCnt[pos];
    playerChangeHP(abilsParams[0]);
    break;  
}
