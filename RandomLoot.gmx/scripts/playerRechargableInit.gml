// set params of new rechargable item
switch (rechargable)
{
case RECHARGABLE.__LASER_MINE:
    rechargablePar[0] = sLaserMine;
    rechargablePar[1] = 2 * room_speed; // max timer in steps
    break;
}
rechargablePar[2] = rechargablePar[1];
oGameGUI.rew = sprite_get_width(rechargablePar[0]);
oGameGUI.reh = sprite_get_height(rechargablePar[0]);

