if (os_type == os_android)
{
    cursor_sprite = -1;
    with (oAndroidButtonBase)
        instance_destroy();
    var ww = sprite_get_width(sAndroidButtons),
        hh = sprite_get_height(sAndroidButtons);
    global.andrMove = instance_create(0, 0, oAndroidJoystickMove);

    global.andrRotate = instance_create(0, 0, oAndroidJoystickRotate);
    
    global.andrAttack = instance_create(global.guiW - ww / 2 - 15, global.guiH / 2, oAndroidButtonAttack);
    //global.andrE = instance_create(global.guiW - ww / 2 - 2, hh / 2 + 2, oAndroidButtonPickup);
}
