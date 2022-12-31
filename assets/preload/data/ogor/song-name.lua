function onCreate()
	if not isStoryMode then
		-- this shit is hard-coded on story mode.
		playSound('song-start', '1')
		makeLuaSprite('funny-playing', 'now-playing-assets/ogor', -100, -300);
		setObjectCamera('funny-playing', 'other')
		addLuaSprite('funny-playing', true)
		scaleObject('funny-playing', 1.4, 1.4);
	end
end

function onSongStart()
	if not isStoryMode then
		doTweenAlpha('ImOutBro', 'funny-playing', 0, 0.5, 'CircInOut')
	end
end