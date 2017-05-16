var prcellw = oLevel.prisonCellW,
    prcellh = oLevel.prisonCellH,
    off = 0;
switch (par.size)
{
case 0:
    // create 4 cells
    levelPrisonCreate4Cells(x + 1, y + 1);
    break;
    
case 1: //##
    levelPrisonCreate4Cells(x + 1, y + 1);
    levelPrisonCreate4Cells(x + prcellw*2+off, y + 1);
    break;
    
case 2: //#\n#
    levelPrisonCreate4Cells(x + 1, y + 1);
    levelPrisonCreate4Cells(x + 1, y + prcellh*2+off);

    break;
    
case 3:
    levelPrisonCreate4Cells(x + 1, y + 2);
    levelPrisonCreate4Cells(x + prcellw*2+off+1, y + 2);
    levelPrisonCreate4Cells(x + prcellw*2+off+1, y + prcellh*2+off+3);
    levelPrisonCreate4Cells(x + 1, y + prcellh*2+off+3);

    break;
}

