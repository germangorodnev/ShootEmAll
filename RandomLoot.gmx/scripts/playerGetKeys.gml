for (var i = 0; i < KEY.CNT; i++)
    key[i] = 0;
switch (os_type)
{
case os_win32:
    var mkey = controlBit & CONTROL.__KEYMOUSE,
        mgp = controlBit & CONTROL.__GAMEPAD;

    if ((keyboard_check(ord('A')) * mkey) || (gamepad_axis_value(0, gp_axislh) <= -.4) * mgp)
        key[KEY.LEFT] = 1;
    if ((keyboard_check(ord('D')) * mkey) || (gamepad_axis_value(0, gp_axislh) >= .4) * mgp)
        key[KEY.RIGHT] = 1;
    if ((keyboard_check(ord('W')) * mkey) || (gamepad_axis_value(0, gp_axislv) <= -.4) * mgp)
        key[KEY.TOP] = 1;
    if ((keyboard_check(ord('S')) * mkey) || (gamepad_axis_value(0, gp_axislv) >= .4) * mgp)
        key[KEY.BOT] = 1;
        
    if ((mouse_check_button_pressed(mb_left) * mkey) || (gamepad_button_check_pressed(0, gp_shoulderr) * mgp))
        key[KEY.KICK] = 0;
    else if ((mouse_check_button(mb_left) * mkey) || (gamepad_button_check(0, gp_shoulderr) * mgp))  
        key[KEY.KICK] = 1;
    else if ((mouse_check_button_released(mb_left) * mkey) || (gamepad_button_check_released(0, gp_shoulderr) * mgp))  
        key[KEY.KICK] = 2;
    else
        key[KEY.KICK] = -1;
        
        
    if ((keyboard_check_released(ord('E')) * mkey) || (gamepad_button_check_released(0, gp_face1) * mgp) )
        key[KEY.PICKUP] = 1;
    if ((keyboard_check_released(ord('R')) * mkey) || (gamepad_button_check_released(0, gp_shoulderlb) * mgp) )
        key[KEY.RELOAD] = 1;
    if ((keyboard_check_released(vk_space) * mkey) || (gamepad_button_check_released(0, gp_shoulderrb) * mgp) )
        key[KEY.WEAP_CHANGE] = 1;
    if ((mouse_check_button_pressed(mb_right) * mkey) || (gamepad_button_check_released(0, gp_shoulderl) * mgp) )
        key[KEY.ABIL] = 1;
    if ((keyboard_check_released(ord('F')) * mkey) || (gamepad_button_check_released(0, gp_face2) * mgp) )
        key[KEY.SINGLEUSE_ITEM] = 1;
    if ((keyboard_check_released(ord('Q')) * mkey) || (gamepad_button_check_released(0, gp_face4) * mgp) )
        key[KEY.RECHARGABLE_ITEM] = 1;
    if ((keyboard_check(ord('M')) * mkey) || (gamepad_button_check_released(0, gp_face3) * mgp) )
        key[KEY.MAP] = 1;
    break;
    
/*case os_android:
    var j = oAndroidJoystick;
    if (j.active)
    {
        //if (j.len > j.maxD / 3)
        {
        // quarter
        var q = j.dir / 90;
        if (q == median(0.21, q, 0.79))
        {
            // top right
            key[KEY.RIGHT] = 1;
            key[KEY.TOP] = 1;
        }
        else
        if (q == median(0.8, q, 1.2))
            key[KEY.TOP] = 1;  
       else     
        if (q == median(1.21, q, 1.79))
        {
            // top left
            key[KEY.LEFT] = 1;
            key[KEY.TOP] = 1;
        }
        else
        if (q == median(1.8, q, 2.2))
            key[KEY.LEFT] = 1;
        else      
        if (q == median(2.21, q, 2.79))
        {
            // bot left
            key[KEY.LEFT] = 1;
            key[KEY.BOT] = 1;
        }
        else
        if (q == median(2.8, q, 3.2))
            key[KEY.BOT] = 1;  
        else     
        if (q == median(3.21, q, 3.79))
        {
            // bot right
            key[KEY.RIGHT] = 1;
            key[KEY.BOT] = 1;
        }
        else
        if (q == median(3.8, q, 3.99) || q == median(0, q, 0.2))
            key[KEY.RIGHT] = 1;
        }
    }
    break;*/
}
