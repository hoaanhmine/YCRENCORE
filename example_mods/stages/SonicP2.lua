 local defaultNotePos = {}; --thx fl4re for this script lmaoooo
local move = 40; -- how much it moves before going the other direction

function onCreate()
	--ur mother
	precacheImage('characters/XenoEncoreBF');
	precacheImage('characters/xenoSus');
	precacheImage('characters/SonicP2mad');
	precacheImage('SonicP2/XenoBG');
	precacheImage('SonicP2/XenoBG2');
	precacheImage('SonicP2/greenhillsbiggggg');
	precacheImage('characters/ycr_sonic_sheet');
	precacheImage('characters/ycr_boyfriend_sprite_sheet');
	precacheImage('PIXEL_NOTE_assets');

	makeLuaSprite('thefrickinbg', 'SonicP2/Youcantrunbg', -285, -75); --wtf

	scaleObject('thefrickinbg', 1.95, 1.95);
	setProperty('thefrickinbg.antialiasing', true);
	
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-encore-ded');
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'exe_gameover');
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'exe_gameOverEnd');
	setProperty("skipCountdown", true);
	
	makeLuaSprite('BlackFlash', 'dablack', -700, 0);
	scaleObject('BlackFlash', 18, 22);
	setProperty('BlackFlash.visible', true);
	
	addLuaSprite('thefrickinbg', false);
	addLuaSprite('BlackFlash', true);
end

function onSongStart()
    for i = 0,7 do 
        x = getPropertyFromGroup('strumLineNotes', i, 'x')
 
        y = getPropertyFromGroup('strumLineNotes', i, 'y')
 
        table.insert(defaultNotePos, {x,y})
    end
end -- get the property of the note

function onUpdate(elapsed)
	setProperty('timeBarBG.visible', false);
    setProperty('timeBar.visible', false);
    setProperty('timeTxt.visible', false);
    songPos = getPropertyFromClass('Conductor', 'songPosition');
 
    currentBeat = (songPos / 350) * (bpm / 160) --this is basically speed, idk how to adjust it

    if curStep >= 1296 and curStep < 2000 then
        for i = 0,7 do --the amount of notes like 0,7 is all, 0.3 is all opponent and 4,7 is all player. to do single just 0,0
            setPropertyFromGroup('strumLineNotes', i, 'x', defaultNotePos[i + 1][1] + move * math.sin((currentBeat + i*2) * math.pi))
                                                                                    -- ^  these can be numbers itself dw
            setPropertyFromGroup('strumLineNotes', i, 'y', defaultNotePos[i + 1][2] + move * math.cos((currentBeat + i*0.3) * math.pi))
        end                                                          --this number is to determine how the arrows move ^
    end                                                              --odd numbers (ex. 1, 3) are for zig zag and even numbers (ex. 2, 4) are for the whole thing, 0.3 and under is waving
    if curStep == 5000 then --this is to revert back to original position
        for i = 0,7 do 
            setPropertyFromGroup('strumLineNotes', i, 'x', defaultNotePos[i + 1][1])
            setPropertyFromGroup('strumLineNotes', i, 'y', defaultNotePos[i + 1][2])
        end
    end
end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then
		if value1 == 'show' then
        setProperty('scoreTxt.visible', true)
        setProperty('healthBar.visible', true)
        setProperty('healthBarBG.visible', true)
        setProperty('iconP1.visible', true)
        setProperty('iconP2.visible', true)
        setProperty('timeTxt.visible', true)
        setProperty('timeBar.visible', true)
        setProperty('timeBarBG.visible', true)
        setPropertyFromGroup('opponentStrums', 0, 'alpha', 1)
        setPropertyFromGroup('opponentStrums', 1, 'alpha', 1)
        setPropertyFromGroup('opponentStrums', 2, 'alpha', 1)
        setPropertyFromGroup('opponentStrums', 3, 'alpha', 1)
        setPropertyFromGroup('playerStrums', 0, 'alpha', 1)
        setPropertyFromGroup('playerStrums', 1, 'alpha', 1)
        setPropertyFromGroup('playerStrums', 2, 'alpha', 1)
        setPropertyFromGroup('playerStrums', 3, 'alpha', 1)
		end
		
		if value1 == 'hide' then
        setProperty('scoreTxt.visible', false)
        setProperty('healthBar.visible', false) -- if you r reading this, you r gae lol
        setProperty('healthBarBG.visible', false)
        setProperty('iconP1.visible', false)
        setProperty('iconP2.visible', false)
        setProperty('timeTxt.visible', false)
        setProperty('timeBar.visible', false)
        setProperty('timeBarBG.visible', false)
        setPropertyFromGroup('opponentStrums', 0, 'alpha', 0)
        setPropertyFromGroup('opponentStrums', 1, 'alpha', 0)
        setPropertyFromGroup('opponentStrums', 2, 'alpha', 0)
        setPropertyFromGroup('opponentStrums', 3, 'alpha', 0)
        setPropertyFromGroup('playerStrums', 0, 'alpha', 0)
        setPropertyFromGroup('playerStrums', 1, 'alpha', 0)
        setPropertyFromGroup('playerStrums', 2, 'alpha', 0)
        setPropertyFromGroup('playerStrums', 3, 'alpha', 0)
		end
	end
end

function onStepHit()
	if curStep == 528 then
		setProperty('defaultCamZoom',0.9)
		triggerEvent('Change Character', 'bf', 'bf-pixel-sonic');

		triggerEvent('Change Character', 'dad', 'PixelExe');

		setCharacterX('boyfriend', 1150);

		setCharacterY('boyfriend', -160);

		setCharacterX('dad', 150);

		setCharacterY('dad', 180);

		setProperty('thefrickinbg.visible', false);

		setProperty('thefrickinbg2.antialiasing', false);

		makeLuaSprite('thefrickinbg2', 'SonicP2/greenhillsbiggggg', -572, -426);

		addLuaSprite('thefrickinbg2', false);
		
		setPropertyFromGroup('playerStrums', 0, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('playerStrums', 1, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('playerStrums', 2, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('playerStrums', 3, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('opponentStrums', 0, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('opponentStrums', 1, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('opponentStrums', 2, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('opponentStrums', 3, 'texture', 'PIXEL_NOTE_assets');
	
	end
	if curStep == 784 then
		setProperty('defaultCamZoom',0.8)
		triggerEvent('Change Character', 'bf', 'XenoEncoreBF');

		triggerEvent('Change Character', 'dad', 'xenoSus');

		setCharacterX('boyfriend', 830);

		setCharacterY('boyfriend', 170);

		setCharacterX('dad', 30);

		setCharacterY('dad', 110);
		
		setPropertyFromGroup('playerStrums', 0, 'texture', 'NOTE_assets');
		setPropertyFromGroup('playerStrums', 1, 'texture', 'NOTE_assets');
		setPropertyFromGroup('playerStrums', 2, 'texture', 'NOTE_assets');
		setPropertyFromGroup('playerStrums', 3, 'texture', 'NOTE_assets');
		setPropertyFromGroup('opponentStrums', 0, 'texture', 'NOTE_assets');
		setPropertyFromGroup('opponentStrums', 1, 'texture', 'NOTE_assets');
		setPropertyFromGroup('opponentStrums', 2, 'texture', 'NOTE_assets');
		setPropertyFromGroup('opponentStrums', 3, 'texture', 'NOTE_assets');

		setProperty('thefrickinbg2.visible', false);

		makeLuaSprite('sussyXenoBG', 'SonicP2/XenoBG', -285, -55); --imagine being lazy lol
		scaleObject('sussyXenoBG', 1, 1);
		setProperty('sussyXenoBG.antialiasing', true);
		setProperty('sussyXenoBG.visible', true);
		
		makeLuaSprite('sussyXenoBG2', 'SonicP2/XenoBG2', -285, -55); 
		scaleObject('sussyXenoBG2', 1, 1);
		setProperty('sussyXenoBG2.antialiasing', true);
		setProperty('sussyXenoBG2.visible', true);

		addLuaSprite('sussyXenoBG', false);
		addLuaSprite('sussyXenoBG2', true);
    end
	if curStep == 912 then
		setCharacterX('boyfriend', 830);
		setCharacterY('boyfriend', 100);
		setCharacterX('dad', 30);
		setCharacterY('dad', 160);

		triggerEvent('Change Character', 'dad', 'ycr-mad');
		triggerEvent('Change Character', 'bf', 'bf-encore');
		setProperty('thefrickinbg.visible', true);
		setProperty('sussyXenoBG.visible', false);
		setProperty('sussyXenoBG2.visible', false);
	end
	if curStep == 1424 then
		triggerEvent('Change Character', 'dad', 'xenoSus');
		triggerEvent('Change Character', 'bf', 'XenoEncoreBF');
		setProperty('thefrickinbg.visible', false);
		setProperty('sussyXenoBG.visible', true);
		setProperty('sussyXenoBG2.visible', true);

		setCharacterX('boyfriend', 830);
		setCharacterY('boyfriend', 170);

		setCharacterX('dad', 30);
		setCharacterY('dad', 110);
	end
end