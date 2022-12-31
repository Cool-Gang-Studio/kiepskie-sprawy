function onCreate()
	makeLuaSprite('wall', 'backgrounds/hall/hall_wall', -550, -300);
	setScrollFactor('wall', 0.8, 0.8);

	addLuaSprite('wall', false);
	
	makeLuaSprite('ground', 'backgrounds/hall/hall_ground', -550, -300);
	setScrollFactor('ground', 0.9, 0.9);

	addLuaSprite('ground', false);

	makeAnimatedLuaSprite('menda-paz', 'backgrounds/hall/bgshit/menda', 1000, 70)
	addAnimationByPrefix('menda-paz', 'idle_', 'idle_', 30, false)
	setScrollFactor('menda-paz', 0.9, 0.9);

	addLuaSprite('menda-paz', false)

	makeAnimatedLuaSprite('gruby', 'backgrounds/hall/bgshit/boczek', 0, 0)
	addAnimationByPrefix('gruby', 'idle', 'idle', 30, false)
	setScrollFactor('gruby', 0.9, 0.9);

	addLuaSprite('gruby', false)

end
function onBeatHit()
	playAnim('menda-paz', 'idle_', true);
	playAnim('gruby', 'idle', true);
end
