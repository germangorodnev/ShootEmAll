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
    case WEAPONS.__POMPINGTON:
        sprite_index = sPompington; 
        break;
    }
    break;
}
