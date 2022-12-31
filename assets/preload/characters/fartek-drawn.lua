local originy = 0
function onCreate()

	originy = getProperty('dad.y')

end
function opponentNoteHit(i,d,t,s)
	if not getPropertyFromGroup('notes',i,'gfNote') then
		setProperty('dad.y',originy+20)
		doTweenY('wifjwif','dad',originy,0.08,'linear')
	end

end


function onBeatHit()
	if getProperty('dad.animation.curAnim.name') == "idle" then
		setProperty('dad.y',originy+40)
		doTweenY('wifjwiuuf','dad',originy,0.2,'sineOut')
	end

end