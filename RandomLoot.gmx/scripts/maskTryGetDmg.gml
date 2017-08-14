///maskTryGetDmg(id, int dmg, CUCKED, cooldown damage)
if (expire != 0)
    exit;
expire = argument[3];
image_index = 2;
var idd = argument[0],
    dd = argument[1],
    ccuck = argument[2];
    
if (dd != 0)
{
    with (idd) // who kicked us
    {
        switch (object_index)
        {
        case oPlayer:   
            // onhit process
            break;
        }
    }
}
    
var took = 1;
with (par)
{
    if (dd != 0)
    {
        took = physicalTakeDmg(dd);
    }
    if (!took)
    {
        // evaded
        return 0;
    }
    whiteTmr = global.damageTakeTmr;
    // cucked
    physicalCucked(ccuck, idd);

}
//punchEffectCreate(x + irandom_range(sprite_width / 3, sprite_width / 1.5), 
//                    y + irandom_range(sprite_height / 3, sprite_height / 1.5),
//                    0,
//                    -(par.y + 5));
if (par.hp <= 0)
    return 2;
return 1;
