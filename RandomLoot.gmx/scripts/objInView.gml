///objInView(id)
with (argument[0])
    return (rectangle_in_rectangle(x - shrx, y - shry, x + shrx, y - shry, 
        view_xview - 50, view_yview - 50, view_xview + view_wview + 50, view_yview + view_hview + 50) >= 1)

