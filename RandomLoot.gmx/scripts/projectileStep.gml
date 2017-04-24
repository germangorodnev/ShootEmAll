image_angle = direction;
projectileTimer();
if (!active)
    exit;
if (outsideRoom())
    instance_destroy();
if (place_meeting(x, y, oSolidObject))
    instance_destroy();
