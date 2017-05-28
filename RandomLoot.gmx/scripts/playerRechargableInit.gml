// set params of new rechargable item
switch (rechargable)
{
case RECHARGABLE.__LASER_MINE:
    rechargablePar[0] = sLaserMine;
    rechargablePar[1] = 2 * room_speed; // max timer in steps
    break;
case RECHARGABLE.__DYNAMITE:
    rechargablePar[0] = sDynamite;
    rechargablePar[1] = 2 * room_speed; // max timer in steps
    break;
case RECHARGABLE.__STICKY_GRENADE:
    rechargablePar[0] = sStickyGrenade;
    rechargablePar[1] = 2 * room_speed; // max timer in steps
    break;
case RECHARGABLE.__BOOMERANG:
    rechargablePar[0] = sBoomerang;
    rechargablePar[1] = 2 * room_speed; // max timer in steps
    break;
}
rechargablePar[2] = rechargablePar[1];
oGameGUI.rew = sprite_get_width(rechargablePar[0]);
oGameGUI.reh = sprite_get_height(rechargablePar[0]);
oGameGUI.rexoff = sprite_get_xoffset(rechargablePar[0]);
oGameGUI.reyoff = sprite_get_yoffset(rechargablePar[0]);

