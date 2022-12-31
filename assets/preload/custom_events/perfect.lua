function onEvent(name, value1, value2)
	if misses == 0 then
		makeLuaText('perfectTxt', 'PERFECT!', 1280, 0, 224)
			setObjectCamera('perfectTxt', 'hud')
			setProperty('perfectTxt.scale.y', 0)
			setTextSize('perfectTxt', 100)
			screenCenter('perfectTxt', 'y')
		addLuaText('perfectTxt')
	end
end
