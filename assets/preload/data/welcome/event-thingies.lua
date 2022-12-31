function onCreate()
	doTweenAlpha('gruby-bye', 'gruby', 0, 0.001, 'linear')
	doTweenAlpha('menda-bye', 'menda-paz', 0, 0.001, 'linear')
end

function onBeatHit()
	if curBeat == 32 then
		doTweenAlpha('menda-hi', 'menda-paz', 1, 0.001, 'linear')
	end
	if curBeat == 128 then
		doTweenAlpha('gruby-hi', 'gruby', 1, 0.001, 'linear')
	end
end