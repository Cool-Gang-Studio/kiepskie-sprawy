--[[
    Arrows Y Positions
    Upscroll = 50
    Downscroll = 570
--]]

function onStepHit()

    local originalPosition = 570
    local yPosition = -70
    if (getPropertyFromClass('ClientPrefs', 'downScroll') == true) then
        yPosition = 690 -- not funny. didn't laugh
        originalPosition = 570
    else
        yPosition = -70
        originalPosition = 50
    end

    if curStep == 1 then
        noteTweenY("Move Left Arrow", 0, yPosition, 56, backInOut)
        noteTweenY("Move Down Arrow", 1, yPosition, 56, backInOut)
        noteTweenY("Move Up Arrow", 2, yPosition, 56, backInOut)
        noteTweenY("Move Right Arrow", 3, yPosition, 56, backInOut)
    end
    if curStep == 504 then
        noteTweenY("Move Left Arrow", 0, originalPosition, 0.5, backInOut)
        noteTweenY("Move Down Arrow", 1, originalPosition, 0.5, backInOut)
        noteTweenY("Move Up Arrow", 2, originalPosition, 0.5, backInOut)
        noteTweenY("Move Right Arrow", 3, originalPosition, 0.5, backInOut)
    end
    if curStep == 512 then
        noteTweenY("Move Left Arrow", 4, yPosition, 56, backInOut)
        noteTweenY("Move Down Arrow", 5, yPosition, 56, backInOut)
        noteTweenY("Move Up Arrow", 6, yPosition, 56, backInOut)
        noteTweenY("Move Right Arrow", 7, yPosition, 56, backInOut)
    end
    if curStep == 1016 then
        noteTweenY("Move Left Arrow", 4, originalPosition, 0.5, backInOut)
        noteTweenY("Move Down Arrow", 5, originalPosition, 0.5, backInOut)
        noteTweenY("Move Up Arrow", 6, originalPosition, 0.5, backInOut)
        noteTweenY("Move Right Arrow", 7, originalPosition, 0.5, backInOut)
    end
end