while (moneydead != 0)
{
    if (moneydead >= 100)
    {
        moneydead -= 100;
        with (instance_create(x + irandom_range(-10, 13), y + irandom_range(-11, 11), oPickupMoney))
            pickupableInit(PICKUP.__MONEY, 100);
    }
    else if (moneydead >= 10)
    {
        moneydead -= 10;
        with (instance_create(x + irandom_range(-8, 9), y + irandom_range(-8, 8), oPickupMoney))
            pickupableInit(PICKUP.__MONEY, 10);    
    }
    else if (moneydead >= 2)
    {
        moneydead -= 2;
        with (instance_create(x + irandom_range(-8, 9), y + irandom_range(-8, 8), oPickupMoney))
            pickupableInit(PICKUP.__MONEY, 2);
    }
    else if (moneydead >= 1)
    {
        moneydead -= 1;
        with (instance_create(x + irandom_range(-8, 8), y + irandom_range(-7, 11), oPickupMoney))
            pickupableInit(PICKUP.__MONEY, 1);    
    }
}
