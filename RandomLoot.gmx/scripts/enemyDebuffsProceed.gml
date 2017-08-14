for (var i = 0; i < ds_list_size(debuffs); ++i)
{
    var _arr = debuffs[| i];
    switch (_arr[@ 0])
    {
    case DEBUFFS.__POISION:
        if (_arr[@ 2] && !--_arr[@ 2])
        {
            _arr[@ 2] = _arr[@ 3];
            if (hittable)
            {
                var me = id,
                    ddmg = irandom_range(_arr[@ 4], _arr[@ 5]);
                with (maskHit)
                {
                    maskTryGetDmg(me, ddmg, CUCKED.__NORMAL, round(.15 * room_speed));
                }
            }
        }
        // proceed main timer of cooldown
        if (_arr[@ 1] && !--_arr[@ 1])
        {
            ds_list_delete(debuffs, i);
        }
        break;
    }
}
// 0
// 1
// 2
