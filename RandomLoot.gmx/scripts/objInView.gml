///objInView(id)
with (argument[0])
    return (rectangle_in_rectangle(x - shrx, y - shry, x + shrx, y - shry, 
        view_xview, view_yview, view_xview + view_wview, view_yview + view_hview) >= 1)

