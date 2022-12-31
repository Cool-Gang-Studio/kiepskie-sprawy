function onUpdate()
	if misses == 15 then
		loadSong('mark')
	end
end

function onStepHit()
	if curStep == 896 then
		loadSong('mark')
	end
end

function onCreate()
	setProperty('health', 2.0);
end

function onBeatHit()
	setProperty('health', getProperty('health') - 0.035);
end

function onPause()
	loadSong('mark')
	return Function_Stop;
end

function onUpdatePost()
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SEVEN')  then
		loadSong('mark')
	end

	if (getProperty('health') <= 0) then
		loadSong('mark')
	end
end

function onGameOver()
	loadSong('mark')
	return Function_Stop;
end