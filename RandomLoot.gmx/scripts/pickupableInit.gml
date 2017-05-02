///pickupableInit(PICKUP, [WEAPONS.__])
type = argument[0];
depth = -compareY;
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
        image_angle = 45;
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
    case WEAPONS.__GRENADE_LAUNCHER:
        sprite_index = sOneGL; 
        ammo = argument[2];
        break;
    }
    break;
    
case PICKUP.__AMMO:
    autopickup = 1;
    value = argument[1];
    ammo = argument[2];
    switch (value)
    {
    case AMMO.__BULLET:
        if (ammo == 20)
            sprite_index = sAmmoPickup20;
        else if (ammo == 40)
            sprite_index = sAmmoPickup40;
        break;
    case AMMO.__SHOTGUN:
        if (ammo <= 3)
        {
            sprite_index = sShotgunAmmoPickup;
            image_index = 0;
        }
        else
        {
            sprite_index = sShotgunAmmoPickup;
            image_index = 1;
        }
        break;
    case AMMO.__GRENADES:
        if (ammo <= 1)
        {
            sprite_index = sGrenadeAmmoPickup;
            image_index = 0;
        }
        break;
    case AMMO.__ENERGY:
        if (ammo <= 50)
        {
            sprite_index = sEnergyAmmoPickup;
            image_index = 0;
        }
        else
        {
            sprite_index = sEnergyAmmoPickup;
            image_index = 1;
        }
        break;
    }
    break;
    
case PICKUP.__MONEY:
    autopickup = 1;
    depth = compareY;
    value = argument[1]; // amout of money
    if (value == 1)
    {
        sprite_index = sMoneyPickup;
        image_index = 0;
    }
    else if (value == 2)
    {
        sprite_index = sMoneyPickup;
        image_index = 1;
    }
    else if (value == 10)
    {
        sprite_index = sMoneyPickup;
        image_index = 2;
    }
    else if (value == 100)
    {
        sprite_index = sMoneyPickup;
        image_index = 3;
    }    
    break;  
    
case PICKUP.__HP:
    autopickup = 1;
    depth = compareY;
    value = argument[1];
    if (value == 1)
    {
        sprite_index = sHPPickup;
        image_index = choose(0, 1);
    }
    else
    {
        sprite_index = sHPPickup;
        image_index = 2;
    }
    break;
}

