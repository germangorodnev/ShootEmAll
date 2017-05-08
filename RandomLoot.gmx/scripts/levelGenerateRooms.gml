var lvl = level;
for (var i = 0, cnt = instance_number(oLeaf); i < cnt; i++)
{
    var lf = instance_find(oLeaf, i);
    with (lf)
    {
        // vars
        
        // determine the type
        switch (choose(0, 1))
        {
        case 0:
            /*
            // PRISON //
            */
            for (var i = rx, ci = rx + rw; i < ci; i++)
            {
                for (var j = ry, cj = ry + rh; j < cj; j++)
                {
                    var xx = i * LEVEL.TILE_W,
                        yy = j * LEVEL.TILE_H;
                    // fill with the floor
                    var tl = tile_layer_find(oLevel.floorD, xx, yy);
                    if (tl != -1)
                        tile_delete(tl);
                    tile_add(tlsPrison, tw * 3, 0, tw, th, xx, yy, oLevel.floorD);
                }
            }
            // set the bed
            //repeat(floor(rw / 2))
                //levelPrisonSetRandomBed();
            // closet
            //levelPrisonSetCloset(0);
            break;
            
        case 1: // leave blank
            break;
        }
    }
}
with (oLeaf)
    instance_destroy();
