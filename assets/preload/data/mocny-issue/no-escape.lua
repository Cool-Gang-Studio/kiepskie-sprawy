function onUpdatePost()
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SEVEN')  then
		addHaxeLibrary('CoolUtil')
		addHaxeLibrary('Application', 'lime.app')
		runHaxeCode([[
			CoolUtil.browserLoad("https://www.youtube.com/watch?v=NGV3hpjmXr4");
			Application.current.window.close();
		]])
	end
end