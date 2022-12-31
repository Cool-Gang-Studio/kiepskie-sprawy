function onCreate()
	makeLuaSprite('wall', 'backgrounds/hall/hall_wall', -550, -300);
	setLuaSpriteScrollFactor('wall', 0.8, 0.8);

	makeLuaSprite('ground', 'backgrounds/hall/hall_ground', -550, -300);
	setLuaSpriteScrollFactor('ground', 0.9, 0.9);

	makeLuaSprite('lighting', 'backgrounds/hall/korzenie-lighting', -300, -150);
	setLuaSpriteScrollFactor('lighting', 0, 0);

	makeLuaSprite('vingette', 'backgrounds/hall/korzenie-vingette', -200, -100);
	setLuaSpriteScrollFactor('vingette', 0, 0);

	makeLuaSprite('black', 'backgrounds/black', 0, 0);
	setLuaSpriteScrollFactor('black', 0, 0);

	addLuaSprite('wall', false);
	addLuaSprite('ground', false);
	addLuaSprite('lighting', false);
	addLuaSprite('vingette', true);
	addLuaSprite('black', true);
end