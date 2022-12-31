function onCreate()
	-- background shit
	makeLuaSprite('wall', 'backgrounds/hall/hall_wall', -550, -300);
	setLuaSpriteScrollFactor('wall', 0.8, 0.8);

	addLuaSprite('wall', false);
	
	makeLuaSprite('ground', 'backgrounds/hall/hall_ground', -550, -300);
	setLuaSpriteScrollFactor('ground', 0.9, 0.9);

	addLuaSprite('ground', false);

	makeLuaSprite('lighting', 'backgrounds/hall/HallLightingKiepski', -550, -300);
	setLuaSpriteScrollFactor('lighting', 0.9, 0.9);

	addLuaSprite('lighting', true);

	close(true);
end