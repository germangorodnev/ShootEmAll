///physicalMoveProp(collideWith bitmask, hsp, vsp)
var clw = argument[0],
    chspd = argument[1],
    cvspd = argument[2];
var mult = 1;
if (chspd != 0 && cvspd != 0)
    mult = .8;

if (cvspd != 0)
{
    var a = abs(cvspd),
        s = sign(cvspd),
        pl = s * mult;
    repeat(a) //for (var i = 0; i < a; i++)
    {
        if (colPlaceFree(x, y + s, clw))
            y += pl;
        else 
            break;
    }
}    
if (chspd != 0)
{
    var a = abs(chspd),
        s = sign(chspd),
        pl = s * mult;
    repeat(a)
    {
        if (colPlaceFree(x + s, y, clw))
            x += pl;
        else
            break;
    }
}













