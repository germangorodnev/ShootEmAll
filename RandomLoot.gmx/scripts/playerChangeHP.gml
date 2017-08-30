///playerChangeHP(player, int rel)
with (argument[0])
{
    hp = clamp(hp + argument[1], 0, _hp);
    // WARNING
    //if (hp <= 0)
        //room_restart();
}

