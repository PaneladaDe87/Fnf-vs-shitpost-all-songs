function onEvent(name, value1, value2)
    if name == "jumpscare" then
        makeLuaSprite('eye', 'imao', -1000, -300);
        addLuaSprite('eye', true);
        setObjectCamera('eye', 'hud');
        playSound('jumpscareIDK', 0.3);
        runTimer('olho', value2);
        setProperty('health', getProperty('health')-(value1));
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'olho' then
       removeLuaSprite('eye', true);
    end
end