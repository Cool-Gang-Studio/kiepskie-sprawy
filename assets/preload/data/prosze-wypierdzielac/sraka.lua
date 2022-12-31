function onCreate()
    setProperty('skipCountdown',true)
    setPropertyFromClass('flixel.FlxG','sound.music.volume',0)
end

function onSongStart()
    setPropertyFromClass('flixel.FlxG','sound.music.volume',1)
end