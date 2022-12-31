function onUpdate()
    for i = 0, getProperty('grpNoteSplashes.length') do
        setPropertyFromGroup('grpNoteSplashes', i, 'scale.x', 1)
        setPropertyFromGroup('grpNoteSplashes', i, 'scale.y', 1)
        setPropertyFromGroup('grpNoteSplashes', i, 'offset.x', -20)
        setPropertyFromGroup('grpNoteSplashes', i, 'offset.y', -14.2)
        setPropertyFromGroup('grpNoteSplashes', i, 'alpha', 0.6)
    end
end