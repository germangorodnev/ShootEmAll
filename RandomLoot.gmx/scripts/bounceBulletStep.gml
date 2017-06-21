if (bouncetmr && !--bouncetmr)
    bouncetmr = -1;
if (spd > 0)
{
    var _arr = colPlaceFreeSide(x, y, collideWith);
    if (_arr != -1 && bouncetmr == -1)
    {
        bouncetmr = 2;
        spd = max(0, spd - 0.1);
        direction = getReflectionAngle(_arr, direction);
    }
    _arr = 0;
}

