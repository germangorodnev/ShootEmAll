anSin += anSinStep;
if (anSin == 360)
    anSin = 0;
anSinRad = degtorad(anSin);
anAngle = sin(degtorad(anSin)) * anMaxAngle;
anH = -(anAngle / anMaxAngle) * anMaxH;

