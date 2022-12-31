function onBeatHit()
	if curBeat == 4 then
		doTweenAlpha('sunset-transition1', 'sunset-light', 1, 1, 'linear')
		doTweenAlpha('sunset-transition2', 'day-sky', 0, 1, 'linear')
	end
	if curBeat == 8 then
		doTweenAlpha('night-transition1', 'sunset-light', 0, 1, 'linear')
		doTweenAlpha('night-transition2', 'sunset-sky', 0, 1, 'linear')
		doTweenAlpha('night-transition3', 'night-light', 1, 1, 'linear')
	end
end

function onCreate()
	doTweenAlpha('start-thing1', 'sunset-light', 0, 0.01, 'linear')
	doTweenAlpha('start-thing2', 'night-light', 0, 0.01, 'linear')
end