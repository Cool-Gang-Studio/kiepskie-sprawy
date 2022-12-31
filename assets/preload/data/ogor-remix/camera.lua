function onStepHit()
	if curStep == 256 then
		setProperty("defaultCamZoom", 1.1) 
	end
	if curStep == 512 then
		setProperty("defaultCamZoom", 0.85) 
	end
	if curStep == 768 then
		setProperty("defaultCamZoom", 1.1) 
	end
	if curStep == 1024 then
		setProperty("defaultCamZoom", 0.85) 
	end
end