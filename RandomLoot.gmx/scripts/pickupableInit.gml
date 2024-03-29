///pickupableInit(PICKUP, [WEAPONS.__])
type = argument[0];
depth = -compareY;
// SWITCH ADD PICKUP
switch (type)
{
case PICKUP.__WEAPON:
    /*
    w class
    -machinegun
    -rifle
    -pistol
    -shotgun
    -launcher
    -unique
    -melee
    */
    value = argument[1];
    _inf = gameGetWeaponInformation(value);
    
    sprite_index = _inf[3];
    name = _inf[0];
    class = _inf[2];
    
    switch (value)
    {
    case WEAPONS.__BLOOD_FLAG:
        sprite_index = sBloodFlag;
        break;
    case WEAPONS.__HALFSWORD:
        sprite_index = sHalfsword; 
        break;
    case WEAPONS.__COPPER_DEVIL:
        sprite_index = sCopperDevil;
        break;
    case WEAPONS.__STICK:
        sprite_index = sStick;
        break;
    case WEAPONS.__ARIA_ARTH:
        sprite_index = sAriaArthef; 
        image_angle = 45;
        break;
    case WEAPONS.__RAZORBLADE:
        sprite_index = sRazorblade; 
        break;
    case WEAPONS.__SPECIAL_PRISONER:
        sprite_index = sSpecialPrisoner; 
        break;
    case WEAPONS.__CEREMONIAL_BORIAN:
        sprite_index = sCeremoniaBorianSword; 
        break;
    case WEAPONS.__KNIFE:
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
    case WEAPONS.__FOREST_MANTIS:
        sprite_index = sForestMantis; 
        ammo = argument[2];
        break;
    case WEAPONS.__OVERKILLINGTON:
        sprite_index = sOverkillington; 
        ammo = argument[2];
        break;
    case WEAPONS.__PHASER:
        sprite_index = sPhaserEmpty; 
        ammo = argument[2];
        break;
    case WEAPONS.__DESTRUCTOR:
        sprite_index = sDestructor; 
        ammo = argument[2];
        break;
    case WEAPONS.__DOUBLE_BARREL:
        sprite_index = sDoubleBarrel; 
        ammo = argument[2];
        break;
    case WEAPONS.__TESLA_BOOM:
        sprite_index = sTeslaBoom; 
        ammo = argument[2];
        break;
    case WEAPONS.__LASER_BEE:
        sprite_index = sLaserBee; 
        ammo = argument[2];
        break;
    case WEAPONS.__BIG_BULG:
        sprite_index = sBigBulg; 
        ammo = argument[2];
        break;
    case WEAPONS.__ASSAULT_RIFLE:
        sprite_index = sPushRifle; 
        ammo = argument[2];
        break;
    case WEAPONS.__STEEL_RUFF:
        sprite_index = sSteelRuff; 
        ammo = argument[2];
        break;
    case WEAPONS.__DARTS:
        sprite_index = sDarts; 
        ammo = argument[2];
        break;
    case WEAPONS.__PISTOPHONE:
        sprite_index = sPistophone; 
        ammo = argument[2];
        break;
    case WEAPONS.__STALK:
        sprite_index = sStalk; 
        ammo = argument[2];
        break;
        
    /* ******************************* CUSTOM ********************************* */
    case WEAPONS.__CUSTOM:
        if (argument[3] == 1)
            gameWeaponCustomInit();
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
    
case PICKUP.__SU_CARDS:
    value = argument[1];
    depth = compareY;
    image_index = value;
    image_angle = -45;
    break;
    
case PICKUP.__RECH_EXPLOSIVES:
    value = argument[1]; // RECHARGABLE.__
    depth = compareY;
    _inf = gameGetRechargableExplosiveInformation(value);
    sprite_index = _inf[2];
    break;
    
case PICKUP.__EAT:
    value = argument[1]; // SINGLEUSE.__
    depth = compareY;
    _inf = gameGetEatableInformation(value);
    sprite_index = _inf[2];
    image_index = _inf[3];
    break;
}

