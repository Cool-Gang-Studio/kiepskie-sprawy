function onCreate()
	makeLuaSprite('white', '', -100, -100)
	makeGraphic('white', 3000, 1400, '0xFFFFFFFF')
	setProperty('white.alpha', 0)
	setObjectCamera('white', 'hud')
	addLuaSprite('white', true)

	playSound('song-start', '1')
	makeLuaSprite('funny-playing', 'now-playing-assets/renta', -100, -300);
	setObjectCamera('funny-playing', 'other')
	addLuaSprite('funny-playing', true)
	scaleObject('funny-playing', 1.4, 1.4);
end

function onSongStart()
	doTweenAlpha('ImOutBro', 'funny-playing', 0, 0.5, 'CircInOut')
end

function onStepHit()
	if curStep == 767 then
		doTweenAlpha('WhiteScreenTween', 'white', 1, 0.13, 'CircInOut')
	end
	if curStep == 768 then
		makeAnimatedLuaSprite('DNBdave', 'characters/stara-baba', 1090, 110)
		addAnimationByPrefix('DNBdave', 'idle', 'idle', 24, true)
		playAnim('DNBdave', 'idle', true, false, 0)
		scaleObject('DNBdave', 1.1, 1.1)
		setProperty('DNBdave.flipX', true)
		addLuaSprite('DNBdave', false)

		makeAnimatedLuaSprite('cycek', 'characters/waldek', 60, 100)
		addAnimationByPrefix('cycek', 'idle', 'idle', 24, true)
		playAnim('cycek', 'idle', true, false, 0)
		setProperty('cycek.flipX', false)
		addLuaSprite('cycek', false)
	end
	if curStep == 770 then
		doTweenAlpha('WhiteScreenTween', 'white', 0, 0.27, 'CircInOut')
	end
end