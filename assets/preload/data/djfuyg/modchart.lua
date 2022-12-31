function onStepHit()
    if curStep == 1 then
        noteTweenX("Move1-3", 4, 299, 0.01, linear)
        noteTweenX("Move2-3", 5, 523, 0.01, linear)
        noteTweenX("Move3-3", 6, 749, 0.01, linear)
        noteTweenX("Move4-3", 7, 973, 0.01, linear)
        noteTweenX("Move1-4", 0, 187, 0.01, linear)
        noteTweenX("Move2-4", 1, 411, 0.01, linear)
        noteTweenX("Move3-4", 2, 637, 0.01, linear)
        noteTweenX("Move4-4", 3, 861, 0.01, linear)
    end
end