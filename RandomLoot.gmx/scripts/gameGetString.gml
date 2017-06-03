///gameGetString(main group, group, key)
// ======== main groups ========= //
// -1. System
// 1. Something in PICKUP
// 2. Game term

var mg = argument[0],
    gg = argument[1],
    key = argument[2];
    
if(mg == -1) 
{
    // ================================= SYSTEM ================================= //

}    
else if (mg == 2)
{
    // ================================= GAME TERM ================================= //
    switch (key)
    {
    case "melee":
        switch (global.language)
        {
        case LANG.__EN:
            return "Melee";
            break;
        case LANG.__RUS:
            return "Ближнее";    
            break;
        }
        break;
        
    case "range":
        switch (global.language)
        {
        case LANG.__EN:
            return "Ranged";
            break;
        case LANG.__RUS:
            return "Дальнее";    
            break;
        }
        break;
        
    case "pistol":
        switch (global.language)
        {
        case LANG.__EN:
            return "Pistol";
            break;
        case LANG.__RUS:        
            return "Пистолет";
            break;
        }
        break;
        
    case "rifle":
        switch (global.language)
        {
        case LANG.__EN:
            return "Rifle";
            break;
        case LANG.__RUS:
            return "Ружье";        
            break;
        }
        break;
        
    case "automat":
        switch (global.language)
        {
        case LANG.__EN:
            return "Automatic";
            break;
        case LANG.__RUS:
            return "Автоматическое";           
            break;
        }
        break;   
         
    case "shotgun":
        switch (global.language)
        {
        case LANG.__EN:
            return "Shotgun";
            break;
        case LANG.__RUS:
            return "Дробовик";           
            break;
        }
        break;
    
    case "launcher":
        switch (global.language)
        {
        case LANG.__EN:
            return "Launcher";
            break;
        case LANG.__RUS:
            return "Зпускатель";           
            break;
        }
        break;
    case "machinegun":
        switch (global.language)
        {
        case LANG.__EN:
            return "Machinegun";
            break;
        case LANG.__RUS:
            return "Машинган";           
            break;
        }
        break;
    }
}
else if (mg == 1)
{
    // ================================= SOMETHING IN ENUM PICKUP ================================= //
    if (gg == PICKUP.__SU_CARDS)
    {
        // =============================== CARDS ========================== //
        var _arr,
            onedesc = "";
        switch (global.language)
        {
        case LANG.__EN:
            onedesc = "Cards for ZAKAZ";
            break;
        case LANG.__RUS:
            onedesc = "Это карты для игры в Заказ. Нет, это не контрабанда, листайте дальше.";
            break;
        }
        _arr[1] = onedesc;
        // 0 - name
        // 1 - desc
        switch (key)
        {
        case SINGLEUSE.__INF_AMMO:
            switch (global.language)
            {
            case LANG.__EN:
                _arr[0] = "Azure TOV";
                break;
            case LANG.__RUS:
                _arr[0] = "Лазурный ТОВ";
                break;
            }    
            break;
        case SINGLEUSE.__FULL_HEART:
            switch (global.language)
            {
            case LANG.__EN:
                _arr[0] = "Crimson OTI";
                break;
            case LANG.__RUS:
                _arr[0] = "Малиновый ОТИ";
                break;
            }    
            break;
        case SINGLEUSE.__40_SHOTGUN_SHELLS:
            switch (global.language)
            {
            case LANG.__EN:
                _arr[0] = "Yellow SI";
                break;
            case LANG.__RUS:
                _arr[0] = "Желтый СИ";
                break;
            }    
            break;
        case SINGLEUSE.__DMG_SINGLE_ENEMY:
            switch (global.language)
            {
            case LANG.__EN:
                _arr[0] = "Purple ES";
                break;
            case LANG.__RUS:
                _arr[0] = "Фиолетовый ЕС";
                break;
            }    
            break;
        case SINGLEUSE.__ALLY_ROBOT:
            switch (global.language)
            {
            case LANG.__EN:
                _arr[0] = "Azure DET";
                break;
            case LANG.__RUS:
                _arr[0] = "Лазурный ДЕТ";
                break;
            }    
            break;                    
        }
        return _arr;
    }
    
    else if (gg == PICKUP.__EAT)
    {
        // =============================== WEAPONS ========================== //
        var _arr;
        _arr[1] = "Вкусно!";
        // 0 - name
        // 1 - desc
        switch (key)
        {
        case SINGLEUSE.__CHOCO_1:
        case SINGLEUSE.__CHOCO_2:
        case SINGLEUSE.__CHOCO_3:
            switch (global.language)
            {
            case LANG.__EN:
                _arr[0] = "Chocolate bar";
                break;
            case LANG.__RUS:
                _arr[0] = "Шоколадный батончик";
                break;
            }    
            break;
        case SINGLEUSE.__BEER_1:
            switch (global.language)
            {
            case LANG.__EN:
                _arr[0] = "Beer";
                break;
            case LANG.__RUS:
                _arr[0] = "Пивас";
                break;
            }    
            break;
        }
        return _arr;    
    }
    
    else if (gg == PICKUP.__WEAPON)
    {
        // =============================== WEAPONS ========================== //
        var _arr;
        _arr[1] = "";
        // 0 - name
        // 1 - desc
        switch (key)
        {
        case WEAPONS.__BLOOD_FLAG:
            switch (global.language)
            {
            case LANG.__EN:
                _arr[0] = "Blood Flag";
                _arr[1] = "desc";
                break;
            case LANG.__RUS:
                _arr[0] = "Кровавый Штандарт";
                _arr[1] = "desc";            
                break;
            }            
            break;
        case WEAPONS.__POMPINGTON:
            switch (global.language)
            {
            case LANG.__EN:
                _arr[0] = "Pompington";
                _arr[1] = "Это ружье заставит детишек с соседнего дома перестать ходить вашего газона";
                break;
            case LANG.__RUS:
                _arr[0] = "Помпингтон";
                _arr[1] = "Это ружье заставит детишек с соседнего дома перестать ходить вашего газона";            
                break;
            }            
            break;
        case WEAPONS.__RXP:
            switch (global.language)
            {
            case LANG.__EN:
                _arr[0] = "RX-P";
                _arr[1] = "Это ружье заставит детишек с соседнего дома перестать ходить вашего газона";
                break;
            case LANG.__RUS:
                _arr[0] = "RX-P";
                _arr[1] = "Оружие базовой комплектации";            
                break;
            }            
            break;
        case WEAPONS.__NOVA_M:
            switch (global.language)
            {
            case LANG.__EN:
                _arr[0] = "Nova-M";
                _arr[1] = "Нет ничего запаха мёртвого врага по утрам, особенно если он был убит из этой винтовки";
                break;
            case LANG.__RUS:
                _arr[0] = "Nova-M";
                _arr[1] = "Нет ничего запаха мёртвого врага по утрам, особенно если он был убит из этой винтовки";            
                break;
            }            
            break;
        case WEAPONS.__ROMAN_MG:
            switch (global.language)
            {
            case LANG.__EN:
                _arr[0] = "Roman Machinegun";
                _arr[1] = "Вам не нужно целиться, если вы стреляете во все стороны";
                break;
            case LANG.__RUS:
                _arr[0] = "Пулемет Романа";
                _arr[1] = "Вам не нужно целиться, если вы стреляете во все стороны";            
                break;
            }            
            break;
        case WEAPONS.__PHASER:
            switch (global.language)
            {
            case LANG.__EN:
                _arr[0] = "Phase Crusher";
                _arr[1] = "Этот артефакт был конфискован у расхитителя гробниц на планете Азур III";
                break;
            case LANG.__RUS:
                _arr[0] = "Фазовый Двигатель";
                _arr[1] = "Этот артефакт был конфискован у расхитителя гробниц на планете Азур III";            
                break;
            }            
            break;
        case WEAPONS.__FOREST_MANTIS:
            switch (global.language)
            {
            case LANG.__EN:
                _arr[0] = "Forest Mantis";
                _arr[1] = "Эта винтовка убивает ваших врагов со скоростью света. Впрочем, боезапас тоже";
                break;
            case LANG.__RUS:
                _arr[0] = "Лесной Богомол";
                _arr[1] = "Эта винтовка убивает ваших врагов со скоростью света. Впрочем, боезапас тоже";            
                break;
            }            
            break;
        case WEAPONS.__RECT1:
            switch (global.language)
            {
            case LANG.__EN:
                _arr[0] = "Rect-1";
                _arr[1] = "Это оружие было запрещено на 60 планетах альянса из-за опасности отрывания кисти во время стрельбы";
                break;
            case LANG.__RUS:
                _arr[0] = "Рект-1";
                _arr[1] = "Это оружие было запрещено на 60 планетах альянса из-за опасности отрывания кисти во время стрельбы";            
                break;
            }            
            break;
        case WEAPONS.__BORIAN_BULG:
            switch (global.language)
            {
            case LANG.__EN:
                _arr[0] = "Borian Bulgavor";
                _arr[1] = "Не забывайте, что бульгавор - это кишечный паразит. Держите на безопасном расстоянии от кишок";
                break;
            case LANG.__RUS:
                _arr[0] = "Борианский Бульгавор";
                _arr[1] = "Не забывайте, что бульгавор - это кишечный паразит. Держите на безопасном расстоянии от кишок";            
                break;
            }            
            break;
        case WEAPONS.__DESTRUCTOR:
            switch (global.language)
            {
            case LANG.__EN:
                _arr[0] = "Destruction Weapon";
                _arr[1] = "У этого оружия исключительно высокая скорострельность, но, к сожалению, отсутствует автоматический режим";
                break;
            case LANG.__RUS:
                _arr[0] = "Оружие Поражения";
                _arr[1] = "У этого оружия исключительно высокая скорострельность, но, к сожалению, отсутствует автоматический режим";            
                break;
            }            
            break;
        case WEAPONS.__DOUBLE_BARREL:
            switch (global.language)
            {
            case LANG.__EN:
                _arr[0] = "Double Barrel";
                _arr[1] = "На стволе этого оружия ещё можно разглядеть остатки мозгов демонов";
                break;
            case LANG.__RUS:
                _arr[0] = "Двустволка";
                _arr[1] = "На стволе этого оружия ещё можно разглядеть остатки мозгов демонов";            
                break;
            }            
            break;
        case WEAPONS.__OVERKILLINGTON:
            switch (global.language)
            {
            case LANG.__EN:
                _arr[0] = "Overkillington";
                _arr[1] = "Осторожно! При использовании этого оружия существует опасность повреждения целостности станции!";
                break;
            case LANG.__RUS:
                _arr[0] = "Оверкиллингтон";
                _arr[1] = "Осторожно! При использовании этого оружия существует опасность повреждения целостности станции!";            
                break;
            }            
            break;
        // =============================== MELEE ========================== //            
        case WEAPONS.__HALFSWORD:
            switch (global.language)
            {
            case LANG.__EN:
                _arr[0] = "Halfsword";
                _arr[1] = "Одна половина режет, другая нет, Впрочем, это не важно, когда враг мёртв после одного удара.";
                break;
            case LANG.__RUS:
                _arr[0] = "Полумеч";
                _arr[1] = "Одна половина режет, другая нет, Впрочем, это не важно, когда враг мёртв после одного удара.";            
                break;
            }            
            break;
        case WEAPONS.__COPPER_DEVIL:
            switch (global.language)
            {
            case LANG.__EN:
                _arr[0] = "Copper Devil";
                _arr[1] = "Обратная сторона подавления беспорядков";
                break;
            case LANG.__RUS:
                _arr[0] = "Бронзовый Дьявол";
                _arr[1] = "Обратная сторона подавления беспорядков";            
                break;
            }            
            break;
        case WEAPONS.__ARIA_ARTH:
            switch (global.language)
            {
            case LANG.__EN:
                _arr[0] = "Aria's Artifact";
                _arr[1] = "Точно таким же мечом убили знаменитую актрису Роману Зомбедовну";
                break;
            case LANG.__RUS:
                _arr[0] = "Артефакт Арии";
                _arr[1] = "Точно таким же мечом убили знаменитую актрису Роману Зомбедовну";            
                break;
            }            
            break;
        default:
            _arr[0] = "FILYA";
            _arr[1] = "HUY";
            break;
        }   
        return _arr; 
    }
    else if (gg == PICKUP.__RECH_EXPLOSIVES)
    {
        // =============================== RECHARGABLE EXPLOSIVES ========================== //
        var _arr;
        _arr[1] = "";
        // 0 - name
        // 1 - desc
        switch (key)
        {
        case RECHARGABLE.__DYNAMITE:
            switch (global.language)
            {
            case LANG.__EN:
                _arr[0] = "Dynamite";
                _arr[1] = "Старая добрая взрывчатка";
                break;
            case LANG.__RUS:
                _arr[0] = "Динамит";
                _arr[1] = "Старая добрая взрывчатка";            
                break;
            }            
            break;
        case RECHARGABLE.__LASER_MINE:
            switch (global.language)
            {
            case LANG.__EN:
                _arr[0] = "Laser mine";
                _arr[1] = "Старая добрая взрывчатка";
                break;
            case LANG.__RUS:
                _arr[0] = "Лазерная мина";
                _arr[1] = "Старая добрая взрывчатка";            
                break;
            }            
            break;
        case RECHARGABLE.__BOOMERANG:
            switch (global.language)
            {
            case LANG.__EN:
                _arr[0] = "BOOMerang";
                _arr[1] = "Старая добрая взрывчатка";
                break;
            case LANG.__RUS:
                _arr[0] = "БУМеранг";
                _arr[1] = "Никто не знает, кому пришла в ум идея совместить взрывчатку и бумеранг, но наш магазин благодарит этого человека";            
                break;
            }            
            break;
        case RECHARGABLE.__STICKY_GRENADE:
            switch (global.language)
            {
            case LANG.__EN:
                _arr[0] = "Sticky grenade";
                _arr[1] = "Не отличается ничем от обычной гранаты кроме того что на ней куча слизи. Используйте как преимущество";
                break;
            case LANG.__RUS:
                _arr[0] = "Липкая граната";
                _arr[1] = "Не отличается ничем от обычной гранаты кроме того что на ней куча слизи. Используйте как преимущество";            
                break;
            }            
            break;

        }   
        return _arr; 
    }

}

