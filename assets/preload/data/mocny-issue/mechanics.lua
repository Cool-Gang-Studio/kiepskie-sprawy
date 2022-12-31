function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.4 then
        setProperty('health', health- 0.004);
    end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
    health = getProperty('health')
    if getProperty('health') > 0.4 then
        setProperty('health', health+ 0.007);
    end
end

function opponentNoteHit(id,data,type,sus)
	triggerEvent('Screen Shake','0.1, 0.1','0.1, 0.05')
end