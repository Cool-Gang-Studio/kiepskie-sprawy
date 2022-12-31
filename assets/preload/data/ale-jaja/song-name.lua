function onCreate()
	makeAnimatedLuaSprite('cycek', 'characters/waldek', 60, 100)
	addAnimationByPrefix('cycek', 'idle', 'idle', 24, true)
	playAnim('cycek', 'idle', true, false, 0)
	setProperty('cycek.flipX', false)
	addLuaSprite('cycek', false)

	makeAnimatedLuaSprite('bezrobotnik', 'characters/ferdek', 900, 175)
	addAnimationByPrefix('bezrobotnik', 'idle', 'idle', 24, true)
	playAnim('bezrobotnik', 'idle', true, false, 0)
	scaleObject('bezrobotnik', 0.9, 0.9)
	setProperty('bezrobotnik.flipX', true)
	addLuaSprite('bezrobotnik', false)
	
	makeAnimatedLuaSprite('DNBdave', 'characters/stara-baba', 1090, 110)
	addAnimationByPrefix('DNBdave', 'idle', 'idle', 24, true)
	playAnim('DNBdave', 'idle', true, false, 0)
	scaleObject('DNBdave', 1.1, 1.1)
	setProperty('DNBdave.flipX', true)
	addLuaSprite('DNBdave', false)

	playSound('song-start', '1')
	makeLuaSprite('funny-playing', 'now-playing-assets/ale-jaja', -100, -300);
	setObjectCamera('funny-playing', 'other')
	addLuaSprite('funny-playing', true)
	scaleObject('funny-playing', 1.4, 1.4);
end

function onSongStart()
	doTweenAlpha('ImOutBro', 'funny-playing', 0, 0.5, 'CircInOut')
end