global.oGameState = global.gameState;
global.gameState = argument[0];
with (oStateObject)
{
    if (!influence)
        continue;
    if (stateCreated != global.gameState)
    {
        updWas = updatable;
        updatable = 0;
        drawable = 1;
        event_perform(ev_other, ev_user0);
    }
    else
    {
        updatable = updWas;
        drawable = 1;
        event_perform(ev_other, ev_user1);
    }
}
//deactivate particle systems
for (var i = 1, syses = global.psyses, ci = ds_list_size(global.psyses); i < ci; i++)
{
    var _ar = syses[| i];
    part_system_automatic_update(_ar[0], 0);
    if (_ar[1] == 1)
    { 
        if (_ar[2] != global.gameState)
        {
        }
        else
            part_system_automatic_update(_ar[0], 1);
    }
        else
            part_system_automatic_update(_ar[0], 1);
}
