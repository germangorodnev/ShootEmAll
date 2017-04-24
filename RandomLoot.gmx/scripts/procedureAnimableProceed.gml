anSin += anSinStep;
if (anSin == 360)
    anSin = 0;
anSinRad = degtorad(anSin);
anAngle = sin(anSinRad) * anMaxAngle;
anH = -(anAngle / anMaxAngle) * anMaxH;

