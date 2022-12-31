function onCreate()
	-- background shit
	makeLuaSprite('wall', 'backgrounds/basement/basement_wall', -550, -300);
	setLuaSpriteScrollFactor('wall', 0.8, 0.8);

	addLuaSprite('wall', false);
	
	makeLuaSprite('ground', 'backgrounds/basement/basement_ground', -550, -300);
	setLuaSpriteScrollFactor('ground', 0.9, 0.9);

	addLuaSprite('ground', false);

	makeLuaSprite('shelves', 'backgrounds/basement/basment_shelves', -550, -330);
	setLuaSpriteScrollFactor('shelves', 0.95, 0.95);

	addLuaSprite('shelves', false);

	makeLuaSprite('light', 'backgrounds/basement/basement_light', -550, -245);
	setLuaSpriteScrollFactor('light', 1.2, 1.2);

	addLuaSprite('light', true);

	close(true);
end