///pickupableInit(PICKUP, [WEAPONS.__])
type = argument[0];
// SWITCH ADD PICKUP
switch (type)
{
case PICKUP.__WEAPON:
    value = argument[1];
    switch (value)
    {
    case WEAPONS.__BLOOD_FLAG:
        sprite_index = sBloodFlag; 
        image_angle = 270;
        break;
    case WEAPONS.__HALFSWORD:
        sprite_index = sHalfsword; 
        image_angle = -45;
        break;
    case WEAPONS.__COPPER_DEVIL:
        sprite_index = sCopperDevil; 
        image_angle = -45;
        break;
    case WEAPONS.__STICK:
        sprite_index = sStick; 
        image_angle = 60;
        break;
    case WEAPONS.__ARIA_ARTH:
        sprite_index = sAriaArthef; 
        image_angle = 60;
        break;

    
    case WEAPONS.__POMPINGTON:
        sprite_index = sPompington; 
        ammo = argument[2];
        break;
    case WEAPONS.__RXP:
        sprite_index = sRXP; 
        ammo = argument[2];
        break;
    case WEAPONS.__RECT1:
        sprite_index = sRECT1; 
        ammo = argument[2];
        break;
    case WEAPONS.__ROMAN_MG:
        sprite_index = sRomanMG; 
        ammo = argument[2];
        break;
    case WEAPONS.__NOVA_M:
        sprite_index = sNovaM; 
        ammo = argument[2];
        break;
    case WEAPONS.__BORIAN_BULG:
        sprite_index = sBorianBulg; 
        ammo = argument[2];
        break;
    }
    break;
    
case PICKUP.__AMMO:
    value = argument[1];
    ammo = argument[2];
    break;
}

