var ll = noone; // helper leaf

// create the root leaf
var root = bspLeafCreate(0, 0, ww, hh);
ds_list_add(leafs, root);
var splitted = 1;

while (splitted)
{
    splitted = 0;
    for (var i = 0, cnt = ds_list_size(leafs); i < ds_list_size(leafs); i++)
    {
        ll = leafs[| i];
        if (ll.leftChild == noone && ll.rightChild == noone)
        {
            if (ll.w > maxLeafSize 
                || ll.h > maxLeafSize
                || random(1) > 0.25)
            {
                if (bspLeafSplit(ll))
                {
                    ds_list_add(leafs, ll.leftChild);
                    ds_list_add(leafs, ll.rightChild);
                    splitted = 1;
                }
            }
        }
    }
}

bspLeafCreateRooms(root);


