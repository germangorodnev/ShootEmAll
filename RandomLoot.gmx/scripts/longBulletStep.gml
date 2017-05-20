depth = -eY;

// add all the masks on line to the list
var x1 = x,
    y1 = y,
    x2 = eX,
    y2 = eY,
    gr = !group,
    dmgTaken = 0,
    dd = damage,
    cc = cuck,
    pp = parent,
    ddcd = dmgcd,
    callerisplayer = !group; 
    
with (oMaskHit)
{
    if (group != gr)
        continue;
    if (collision_line(x1, y1, x2, y2, id, 0, 0) == id) // well, we're on line
    {
        // proceed this mask
        if (!par.hittable)
            continue;
        dmgTaken = maskTryGetDmg(pp, dd, cc, ddcd);
        if (dmgTaken)
        {
            if (callerisplayer)
            {
                // player onhit proceed
            }   
        }
        
    }
}

