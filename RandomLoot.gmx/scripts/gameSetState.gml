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

