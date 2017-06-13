enum GAME
{
    __LAYER_SIZE = 32
}

enum LANG
{
    __EN = 0,
    __RUS
}

enum CONTROL 
{
    __KEYMOUSE = 1 << 0,
    __GAMEPAD = 1 << 1
}

enum CHARS
{
    __CARD = 0,
    __MILITARY,
    __JSTONE,
    __SOLITARE,
    __FOX,
    __CNT
}

enum LEVEL
{
    TILE_W = 64,
    TILE_H = 64,
    FLOOR = 1 << 0,
    WALL = 1 << 1,
    VOID = 1 << 2,
    SOLID = 1 << 3  
}

enum TILES
{
    __NONE = -6,
    __WALL = 0,
    // prison
    __PS_LEFT,
    __PS_RIGHT,
    __PS_TOP,
    __PS_BOTTOM,
    __PS_BOTTOM_RIGHT,
    __PS_BOTTOM_LEFT,
    __BED_HL,
    __BED_HR,
    __BED_VT,
    __BED_VB,
    __CURBSTONE,
    // canteen
    __TABLE_LEFT,
    __TABLE_HOR_CENT,
    __TABLE_RIGHT,
    __TABLE_VERT,
    __COOLEOLA_VERT,
    // shower
    __SHOWER_WALL_RIGHT,
    __SHOWER_TUMB,
    __SHOWER_STOOL,
    __SHOWER_WET,
    __SHOWER_BUCKET,
    
    __CRATE_LEFT,
    __CRATE_RIGHT,
    
    __PLANT,
    __SCAMNUM_HOR
}

enum CANNOT
{
    WALL = 1 << 0
}

enum EFFECTS
{
    __BULLET_WZHUH = 0,
    __LASER_GREEN_WZHUH,
    __LASER_RED_WZHUH
}

enum ABILITIES
{
    __DASH = 0,
    __HEAL
}

enum SINGLEUSE
{
    __NONE = -1,
    __INF_AMMO,
    __FULL_HEART,
    __40_SHOTGUN_SHELLS,
    __DMG_SINGLE_ENEMY,
    __ALLY_ROBOT,

    __CARDS_END,
    
    __EAT_BEGIN,
    __CHOCO_1,
    __CHOCO_2,
    __CHOCO_3,
    __BEER_1,
    __EAT_END,
}

enum RECHARGABLE
{
    __NONE = -1,
    __LASER_MINE,
    __DYNAMITE,
    __STICKY_GRENADE,
    __BOOMERANG,
    
    __END
}

enum ROOMS
{
    __NONE = -1,
    __PRISON_CANTEEN_2W = 0,
    __PRISON_CANTEEN_1W,
    __PRISON_CELLS_SIZE_1,
    __PRISON_CELLS_SIZE_3,
    __PRISON_SHOWER_1W,
    __PRISON_CHEST_1W,
    __PRISON_DEFAULT_1W,
    __START_ROOM
}   

enum GAME_STATES
{
    __INIT = 0,
    __CHAR_CHOOSE,
    __GAME,
    __PAUSE,
    __SHOP
}

enum PLAYER_STATES
{
    __DIE = -1,
    __IDLE,
    __WALK,
    __CUCKED,
    __DASH
}   

enum CUCKED
{
    __NONE = 0,
    __NORMAL,
    __HARD
}

enum PICKUP 
{
    __WEAPON = 0,
    __AMMO,
    __MONEY,
    __HP,
    __CRATE,
    __SU_CARDS,
    __RECH_EXPLOSIVES,
    __SHOP,
    __EAT
}

enum WEAPONS
{
    __NONE = 0,
    __MELEE_BEGIN,
    
    __BLOOD_FLAG,
    __HALFSWORD,
    __COPPER_DEVIL,
    __STICK,
    __ARIA_ARTH,
    __RAZORBLADE,
    
    
    __RANGED_BEGIN,
    
    __POMPINGTON,
    __RXP,
    __RECT1,
    __ROMAN_MG,
    __NOVA_M,
    __BORIAN_BULG,
    __GRENADE_LAUNCHER,
    __FOREST_MANTIS,
    __OVERKILLINGTON,
    __PHASER,
    __DESTRUCTOR,
    __DOUBLE_BARREL,
    __TESLA_BOOM,
    __LASER_BEE,
    __BIG_BULG,
    __ASSAULT_RIFLE,
    __CUSTOM,
    __RANGED_END
}

enum WEAPON_TYPE
{
    __MELEE = 0,
    __RANGE
}

enum WEAPON_ATTACK_TYPE
{
    __DOWN_TIMER_UP = 0,
    __DOWN_UP
}

enum WEAPON_STATES
{
    __MOVE = 0,
    __MOVE_NOANIM,
    __RETURN_TO_TOP,
    __RANGE_SHOT,
    __RANGE_RECOIL,
    __RANGE_RELOAD,
    __MELEE_DOWN,
    __MELEE_UP
}


enum W_PR 
{
    __SPRAY_ANGLE = 0,
    __SHOOT_CD,
    __SCORE_SIZE,
    __BULLETS_PER_SHOT,
    __PROJECTILE,
    __PROJECTILE_AMOUNT,
    __PROJECTILE_SPEED,
    __RELOAD_TIME,
    __DAMAGE_MIN,
    __DAMAGE_MAX,
    __BULLET_TYPE,
    __CRIT_CHANCE,
    __CRIT_DAMAGE_MIN,
    __CRIT_DAMAGE_MAX,
    __LDIR_X,
    __LDIR_Y,
    __LDIR_DIR,
    __BUTTON_STATE,
    __RANGE_CNT,
    __RANGE_CUSTOM_SPR_SHOOT,
    __RANGE_CUSTOM_SPR_RECHARGE,
    __RANGE_CUSTOM_DAMAGECD,
    __RANGE_CUSTOM_XOFF,
    __RANGE_CUSTOM_YOFF,
    __RANGE_CUSTOM_CNT,
    
    __ME_DAMAGE_MIN = 0,
    __ME_DAMAGE_MAX,
    __ME_CRIT_CHANCE,
    __ME_CRIT_DAMAGE_MIN,
    __ME_CRIT_DAMAGE_MAX,
    __ME_SHOOT_CD,
    __ME_BUTTON_STATE,
    __MELEE_CNT
}


enum KEY
{
    LEFT = 0,
    RIGHT,
    TOP,
    BOT,
    KICK,
    PICKUP,
    RELOAD,
    WEAP_CHANGE,
    ABIL,
    SINGLEUSE_ITEM,
    RECHARGABLE_ITEM,
    MAP,
    CNT
}

enum SPECIAL
{
    __INF_AMMO = 1 << 0
}

enum CAM_STATES 
{
    __PLAYER = 0
}

enum PROJECTILE
{
    __PELLET = 0,
    __BULLET,
    __ENERGY_LINE,
    __ENEMY_BULLET,
    __FAST_BULLET,
    __BORIAN,
    __GRENADE_ONE_GL,
    __LASER,
    __BULLET_LINE,
    __PHASER,
    __LASER_RED,
    __BIG_BULG,
    __ZAP,
    __PLASM
}

enum AMMO
{
    __NONE = 0,
    __BULLET,
    __ROCKET,
    __SHOTGUN,
    __GRENADES,
    __ENERGY,
    __BORIAN,
    __CNT
}


// ENEMIES
enum ENEMY_STATE
{
    __DIE = -1,
    __IDLE = 0,
    __WALK,
    __ATTACK,
    __FOLLOW,
    __CUCKED
}

enum ENEMY
{
    __PILLOW = 0,
    __JELLY,
    __OCTO_GUARD,
    __OCTO_ATTACK
}

enum ENEMY_WEAPON
{
    __SELF = 0,
    __MACHINEGUN,
    __SHIELD,
    __TAZER,
    __OCTO_PISTOL,
    __OCTO_SHOTGUN,
    __OCTO_RIFLE
}

enum ENEMY_PATTERN 
{
    __NONE = 0,
    __PATROL,
    __FOLLOW
}

enum ENEMY_ANIM
{
    __IDLE = 0,
    __WALK,
    __ATTACK,
    __CUCKED,
    __DIE,
    __CNT
}

enum ENEMY_F
{
    __IN_PRISON = 1 << 0
}
