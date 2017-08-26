with (oPlayer)
{
    if (playerInRoom)
    {
        var _arr = enemiesInRoom(roomCtrl, oBaseEnemy);
        if (ds_list_empty(_arr))
        {
            roomEndTmr = 1 * room_speed;
        }
        ds_list_destroy(_arr);
    }  
}
