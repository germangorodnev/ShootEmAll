///gameWeaponCustomInit()
var body = -1,
    bodyX, bodyY,
    bodyW, bodyH,
    
    wscore = -1,
    wscoreX, wscoreY,
    
    hand = -1,
    handX, handY,
    
    out = -1,
    outX, outY;
    
params[W_PR.__RANGE_CUSTOM_CNT - 1]  = 0;

var bodyCnt = 3,
    wscoreCnt = 3,
    handCnt = 2,
    outCnt = 3;
var SPRITE = -1, // out sprite
    blend = c_white,
    alpha = 1;
var weapX, weapY, weapW, weapH, weapXo, weapYo;

// first - choose the body

body = choose(0, 2); //irandom(bodyCnt - 1);

/*
sWeaponPartBody
sWeaponPartHand
sWeaponPartScore
sWeaponPartOut
*/    
var bodyarr = gameWeaponPartGetParams(sWeaponPartBody, body);
bodyW = bodyarr[0];
bodyH = bodyarr[1];

switch (body)
{
case 0: // pistol maybe
    params[W_PR.__SHOOT_CD] = random_range(.3, 0.6) * room_speed;
    params[W_PR.__SCORE_SIZE] = irandom_range(8, 13);
    params[W_PR.__BULLETS_PER_SHOT] = 1;
    params[W_PR.__DAMAGE_MIN] = irandom_range(8, 12);
    params[W_PR.__DAMAGE_MAX] = params[W_PR.__DAMAGE_MAX] + irandom_range(4, 10);
    
    params[W_PR.__BULLET_TYPE] = choose(AMMO.__BULLET);
    params[W_PR.__RANGE_CUSTOM_DAMAGECD] = 0.3 * room_speed;
    params[W_PR.__SCORE_SIZE] = irandom_range(8, 12);
    params[W_PR.__RELOAD_TIME] = irandom_range(1, 2) * room_speed;
    
    bodyX = 40; bodyY = 40;
       
    hand = choose(irandom_range(0, 2));
    
    wscore = -1; // no outer score
    
    out = 0;    
    weapXo = bodyX + 8;
    weapYo = bodyY + bodyH / 2;
    break;
    
case 1:
    break;
    
case 2:
    params[W_PR.__SHOOT_CD] = random_range(.2, 0.3) * room_speed;
    params[W_PR.__SCORE_SIZE] = irandom_range(8, 13);
    params[W_PR.__BULLETS_PER_SHOT] = 1;
    params[W_PR.__DAMAGE_MIN] = irandom_range(5, 9);
    params[W_PR.__DAMAGE_MAX] = params[W_PR.__DAMAGE_MAX] + irandom_range(4, 10);
    
    params[W_PR.__BULLET_TYPE] = choose(AMMO.__BULLET);
    params[W_PR.__RANGE_CUSTOM_DAMAGECD] = params[W_PR.__SHOOT_CD] div 2;
    params[W_PR.__SCORE_SIZE] = irandom_range(14, 20);
    params[W_PR.__RELOAD_TIME] = irandom_range(1, 2) * room_speed;
    
    bodyX = 40; bodyY = 40;
       
    hand = choose(irandom_range(0, 2));
    
    wscore = -1; // no outer score
    
    out = 0;    
    weapXo = bodyX + 8;
    weapYo = bodyY + bodyH / 2;
    break;
}

// now place hand
if (hand != -1)
{
    var handpar = gameWeaponPartGetParams(sWeaponPartHand, hand);
    switch (hand)
    {
    case 0:
    case 1:
        params[W_PR.__BUTTON_STATE] = 0;
        handX = bodyX - irandom_range(4, 6);
        handY = bodyY + bodyH - 1;
        break;
    case 2:
        params[W_PR.__BUTTON_STATE] = 1;
        handX = bodyX - irandom_range(8, 9);
        handY = bodyY + bodyH - 1;    
        break;
    }
}
// now place score
if (wscore != -1)
{
    switch (wscore)
    {
    case 0:
        wscoreX = handX + handpar[0] + irandom_range(1, bodyW div 2); 
        wscoreY = bodyY + bodyH - 1;    
        params[W_PR.__BULLETS_PER_SHOT] = irandom_range(1, 1);
        params[W_PR.__SCORE_SIZE] = irandom_range(8, 13);
         break;
    case 1:
    
        break;
    }
}
else
{
    wscoreX = bodyX;
    wscoreY = bodyY;
}
// now place out
if (out != -1)
{
    switch (out)
    {
    case 0:
        params[W_PR.__SPRAY_ANGLE] = random_range(2, 4);
        params[W_PR.__PROJECTILE] = PROJECTILE.__FAST_BULLET;
        params[W_PR.__PROJECTILE_AMOUNT] = 1;
        params[W_PR.__PROJECTILE_SPEED] = irandom_range(9, 11);
        outX = bodyX + bodyW - 2;
        outY = bodyY;    
        break;
    }
}
var outpar = gameWeaponPartGetParams(sWeaponPartOut, out);

weapX = min(bodyX, handX, wscoreX, outX) - 3;
weapY = min(bodyY, handY, wscoreY, outY) - 3;
weapW = (outX + outpar[0]) - weapX;
weapH = 40;
params[W_PR.__LDIR_X] = abs(outX + outpar[0] - weapXo);
params[W_PR.__LDIR_Y] = params[W_PR.__LDIR_X];
params[W_PR.__LDIR_DIR] = 0;
//weapXo = handX + 10;
//weapYo = bodyY - weapY + bodyH / 1.5;
weapXo -= weapX;
weapYo -= weapY;


var surf = surface_create(150, 200);
surface_set_target(surf);
draw_set_colour_write_enable(false, false, false, true);
draw_set_blend_mode_ext(bm_zero, bm_zero);
draw_rectangle_colour(0, 0, 150, 200, c_black, c_black, c_black, c_black, 0);
draw_set_blend_mode(bm_normal);
draw_set_colour_write_enable(true, true, true, true);

if (wscore != -1)
    draw_sprite_ext(sWeaponPartScore, wscore, wscoreX, wscoreY, 1, 1, 0, blend, alpha);
if (hand != -1)
    draw_sprite_ext(sWeaponPartHand, hand, handX, handY, 1, 1, 0, blend, alpha);
if (out != -1)
    draw_sprite_ext(sWeaponPartOut, out, outX, outY, 1, 1, 0, blend, alpha);
if (body != -1)
    draw_sprite_ext(sWeaponPartBody, body, bodyX, bodyY, 1, 1, 0, blend, alpha);
surface_reset_target();

SPRITE = sprite_create_from_surface(surf, weapX, weapY, weapW, weapH, 0, 0, weapXo, weapYo);
surface_free(surf);

sprite_set_offset(SPRITE, weapXo, weapYo); 
customSpriteAdd(SPRITE);


params[W_PR.__RANGE_CNT] = SPRITE;
params[W_PR.__RANGE_CUSTOM_SPR_SHOOT] = SPRITE;
params[W_PR.__RANGE_CUSTOM_XOFF] = 4;
params[W_PR.__RANGE_CUSTOM_YOFF] = -(22);

sprite_index = SPRITE;
ammo = params[W_PR.__SCORE_SIZE];
