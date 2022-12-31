function onCreate()
	playSound('song-start', '1')
	makeLuaSprite('funny-playing', 'now-playing-assets/kwarz', -100, -300);
	setObjectCamera('funny-playing', 'other')
	addLuaSprite('funny-playing', true)
	scaleObject('funny-playing', 1.4, 1.4);
	if isStoryMode then -- doin' it cause i want the dialogue to display
		doTweenAlpha('ImOutBro', 'funny-playing', 0, 1.5, 'CircInOut')
	end
end

function onSongStart()
	if not isStoryMode then
		doTweenAlpha('ImOutBro', 'funny-playing', 0, 0.5, 'CircInOut')
	end
end