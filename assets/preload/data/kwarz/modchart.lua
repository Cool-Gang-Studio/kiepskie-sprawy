function onStepHit()
    if curStep == 1 then
        noteTweenX("Move1-1", 4, 1068, 0.01, linear)
        noteTweenX("Move2-1", 5, 956, 0.01, linear)
        noteTweenX("Move3-1", 6, 844, 0.01, linear)
        noteTweenX("Move4-1", 7, 732, 0.01, linear)
        noteTweenAngle("Rotate1-1", 4, 180, 0.01, linear)
        noteTweenAngle("Rotate2-1", 5, 180, 0.01, linear)
        noteTweenAngle("Rotate3-1", 6, 180, 0.01, linear)
        noteTweenAngle("Rotate4-1", 7, 180, 0.01, linear)
        noteTweenX("Move1-2", 0, 428, 0.01, linear)
        noteTweenX("Move2-2", 1, 316, 0.01, linear)
        noteTweenX("Move3-2", 2, 204, 0.01, linear)
        noteTweenX("Move4-2", 3, 92, 0.01, linear)
        noteTweenAngle("Rotate1-2", 0, 180, 0.01, linear)
        noteTweenAngle("Rotate2-2", 1, 180, 0.01, linear)
        noteTweenAngle("Rotate3-2", 2, 180, 0.01, linear)
        noteTweenAngle("Rotate4-2", 3, 180, 0.01, linear)
    end
end

