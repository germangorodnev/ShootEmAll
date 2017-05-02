//SWITCH ADD WEAPON_ATTACK_TYPE
animCnt = 1;
switch (attackType)
{
case WEAPON_ATTACK_TYPE.__DOWN_TIMER_UP:
    switch (oPlayer.weapon)
    {
    case WEAPONS.__ARIA_ARTH:  //sAriaArthef
        animCnt = 3;  
        // 1st
        angleNeedDown[0] = -25; 
        angleNeedUp[0] = 0;
        anOffXNeed[0] = 15; anOffXSpd[0] = 2.5;
        anOffYNeed[0] = -24; anOffYSpd[0] = 2.5;
        angleRotDown[0] = 35;
        angleRotUp[0] = 35;
        // 2nd
        angleNeedDown[1] = -60; 
        angleNeedUp[1] = 0;
        anOffXNeed[1] = 16; anOffXSpd[1] = 2.5;
        anOffYNeed[1] = -17; anOffYSpd[1] = 2.5;
        angleRotDown[1] = 35;
        angleRotUp[1] = 35;
        // 3rd
        angleNeedDown[2] = -115; 
        angleNeedUp[2] = 0;
        anOffXNeed[2] = 4; anOffXSpd[2] = 2.5;
        anOffYNeed[2] = 0; anOffYSpd[2] = 2.5;
        angleRotDown[2] = 35;
        angleRotUp[2] = 35;
        break;
    case WEAPONS.__BLOOD_FLAG: 
        animCnt = 2;   
        // 1st
        angleNeedDown[0] = -115; 
        angleNeedUp[0] = 0;
        anOffXNeed[0] = 0; anOffXSpd[0] = 0;
        anOffYNeed[0] = 0; anOffYSpd[0] = 0;
        angleRotDown[0] = 25;
        angleRotUp[0] = 25;
        // 2nd
        angleNeedDown[1] = -15; 
        angleNeedUp[1] = 0;
        anOffXNeed[1] = 0; anOffXSpd[1] = 0;
        anOffYNeed[1] = 0; anOffYSpd[1] = 0;
        angleRotDown[1] = 25;
        angleRotUp[1] = 25;
        break;
    }
    break;
    
case WEAPON_ATTACK_TYPE.__DOWN_UP:
    switch (oPlayer.weapon)
    {
    case WEAPONS.__HALFSWORD:    
        angleNeedDown[0] = -90;
        angleRotDown[0] = 22;
        
        angleNeedUp[0] = 0;
        angleRotUp[0] = 15;
        break;
    case WEAPONS.__COPPER_DEVIL:    
        angleNeedDown[0] = -90;
        angleRotDown[0] = 22;
        
        angleNeedUp[0] = 0;
        angleRotUp[0] = 15;
        break;
    case WEAPONS.__STICK:    
        angleNeedDown[0] = -120;
        angleRotDown[0] = 22;
        
        angleNeedUp[0] = 0;
        angleRotUp[0] = 18;
        break;    
    }
    break;
}



