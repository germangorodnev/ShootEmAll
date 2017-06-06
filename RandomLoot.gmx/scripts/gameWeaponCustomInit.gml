///gameWeaponCustomInit()
var body = -1,
    bodyX, bodyY,
    
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
/* BODYS
    0 - big
    1 - pistol
    2 - long
*/
body = 0; //irandom(bodyCnt - 1);
// now we pick wscore, hand and out
/* BACKS
    0 - big
    1 - aim
    2 - speed
    3 - 
*/
var bodyW,
    bodyH;
switch (body)
{
case 0: // big body 
    params[W_PR.__BUTTON_STATE] = 0;
    params[W_PR.__SPRAY_ANGLE] = random_range(3, 6);
    params[W_PR.__SHOOT_CD] = random_range(0.5, 2) * room_speed;
    params[W_PR.__BULLETS_PER_SHOT] = irandom_range(1, 1);
    params[W_PR.__SCORE_SIZE] = params[W_PR.__BULLETS_PER_SHOT] * irandom_range(3, 13);
    params[W_PR.__PROJECTILE] = PROJECTILE.__GRENADE_ONE_GL;
    params[W_PR.__PROJECTILE_AMOUNT] = irandom_range(1, 3);
    params[W_PR.__PROJECTILE_SPEED] = irandom_range(8, 11);
    params[W_PR.__RELOAD_TIME] = round(params[W_PR.__SCORE_SIZE] * 1.5 * room_speed);
    params[W_PR.__DAMAGE_MIN] = irandom_range(8, 12);
    params[W_PR.__DAMAGE_MAX] = params[W_PR.__DAMAGE_MAX] + irandom_range(4, 10);
    params[W_PR.__BULLET_TYPE] = choose(AMMO.__GRENADES);
    params[W_PR.__RANGE_CUSTOM_DAMAGECD] = 0.6 * room_speed;
    
    bodyX = 40; bodyY = 40;
    bodyW = 51; bodyH = 10;
    
    wscore = 0;
    wscoreX = bodyX; 
    wscoreY = bodyY - 2;
    
    hand = choose(irandom_range(0, 1));
    handX = bodyX + irandom_range(2, 5);
    handY = bodyY + bodyH - 4;
    
    out = 0;
    outX = bodyX + bodyW;
    outY = bodyY;
    break;
    
case 1:
    break;
}

weapX = wscoreX - 32;
weapY = wscoreY - 5;
weapW = (outX + 32) - weapX;
weapH = 40;
weapXo = handX + 10;
weapYo = bodyY - weapY + bodyH / 1.5;


var outpar = gameWeaponPartGetParams(sWeaponPartOut, out);
params[W_PR.__LDIR_X] = abs(outX + outpar[0] - weapXo);
params[W_PR.__LDIR_Y] = params[W_PR.__LDIR_X];
params[W_PR.__LDIR_DIR] = 0;

var surf = surface_create(150, 100);
surface_set_target(surf);
draw_sprite_ext(sWeaponPartScore, wscore, wscoreX, wscoreY, 1, 1, 0, blend, alpha);
draw_sprite_ext(sWeaponPartHand, hand, handX, handY, 1, 1, 0, blend, alpha);
draw_sprite_ext(sWeaponPartOut, out, outX, outY, 1, 1, 0, blend, alpha);
draw_sprite_ext(sWeaponPartBody, body, bodyX, bodyY, 1, 1, 0, blend, alpha);
surface_reset_target();

SPRITE = sprite_create_from_surface(surf, weapX, weapY, weapW, weapH, 1, 0, weapXo, weapYo);
sprite_set_offset(SPRITE, weapXo, weapYo); 
customSpriteAdd(SPRITE);

surface_free(surf);

params[W_PR.__RANGE_CNT] = SPRITE;
params[W_PR.__RANGE_CUSTOM_SPR_SHOOT] = SPRITE;
params[W_PR.__RANGE_CUSTOM_XOFF] = 4;
params[W_PR.__RANGE_CUSTOM_YOFF] = -(22);

sprite_index = SPRITE;
ammo = params[W_PR.__SCORE_SIZE];
