function onEvent(name)
   if name == 'NoteXY' then
     local keepScroll = false
     ---Note X
     local lx = getRandomInt(0, 296.25);
     local dx = getRandomInt(346.25, 592.5);
     local ux = getRandomInt(642.5, 888.75);
     local rx = getRandomInt(938.75, 1185);
     ---Note Y
     local ly = getRandomInt(100, 630);
     ---Note Angle
     local la = getRandomInt(0, 360);
     local da = getRandomInt(0, 360);
     local ua = getRandomInt(0, 360);
     local ra = getRandomInt(0, 360);
     ---Note moving to X
     noteTweenX('NoteMove1', 4, lx, 0.5, 'quadInOut');
     noteTweenX('NoteMove2', 5, dx, 0.5, 'quadInOut');
     noteTweenX('NoteMove3', 6, ux, 0.5, 'quadInOut');
     noteTweenX('NoteMove4', 7, rx, 0.5, 'quadInOut');
     ---Note moving to Angle
     noteTweenAngle('NoteAngle1', 4, la, 0.5, 'quadInOut');
     noteTweenAngle('NoteAngle2', 5, da, 0.5, 'quadInOut');
     noteTweenAngle('NoteAngle3', 6, ua, 0.5, 'quadInOut');
     noteTweenAngle('NoteAngle4', 7, ra, 0.5, 'quadInOut');
     ---Note moving to Y
     noteTweenY('NoteMove5', 4, ly, 0.5, 'quadInOut');
     if ly == 315 then
       local dy = getRandomInt(0, 10);
       local uy = getRandomInt(0, 10);
       local ry = getRandomInt(0, 10);

       noteTweenY('NoteMove6', 5, (getProperty(defaultPlayerStrumY0) - dy), 0.5, 'quadInOut');
       noteTweenY('NoteMove7', 6, (getProperty(defaultPlayerStrumY1) + uy), 0.5, 'quadInOut');
       noteTweenY('NoteMove8', 7, (getProperty(defaultPlayerStrumY2) - ry), 0.5, 'quadInOut');
     elseif ly > 315 then
       local dyr = getRandomInt(316, 630);
       local uyr = getRandomInt(316, 630);
       local ryr = getRandomInt(316, 630);

       noteTweenY('NoteMove9', 5, dyr, 0.5, 'quadInOut');
       noteTweenY('NoteMove10', 6, uyr, 0.5, 'quadInOut');
       noteTweenY('NoteMove11', 7, ryr, 0.5, 'quadInOut');
       for i = 0,7 do
         setPropertyFromGroup('playerStrums', i, 'downScroll', true);
       end
     elseif ly < 315 then
       local dyl = getRandomInt(100, 314);
       local uyl = getRandomInt(100, 314);
       local ryl = getRandomInt(100, 314);

       noteTweenY('NoteMove12', 5, dyl, 0.5, 'quadInOut');
       noteTweenY('NoteMove13', 6, uyl, 0.5, 'quadInOut');
       noteTweenY('NoteMove14', 7, ryl, 0.5, 'quadInOut');
       for i = 0,7 do
         setPropertyFromGroup('playerStrums', i, 'downScroll', false);
       end
     end
   end
end