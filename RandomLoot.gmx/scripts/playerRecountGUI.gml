///playerRecountGUI
///Set the new ammo params etc
if (weaponType == WEAPON_TYPE.__RANGE)
{
    switch (weapon)
    {
    case WEAPONS.__STEEL_RUFF:
        oGameGUI.ammoGUI = -1; // chainsaws
        break;
    default:
        oGameGUI.ammoGUI = weaponInf[W_PR.__BULLET_TYPE];
        break;
    }
    oGameGUI.abrow = max(35, round(weaponInf[W_PR.__SCORE_SIZE] / 3));
    with (oGameGUI)
    {
        //SWITCH ADD AMMO
        switch (ammoGUI)
        {
        case -1: break;
        case AMMO.__SHOTGUN: break;
        case AMMO.__BULLET: break;
        case AMMO.__ROCKET: break;
        case AMMO.__GRENADES: break;
        case AMMO.__ENERGY: break;
        case AMMO.__BORIAN: break;    
        default: // no gui for ammo
            ammoGUI = AMMO.__NONE;
            break;
        }
    }
}
else
    ammoGUI = AMMO.__NONE;
