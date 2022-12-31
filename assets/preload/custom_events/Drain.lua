function onEvent(name, value1, value2)
    if name == "Drain" then
        health = getProperty('health')
        if getProperty('health') > 0 then
            setProperty('health', health- 500);
        end
    end
end
