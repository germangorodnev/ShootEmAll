///playerRecountGUI
///Set the new ammo params etc
if (weaponType == WEAPON_TYPE.__RANGE)
{
    oGameGUI.ammoGUI = weaponInf[W_PR.__BULLET_TYPE];
    with (oGameGUI)
    {
        //SWITCH ADD AMMO
        switch (ammoGUI)
        {
        case AMMO.__SHOTGUN:
        
            break;
        case AMMO.__BULLET:
        
            break;
        case AMMO.__ROCKET:
        
            break;
        case AMMO.__GRENADES:
        
            break;
        case AMMO.__ENERGY:
        
            break;
            
        default: // no gui for ammo
            ammoGUI = AMMO.__NONE;
            break;
        }
    }
}
else
    ammoGUI = AMMO.__NONE;
