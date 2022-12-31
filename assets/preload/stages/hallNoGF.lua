function onCreate()
	-- background shit
	makeLuaSprite('wall', 'backgrounds/hall/hall_wall', -550, -300);
	setScrollFactor('wall', 0.8, 0.8);

	addLuaSprite('wall', false);
	
	makeLuaSprite('ground', 'backgrounds/hall/hall_ground', -550, -300);
	setScrollFactor('ground', 0.9, 0.9);

	addLuaSprite('ground', false);

	close(true);
end