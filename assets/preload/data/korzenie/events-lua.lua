function onCreate()
	setProperty('defaultCamZoom', 1.8)
end

function onSongStart()
	doTweenAlpha('black-bye', 'black', 0, 40, 'linear')
end

function onBeatHit()
	if curBeat == 76 then
		doTweenAlpha('vingette-bye', 'vingette', 0.6, 4, 'linear')
		doTweenAlpha('lighting-bye', 'lighting', 0.5, 4, 'linear')
	end
	if curBeat == 84 then
		setProperty('defaultCamZoom', 1.15)
	end
	if curBeat == 476 then
		doTweenAlpha('black-hi', 'black', 1, 4.5, 'linear')
		doTweenAlpha('vingette-hi', 'vingette', 1, 4.5, 'linear')
		doTweenAlpha('lighting-hi', 'lighting', 1, 4.5, 'linear')
	end
end