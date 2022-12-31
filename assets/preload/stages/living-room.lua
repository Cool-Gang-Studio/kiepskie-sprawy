function onCreate()
	makeLuaSprite('lr-roof', 'backgrounds/living-room/roof', -200, -100);
	setScrollFactor('lr-roof', 0, 0);

	makeLuaSprite('lr-floor', 'backgrounds/living-room/floor', -400, 500);
	setScrollFactor('lr-floor', 1, 1);

	makeLuaSprite('lr-wall', 'backgrounds/living-room/wall', -500, -100);
	setScrollFactor('lr-wall', 1, 1);

	makeLuaSprite('lr-couch', 'backgrounds/living-room/couch', 450, 300);
	setScrollFactor('lr-couch', 1, 1);

	makeLuaSprite('lr-armch', 'backgrounds/living-room/armchair', -250, 450);
	setScrollFactor('lr-armch', 1.1, 1.1);

	makeLuaSprite('lr-table', 'backgrounds/living-room/table', -450, 0);
	setScrollFactor('lr-table', 1.2, 1.2);

	makeLuaSprite('lr-thing', 'backgrounds/living-room/thingy', -500, 0);
	setScrollFactor('lr-thing', 1.3, 1.3);

	addLuaSprite('lr-roof', false);
	addLuaSprite('lr-floor', false);
	addLuaSprite('lr-wall', false);
	addLuaSprite('lr-couch', false);
	addLuaSprite('lr-armch', true);
	addLuaSprite('lr-table', true);
	addLuaSprite('lr-thing', true);

	close(true);
end