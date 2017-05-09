///bspGetRoom(leaf*)
var ll = argument[0];
with (ll)
{
    if (rm != noone)
    {
        return rm;
    }
    else
    {
        var lroom = noone, 
            rroom = noone;
        if (leftChild != noone)
            lroom = bspGetRoom(leftChild);
        if (rightChild != noone)
            rroom = bspGetRoom(rightChild);
        if (lroom == noone && rroom == noone)
            return noone;
        else if (rroom == noone)
            return lroom;
        else if (lroom == noone)
            return rroom;
        else if (choose(0, 1))
            return lroom;
        else
            return rroom;
    }
}

