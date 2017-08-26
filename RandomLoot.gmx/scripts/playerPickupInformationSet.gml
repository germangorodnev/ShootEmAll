///playerPickupInformationSet(obj, PICKUP.__ type)
var o = argument[0],
    pt = argument[1];
switch (pt)
{
case PICKUP.__WEAPON:
    // set scale of window
    pwName = pwId.name;
    pwType = pwId.class;
    draw_set_font(fWeaponName);
    pwicnw = string_width(pwName);
    pwicsc = pwicnw / pwicsw - .05;
    var pwicrealw = pwicsw * pwicsc;
    // center x
    pwicx = o.x - (pwicrealw div 2);
    // general y
    pwiy = o.y - 50;
    //left
    pwilx = pwicx - pwilsw;
    // right
    pwirx = pwicx + pwicrealw;
    
    // text
    pwitypex = pwilx + 50;
    pwitypey = pwiy - 2;
    
    pwinamex = o.x;
    pwinamey = pwiy + 12;
    break;
}
