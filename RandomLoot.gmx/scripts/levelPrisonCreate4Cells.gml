///levelPrisonCreate4Cells(x, y)
/*
    .#.#
    #.#.
    .#.#
    #.#.
*/
var xs = argument[0],
    ys = argument[1],
    prcellw = oLevel.prisonCellW,
    prcellh = oLevel.prisonCellH;
    
var pr = instance_create(xs, ys, oPrisonCell);
pr.rw = prcellw;
pr.rh = prcellh;
pr.image_xscale = pr.rw / 32;
pr.image_yscale = pr.rh / 32;
ds_list_add(children, pr);

pr = instance_create(xs + prcellw - 1, ys, oPrisonCell);
pr.rw = prcellw;
pr.rh = prcellh;
pr.image_xscale = pr.rw / 32;
pr.image_yscale = pr.rh / 32;
ds_list_add(children, pr);
pr.pos = 1;

pr = instance_create(xs, ys + prcellh - 1, oPrisonCell);
pr.rw = prcellw;
pr.rh = prcellh;
pr.image_xscale = pr.rw / 32;
pr.image_yscale = pr.rh / 32;
ds_list_add(children, pr);
pr.pos = 2;

pr = instance_create(xs + prcellw - 1, ys + prcellh - 1, oPrisonCell);
pr.rw = prcellw;
pr.rh = prcellh;
pr.image_xscale = pr.rw / 32;
pr.image_yscale = pr.rh / 32;
ds_list_add(children, pr);
pr.pos = 3;


