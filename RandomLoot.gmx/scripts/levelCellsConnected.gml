///levelCellsConnected(cell* c1, cell* c2)
var c1 = argument[0],
    c2 = argument[1];
  
bfsReset();
with (c1)
{
    var ls = bfs(number);
    var cont = ds_list_find_index(ls, c2) != -1;
    ds_list_destroy(ls);
    if (cont)
        return 1;
    else
        return 0;
}
