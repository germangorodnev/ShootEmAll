///colPlaceFree(x_to, y_to, solid only)
if (instance_exists(oLevel))
{
    var xto = argument[0],
        yto = argument[1],
        xo = x,
        yo = y;
        
    x = xto;
    y = yto;
    
    var rd = bbox_right div LEVEL.TILE_W,
        ld = bbox_left div LEVEL.TILE_W,
        td = bbox_top div LEVEL.TILE_H,
        bd = bbox_bottom div LEVEL.TILE_H,
        rt, lt, rb, lb, xmeet, ymeet,
        rreal = (rd-0) * LEVEL.TILE_W, //-1
        lreal = (ld+1) * LEVEL.TILE_W, //+2
        bottomreal = (bd-0) * LEVEL.TILE_H, //-1
        topreal = (td+1) * LEVEL.TILE_H; //+2


    xmeet = (oLevel.level[# rd, td] & argument[2])
        || (oLevel.level[# ld, td] & argument[2]);
        
    ymeet = (oLevel.level[# rd, bd] & argument[2])
        || (oLevel.level[# ld, bd] & argument[2]);
            
    rt = oLevel.colLevel[# rd, td];
    lt = oLevel.colLevel[# ld, td];
    rb = oLevel.colLevel[# rd, bd];
    lb = oLevel.colLevel[# ld, bd];   

    //bottomreal = min((td+1)*LEVEL.TILE_H, bd*LEVEL.TILE_H);
    //rreal = min((ld+1)*LEVEL.TILE_W, rd*LEVEL.TILE_W);
    //lreal = max()

    // rreal = 
    // lreal = 
    // bottomreal = 
    // topreal = 

    if (rt > 0)
    {
        if (lt > 0)
        {
            rreal = (ld)*LEVEL.TILE_W;
            lreal = (rd+1)*LEVEL.TILE_W;//min((rd+1)*LEVEL.TILE_W, rd*LEVEL.TILE_W);
        }
    }

    if (lt > 0)
        if (lb > 0)
        {
            //bottomreal = lt * LEVEL.TILE_H;
            //topreal = (lb+1)*LEVEL.TILE_H;
            //bottomreal = ld * LEVEL.TILE_H;
            //topreal = (bd)*LEVEL.TILE_H;
        }

    if (rt > 0)
        if (rb > 0)
        {
            //bottomreal = rt * LEVEL.TILE_H;
            //topreal = (rb+1)*LEVEL.TILE_H;
            //bottomreal = td * LEVEL.TILE_H;
            //topreal = (bd+1)*LEVEL.TILE_H;
        }

    if (rb > 0)
        if (lb > 0)
        {
            //rreal = (ld)*LEVEL.TILE_W;
            //lreal = (rd)*LEVEL.TILE_W;//min((rd+1)*LEVEL.TILE_W, rd*LEVEL.TILE_W);            
        }

    if (lb == 0 && rb > 0)
    {
        rreal = ld * LEVEL.TILE_W;
        lreal = rreal + LEVEL.TILE_W;
    }

    if (rb == 0 && lb > 0)
    {
        rreal = rd * LEVEL.TILE_W;
        lreal = rreal + LEVEL.TILE_W;
    }
    oControl.debugTopReal = topreal;

    var c_bbox_left = bbox_left,
        c_bbox_top = bbox_top,
        c_bbox_right = bbox_right,
        c_bbox_bottom = bbox_bottom;

    x = xo;
    y = yo;

    if (!xmeet && !ymeet)
        return 1;

    if (xto > x)
    {
        if (rt > 0) 
        {
            var _arr = oLevel.colOffset[? rt];
            if (rectWithRect(c_bbox_left, c_bbox_top, c_bbox_right, c_bbox_bottom, 
        rd*LEVEL.TILE_W+_arr[2], td*LEVEL.TILE_H+_arr[1], (rd+1)*LEVEL.TILE_W-_arr[0], (td+1)*LEVEL.TILE_W-_arr[3])) 
                return 0;  
        }
        if (rb > 0) //&& (xto >= 0 || yto > y))
        {
            var _arr = oLevel.colOffset[? rb];
            if (rectWithRect(c_bbox_left, c_bbox_top, c_bbox_right, c_bbox_bottom, 
        rd*LEVEL.TILE_W+_arr[2], bd*LEVEL.TILE_H+_arr[1], (rd+1)*LEVEL.TILE_W-_arr[0], (bd+1)*LEVEL.TILE_W-_arr[3])) 
                return 0;  
        }       
    }
    else if (xto < x)
    {
        if (lb > 0)
        {
            var _arr = oLevel.colOffset[? lb];
            if (rectWithRect(c_bbox_left, c_bbox_top, c_bbox_right, c_bbox_bottom, 
        (ld)*LEVEL.TILE_W+_arr[2], bd*LEVEL.TILE_H+_arr[1], (ld+1)*LEVEL.TILE_W-_arr[0], (bd+1)*LEVEL.TILE_W-_arr[3])) 
                return 0;  
        }   
        if (lt > 0)
        {
            var _arr = oLevel.colOffset[? lt];
            if (rectWithRect(c_bbox_left, c_bbox_top, c_bbox_right, c_bbox_bottom, 
        (ld)*LEVEL.TILE_W+_arr[2], td*LEVEL.TILE_H+_arr[1], (ld+1)*LEVEL.TILE_W-_arr[0], (td+1)*LEVEL.TILE_W-_arr[3])) 
                return 0;  
        }    
    }
    if (yto < y)
    {
        if (rt > 0) 
        {
            var _arr = oLevel.colOffset[? rt];
            if (rectWithRect(c_bbox_left, c_bbox_top, c_bbox_right, c_bbox_bottom, 
        rd*LEVEL.TILE_W+_arr[2], td*LEVEL.TILE_H+_arr[1], (rd+1)*LEVEL.TILE_W-_arr[0], (td+1)*LEVEL.TILE_W-_arr[3])) 
                return 0;  
        }
        if (lt > 0) 
        {
            var _arr = oLevel.colOffset[? lt];
            if (rectWithRect(c_bbox_left, c_bbox_top, c_bbox_right, c_bbox_bottom, 
        (ld)*LEVEL.TILE_W+_arr[2], td*LEVEL.TILE_H+_arr[1], (ld+1)*LEVEL.TILE_W-_arr[0], (td+1)*LEVEL.TILE_W-_arr[3])) 
                return 0;  
        }           
    }
    else if (yto > y)
    {
        if (rb > 0) 
        {
            var _arr = oLevel.colOffset[? rb];
            if (rectWithRect(c_bbox_left, c_bbox_top, c_bbox_right, c_bbox_bottom, 
        rd*LEVEL.TILE_W+_arr[2], bd*LEVEL.TILE_H+_arr[1], (rd+1)*LEVEL.TILE_W-_arr[0], (bd+1)*LEVEL.TILE_W-_arr[3])) 
                return 0;  
        }   
        if (lb > 0)
        {
             var _arr = oLevel.colOffset[? lb];
            if (rectWithRect(c_bbox_left, c_bbox_top, c_bbox_right, c_bbox_bottom, 
        (ld)*LEVEL.TILE_W+_arr[2], bd*LEVEL.TILE_H+_arr[1], (ld+1)*LEVEL.TILE_W-_arr[0], (bd+1)*LEVEL.TILE_W-_arr[3])) 
                return 0;  
       }        
    }   

    // if (xto > x)
    // {
    //     if (rt > 0) 
    //     {
    //         var _arr = oLevel.colOffset[? rt];
    //         // is it up or right?
    //         if (bbox_right >= rreal + _arr[2]
    //             //&& ld != rd
    //             && (bbox_bottom == median(td*LEVEL.TILE_H + _arr[1], bbox_bottom, (td+1)*LEVEL.TILE_H - _arr[3])//bottomreal+LEVEL.TILE_H)
    //             || bbox_top == median(td*LEVEL.TILE_H + _arr[1], bbox_top, (td+1)*LEVEL.TILE_H - _arr[3])))
    //         {
    //             return 0;
    //         }
    //     }
    //     if (rb > 0) 
    //     {
    //         rreal = rd*LEVEL.TILE_W;
    //         var _arr = oLevel.colOffset[? rb];
    //         var _1 = bbox_right > rreal + _arr[2],
    //             _2 = bbox_bottom == median(bd*LEVEL.TILE_H + _arr[1]+1, bbox_bottom, (bd+1)*LEVEL.TILE_H - _arr[3]-1),
    //             _3 = bbox_top == median(bd*LEVEL.TILE_H + _arr[1]+1, bbox_top, (bd+1)*LEVEL.TILE_H - _arr[3]-1);
    //         if (_1
    //             //&& ld != rd
    //             && (_2 || _3))
    //             return 0;
    //     }       
    // }
    // else if (xto < x)
    // {  
    //     if (lt > 0)
    //     {
    //         var _arr = oLevel.colOffset[? lt];
    //         if (bbox_left <= lreal - _arr[0]
    //             && ld != rd
    //             && (bbox_bottom == median(td*LEVEL.TILE_H + _arr[1], bbox_bottom, (td+1)*LEVEL.TILE_H - _arr[3])//bottomreal+LEVEL.TILE_H)
    //             || bbox_top == median(td*LEVEL.TILE_H + _arr[1], bbox_top, (td+1)*LEVEL.TILE_H - _arr[3])))
    //         {
    //             return 0;
    //         }
    //     }           

    //     if (lb > 0)
    //     {
    //         var _arr = oLevel.colOffset[? lb];
    //         if (bbox_left <= lreal - _arr[0]
    //             && ld != rd
    //             && (bbox_bottom == median(bd*LEVEL.TILE_H + _arr[1]+1, bbox_bottom, (bd+1)*LEVEL.TILE_H - _arr[3]-1)//bottomreal+LEVEL.TILE_H)
    //                 || bbox_top == median(bd*LEVEL.TILE_H + _arr[1]+1, bbox_top, (bd+1)*LEVEL.TILE_H - _arr[3]-1)))
    //         {
    //             return 0;                
    //         }          
    //     }   
    // }
    // ///////////////////////////////////////////////////
    // if (yto < y)
    // {
    //     if (rt > 0) 
    //     {
    //         var _arr = oLevel.colOffset[? rt];
    //         if (bbox_top <= topreal - _arr[3]
    //             && td != bd
    //             && (bbox_left == median(rd*LEVEL.TILE_W + _arr[2], bbox_left, (rd+1)*LEVEL.TILE_W - _arr[0])
    //                 || bbox_right == median(rd*LEVEL.TILE_W + _arr[2], bbox_right, (rd+1)*LEVEL.TILE_W - _arr[0])))
    //             return 0;
    //     }
    //     if (lt > 0) 
    //     {
    //         var _arr = oLevel.colOffset[? lt];
    //         if (bbox_top <= topreal - _arr[3]
    //             && td != bd
    //             && (bbox_left == median(ld*LEVEL.TILE_W + _arr[2], bbox_left, (ld+1)*LEVEL.TILE_W - _arr[0])
    //                 || bbox_right == median(ld*LEVEL.TILE_W + _arr[2], bbox_right, (ld+1)*LEVEL.TILE_W - _arr[0])))
    //             return 0;
    //     }           
    // }
    // else if (yto > y)
    // {
    //     if (rb > 0) 
    //     {
    //         var _arr = oLevel.colOffset[? rb];
    //         if (bbox_bottom >= bottomreal + _arr[1]
    //             //&& td != bd
    //             && (bbox_left == median(rd*LEVEL.TILE_W + _arr[2], bbox_left, (rd+1)*LEVEL.TILE_W - _arr[0])
    //                 || bbox_right == median(rd*LEVEL.TILE_W + _arr[2], bbox_right, (rd+1)*LEVEL.TILE_W - _arr[0])))
    //         {
    //             return 0;  
    //         }          
    //     }   
    
    //     if (lb > 0)
    //     {
    //         var _arr = oLevel.colOffset[? lb];
    //         if (bbox_bottom >= bottomreal + _arr[1]
    //             //&& td != bd
    //             && (bbox_left == median(ld*LEVEL.TILE_W + _arr[2], bbox_left, (ld+1)*LEVEL.TILE_W - _arr[0])
    //                 || bbox_right == median(ld*LEVEL.TILE_W + _arr[2], bbox_right, (ld+1)*LEVEL.TILE_W - _arr[0])))
    //         {
    //             return 0;            
    //         }
    //     }        
    // }
      
    return 1;
}
else
{
    var nn = argument[2];
    return !place_meeting(argument[0], argument[1], oSolidObject);
}
