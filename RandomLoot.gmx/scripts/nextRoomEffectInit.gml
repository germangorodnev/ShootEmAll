///nextRoomEffectInit(type, room id, with out in the next room)
type = argument[0];
roomId = argument[1];
withOut = argument[2];
alpha = 0;
switch (type)
{
case 0:
    inc = 0.05;
    break;
case 1:
    // black screen with circle
    srf = surface_create(global.guiW, global.guiH);
    // circle pos
    cirx = argument[3];
    ciry = argument[4];
    cird = argument[5];
    if (withOut)
    {
        cirxo = argument[6];
        ciryo = argument[7];
        cirdo = argument[8];
    }
    break;
}

//with (oControl)
//    audio_sound_gain(global.mainSong, 0, 500);
