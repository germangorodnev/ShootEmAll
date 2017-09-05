///levelCellAddDoor(cell id, side, door id)
with (argument[0].rm)
{
    var p = argument[1],
        vl = doorsCount[p]++;
    doors[p, vl] = argument[2];
}
