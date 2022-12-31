function onCreate()
	        --[[get it? cause robotnik haha. (i am not funny)]]
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
	makeLuaSprite('funny-playing', 'now-playing-assets/cycu', -100, -300);
	setObjectCamera('funny-playing', 'other')
	addLuaSprite('funny-playing', true)
	scaleObject('funny-playing', 1.4, 1.4);
end

function onSongStart()
	doTweenAlpha('ImOutBro', 'funny-playing', 0, 0.5, 'CircInOut')
end

function onStepHit()
	local ya = 75 -- the funniest
	local ogPos = 570
    local hop = (ogPos + ya)
    if (getPropertyFromClass('ClientPrefs', 'downScroll') == true) then
        ogPos = 570
		hop = (ogPos + ya)
    else
        ogPos = 50
		hop = (ogPos - ya)
    end

	if ((curStep == 64) or (curStep == 88) or (curStep == 96) or (curStep == 120)) then
		noteTweenY('Jump Left Opponent', 0, hop, 0.22, 'CircInOut')
		noteTweenY('Jump Down Opponent', 1, hop, 0.22, 'CircInOut')
		noteTweenY('Jump Up Opponent', 2, hop, 0.22, 'CircInOut')
		noteTweenY('Jump Right Opponent', 3, hop, 0.22, 'CircInOut')
		noteTweenY('Jump Left Player', 4, hop, 0.22, 'CircInOut')
		noteTweenY('Jump Down Player', 5, hop, 0.22, 'CircInOut')
		noteTweenY('Jump Up Player', 6, hop, 0.22, 'CircInOut')
		noteTweenY('Jump Right Player', 7, hop, 0.22, 'CircInOut')
	end
	if ((curStep == 66) or (curStep == 90) or (curStep == 98) or (curStep == 122)) then
		noteTweenY('Go Back Left Opponent', 0,  ogPos, 0.22, 'CircInOut')
		noteTweenY('Go Back Down Opponent', 1,  ogPos, 0.22, 'CircInOut')
		noteTweenY('Go Back Up Opponent', 2,  ogPos, 0.22, 'CircInOut')
		noteTweenY('Go Back Right Opponent', 3,  ogPos, 0.22, 'CircInOut')
		noteTweenY('Go Back Left Player', 4,  ogPos, 0.22, 'CircInOut')
		noteTweenY('Go Back Down Player', 5,  ogPos, 0.22, 'CircInOut')
		noteTweenY('Go Back Up Player', 6,  ogPos, 0.22, 'CircInOut')
		noteTweenY('Go Back Right Player', 7,  ogPos, 0.22, 'CircInOut')
	end

	local f = 0
	if curStep <= 639 then
		f = 0
	else
		f = 384
	end

	if curStep == 256 + f then
		noteTweenY('Jump Down Player', 5, hop, 0.89, 'CircInOut')
	end
	if curStep == 264 + f then
		noteTweenY('Jump Right Player', 7, hop, 0.89, 'CircInOut')
	end
	if curStep == 272 + f then
		noteTweenY('Jump Up Player', 6, hop, 0.44, 'CircInOut')
	end
	if curStep == 276 + f then
		noteTweenY('Jump Left Player', 4, hop, 0.17, 'CircInOut')
	end
	if curStep == 278 + f then
		noteTweenY('Go Back Left Player', 4,  ogPos, 0.12, 'CircInOut')
		noteTweenY('Go Back Down Player', 5,  ogPos, 0.12, 'CircInOut')
		noteTweenY('Go Back Up Player', 6,  ogPos, 0.12, 'CircInOut')
		noteTweenY('Go Back Right Player', 7,  ogPos, 0.12, 'CircInOut')
	end

	if curStep == 288 + f then
		noteTweenY('Jump Down Opponent', 1, hop, 0.89, 'CircInOut')
	end
	if curStep == 296 + f then
		noteTweenY('Jump Right Opponent', 3, hop, 0.89, 'CircInOut')
	end
	if curStep == 304 + f then
		noteTweenY('Jump Up Opponent', 2, hop, 0.44, 'CircInOut')
	end
	if curStep == 308 + f then
		noteTweenY('Jump Left Opponent', 0, hop, 0.17, 'CircInOut')
	end
	if curStep == 310 + f then
		noteTweenY('Go Back Left Opponent', 0,  ogPos, 0.12, 'CircInOut')
		noteTweenY('Go Back Down Opponent', 1,  ogPos, 0.12, 'CircInOut')
		noteTweenY('Go Back Up Opponent', 2,  ogPos, 0.12, 'CircInOut')
		noteTweenY('Go Back Right Opponent', 3,  ogPos, 0.12, 'CircInOut')
	end

	if curStep == 320 + f then
		noteTweenY('Jump Down Player', 5, hop, 0.89, 'CircInOut')
	end
	if curStep == 328 + f then
		noteTweenY('Jump Right Player', 7, hop, 0.89, 'CircInOut')
	end
	if curStep == 336 + f then
		noteTweenY('Jump Up Player', 6, hop, 0.44, 'CircInOut')
	end
	if curStep == 340 + f then
		noteTweenY('Jump Left Player', 4, hop, 0.17, 'CircInOut')
	end
	if curStep == 342 + f then
		noteTweenY('Go Back Left Player', 4,  ogPos, 0.12, 'CircInOut')
		noteTweenY('Go Back Down Player', 5,  ogPos, 0.12, 'CircInOut')
		noteTweenY('Go Back Up Player', 6,  ogPos, 0.12, 'CircInOut')
		noteTweenY('Go Back Right Player', 7,  ogPos, 0.12, 'CircInOut')
	end

	if curStep == 352 + f then
		noteTweenY('Jump Down Opponent', 1, hop, 0.89, 'CircInOut')
	end
	if curStep == 360 + f then
		noteTweenY('Jump Right Opponent', 3, hop, 0.89, 'CircInOut')
	end
	if curStep == 368 + f then
		noteTweenY('Jump Up Opponent', 2, hop, 0.44, 'CircInOut')
	end
	if curStep == 372 + f then
		noteTweenY('Jump Left Opponent', 0, hop, 0.17, 'CircInOut')
	end
	if curStep == 374 + f then
		noteTweenY('Go Back Left Opponent', 0,  ogPos, 0.12, 'CircInOut')
		noteTweenY('Go Back Down Opponent', 1,  ogPos, 0.12, 'CircInOut')
		noteTweenY('Go Back Up Opponent', 2,  ogPos, 0.12, 'CircInOut')
		noteTweenY('Go Back Right Opponent', 3,  ogPos, 0.12, 'CircInOut')
	end

	local a = 0.44
	local b = 0.33
	local c = 0.66
	local d = 0.55

	local e = 0
	if curStep <= 511 then
		e = 0
	elseif curStep <= 767 then
		e = 128
	else
		e = 384
	end

	-- script stuff for notes that have 778 sustain length
	if curStep == 384 + e or curStep == 392 + e or curStep == 424 + e or curStep == 448 + e or curStep == 456 + e or curStep == 488 + e then
		noteTweenY('Jump Left Opponent', 0, hop, a, 'CircInOut')
		noteTweenY('Jump Down Opponent', 1, hop, a, 'CircInOut')
		noteTweenY('Jump Up Opponent', 2, hop, a, 'CircInOut')
		noteTweenY('Jump Right Opponent', 3, hop, a, 'CircInOut')
		noteTweenY('Jump Left Player', 4, hop, a, 'CircInOut')
		noteTweenY('Jump Down Player', 5, hop, a, 'CircInOut')
		noteTweenY('Jump Up Player', 6, hop, a, 'CircInOut')
		noteTweenY('Jump Right Player', 7, hop, a, 'CircInOut')
	end
	if curStep == 388 + e or curStep == 396 + e or curStep == 428 + e or curStep == 452 + e or curStep == 460 + e or curStep == 492 + e then
		noteTweenY('Go Back Left Opponent', 0,  ogPos, a, 'CircInOut')
		noteTweenY('Go Back Down Opponent', 1,  ogPos, a, 'CircInOut')
		noteTweenY('Go Back Up Opponent', 2,  ogPos, a, 'CircInOut')
		noteTweenY('Go Back Right Opponent', 3,  ogPos, a, 'CircInOut')
		noteTweenY('Go Back Left Player', 4,  ogPos, a, 'CircInOut')
		noteTweenY('Go Back Down Player', 5,  ogPos, a, 'CircInOut')
		noteTweenY('Go Back Up Player', 6,  ogPos, a, 'CircInOut')
		noteTweenY('Go Back Right Player', 7,  ogPos, a, 'CircInOut')
	end

	-- script stuff for notes that have 556 sustain length
	if curStep == 400 + e or curStep == 418 + e or curStep == 432 + e or curStep == 464 + e or curStep == 482 + e or curStep == 496 + e then
		noteTweenY('Jump Left Opponent', 0, hop, b, 'CircInOut')
		noteTweenY('Jump Down Opponent', 1, hop, b, 'CircInOut')
		noteTweenY('Jump Up Opponent', 2, hop, b, 'CircInOut')
		noteTweenY('Jump Right Opponent', 3, hop, b, 'CircInOut')
		noteTweenY('Jump Left Player', 4, hop, b, 'CircInOut')
		noteTweenY('Jump Down Player', 5, hop, b, 'CircInOut')
		noteTweenY('Jump Up Player', 6, hop, b, 'CircInOut')
		noteTweenY('Jump Right Player', 7, hop, b, 'CircInOut')
	end
	if curStep == 403 or curStep == 421 or curStep == 435 or curStep == 467 or curStep == 485 or curStep == 499 then
		noteTweenY('Go Back Left Opponent', 0,  ogPos, b, 'CircInOut')
		noteTweenY('Go Back Down Opponent', 1,  ogPos, b, 'CircInOut')
		noteTweenY('Go Back Up Opponent', 2,  ogPos, b, 'CircInOut')
		noteTweenY('Go Back Right Opponent', 3,  ogPos, b, 'CircInOut')
		noteTweenY('Go Back Left Player', 4,  ogPos, b, 'CircInOut')
		noteTweenY('Go Back Down Player', 5,  ogPos, b, 'CircInOut')
		noteTweenY('Go Back Up Player', 6,  ogPos, b, 'CircInOut')
		noteTweenY('Go Back Right Player', 7,  ogPos, b, 'CircInOut')
	end

	-- script stuff for notes that have 1222 sustain length
	if curStep == 406 + e or curStep == 470 + e then
		noteTweenY('Jump Left Opponent', 0, hop, c, 'CircInOut')
		noteTweenY('Jump Down Opponent', 1, hop, c, 'CircInOut')
		noteTweenY('Jump Up Opponent', 2, hop, c, 'CircInOut')
		noteTweenY('Jump Right Opponent', 3, hop, c, 'CircInOut')
		noteTweenY('Jump Left Player', 4, hop, c, 'CircInOut')
		noteTweenY('Jump Down Player', 5, hop, c, 'CircInOut')
		noteTweenY('Jump Up Player', 6, hop, c, 'CircInOut')
		noteTweenY('Jump Right Player', 7, hop, c, 'CircInOut')
	end
	if curStep == 412 + e or curStep == 476 + e then
		noteTweenY('Go Back Left Opponent', 0,  ogPos, c, 'CircInOut')
		noteTweenY('Go Back Down Opponent', 1,  ogPos, c, 'CircInOut')
		noteTweenY('Go Back Up Opponent', 2,  ogPos, c, 'CircInOut')
		noteTweenY('Go Back Right Opponent', 3,  ogPos, c, 'CircInOut')
		noteTweenY('Go Back Left Player', 4,  ogPos, c, 'CircInOut')
		noteTweenY('Go Back Down Player', 5,  ogPos, c, 'CircInOut')
		noteTweenY('Go Back Up Player', 6,  ogPos, c, 'CircInOut')
		noteTweenY('Go Back Right Player', 7,  ogPos, c, 'CircInOut')
	end

	-- script stuff for notes that have 1000 sustain length
	if curStep == 438 + e or curStep == 502 + e then
		noteTweenY('Jump Left Opponent', 0, hop, d, 'CircInOut')
		noteTweenY('Jump Down Opponent', 1, hop, d, 'CircInOut')
		noteTweenY('Jump Up Opponent', 2, hop, d, 'CircInOut')
		noteTweenY('Jump Right Opponent', 3, hop, d, 'CircInOut')
		noteTweenY('Jump Left Player', 4, hop, d, 'CircInOut')
		noteTweenY('Jump Down Player', 5, hop, d, 'CircInOut')
		noteTweenY('Jump Up Player', 6, hop, d, 'CircInOut')
		noteTweenY('Jump Right Player', 7, hop, d, 'CircInOut')
	end
	if curStep == 443 + e or curStep == 507 + e then
		noteTweenY('Go Back Left Opponent', 0,  ogPos, d, 'CircInOut')
		noteTweenY('Go Back Down Opponent', 1,  ogPos, d, 'CircInOut')
		noteTweenY('Go Back Up Opponent', 2,  ogPos, d, 'CircInOut')
		noteTweenY('Go Back Right Opponent', 3,  ogPos, d, 'CircInOut')
		noteTweenY('Go Back Left Player', 4,  ogPos, d, 'CircInOut')
		noteTweenY('Go Back Down Player', 5,  ogPos, d, 'CircInOut')
		noteTweenY('Go Back Up Player', 6,  ogPos, d, 'CircInOut')
		noteTweenY('Go Back Right Player', 7,  ogPos, d, 'CircInOut')
	end
end