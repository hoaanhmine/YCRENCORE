--Recreation by RamenDominoes
--Credit appreciated, but not necessary thanks <3


function onCreate()

	--ALL OF THE SHIT !! (theres so much shit)
	
	--------THE MF UHHHH UNDERLAY--------

	--MAIN SECTION
	makeLuaSprite('Main', 'CREDITTEXT', 350, -1300)
	makeGraphic('Main', 570, 1300, '808080')
	setObjectCamera('Main', 'other')
	setProperty('Main.alpha', 0.4)
	addLuaSprite('Main', true)
	
	--BorderLeft
	makeLuaSprite('BorderLeft', 'OUTLINE', 350, -1300)
	makeGraphic('BorderLeft', 4, 1300, 'FFFFFF')
	setObjectCamera('BorderLeft', 'other')
	setProperty('BorderLeft.alpha', 0.6)
	addLuaSprite('BorderLeft', true)

	--BorderRight
	makeLuaSprite('BorderRight', 'OUTLINE', 920, -1300)
	makeGraphic('BorderRight', 4, 1300, 'FFFFFF')
	setObjectCamera('BorderRight', 'other')
	setProperty('BorderRight.alpha', 0.6)
	addLuaSprite('BorderRight', true)

-----------------------------------------------------------------------

	--------THE MF UHHHH SUBHEADERS!!--------

	--CREDITS TEXT
	makeLuaText('CREDITS', 'CREDITS', 1000, 132, -1000)
	setTextAlignment('CREDITS', 'center')
	setTextSize('CREDITS', 50)
	setObjectCamera('CREDITS', 'other')
	addLuaText('CREDITS')
	
	--CODER TEXT
	makeLuaText('CODERS', 'CODE', 1000, 132, -1000)
	setTextAlignment('CODERS', 'center')
	setTextSize('CODERS', 35)
	setObjectCamera('CODERS', 'other')
	addLuaText('CODERS')

	--ARTWORK TEXT
	makeLuaText('ARTISTS', 'ARTWORK', 1000, 132, -1000)
	setTextAlignment('ARTISTS', 'center')
	setTextSize('ARTISTS', 35)
	setObjectCamera('ARTISTS', 'other')
	addLuaText('ARTISTS')
	
	--MUSIC TEXT
	makeLuaText('MUSICIANS', 'MUSIC', 1000, 132, -1000)
	setTextAlignment('MUSICIANS', 'center')
	setTextSize('MUSICIANS', 35)
	setObjectCamera('MUSICIANS', 'other')
	addLuaText('MUSICIANS')
	
	--CHARTING TEXT
	makeLuaText('CHARTERS', 'CHARTING', 1000, 132, -1000)
	setTextAlignment('CHARTERS', 'center')
	setTextSize('CHARTERS', 35)
	setObjectCamera('CHARTERS', 'other')
	addLuaText('CHARTERS')

-----------------------------------------------------------------------

	--LIST OF THE CREW MEMBERS!!!
	--(IF THERE ARE LESS CREW MEMBERS THAN WHATS NEEDED JUST DELETE THE SLOTS YOU AREN'T USING!!!)	
	--(IF YOU NEED MORE SLOTS FOR EACH CATEGORY THEN YOU'LL HAVE TO ADD THEM YOURSELF, SORRY!!)	

	--------CODING CREW--------
	--CODER 1
	makeLuaText('CODER1', 'ZdzichuOfficial', 1000, 132, -1000)
	setTextAlignment('CODER1', 'center')
	setTextSize('CODER1', 25)
	setObjectCamera('CODER1', 'other')
	addLuaText('CODER1')
	
	--CODER 2
	makeLuaText('CODER2', 'RamenDominoes', 1000, 132, -1000)
	setTextAlignment('CODER2', 'center')
	setTextSize('CODER2', 25)
	setObjectCamera('CODER2', 'other')
	addLuaText('CODER2')
	
	--------ARTIST CREW--------
		
	--ARTIST 1
	makeLuaText('ARTIST1', 'SIIVKOI', 1000, 132, -1000)
	setTextAlignment('ARTIST1', 'center')
	setTextSize('ARTIST1', 25)
	setObjectCamera('ARTIST1', 'other')
	addLuaText('ARTIST1')
	
	--ARTIST 2
	makeLuaText('ARTIST2', 'Phill_Draws', 1000, 132, -1000)
	setTextAlignment('ARTIST2', 'center')
	setTextSize('ARTIST2', 25)
	setObjectCamera('ARTIST2', 'other')
	addLuaText('ARTIST2')

	--ARTIST 3
	makeLuaText('ARTIST3', 'GoshaCher360', 1000, 132, -1000)
	setTextAlignment('ARTIST3', 'center')
	setTextSize('ARTIST3', 25)
	setObjectCamera('ARTIST3', 'other')
	addLuaText('ARTIST3')

	--ARTIST 4
	makeLuaText('ARTIST4', 'Biagotmilkandjelly', 1000, 132, -1000)
	setTextAlignment('ARTIST4', 'center')
	setTextSize('ARTIST4', 25)
	setObjectCamera('ARTIST4', 'other')
	addLuaText('ARTIST4')
	
	--------MUSIC CREW--------
	
	--MUSICIAN 1
	makeLuaText('MUSICIAN1', 'DanlyDaMusicant', 1000, 132, -1000)
	setTextAlignment('MUSICIAN1', 'center')
	setTextSize('MUSICIAN1', 25)
	setObjectCamera('MUSICIAN1', 'other')
	addLuaText('MUSICIAN1') 
	
	--MUSICIAN 2
	makeLuaText('MUSICIAN2', 'ImThatBlueWolf', 1000, 132, -1000)
	setTextAlignment('MUSICIAN2', 'center')
	setTextSize('MUSICIAN2', 25)
	setObjectCamera('MUSICIAN2', 'other')
	addLuaText('MUSICIAN2')


	--------CHARTING CREW--------
	
	--CHARTER 1
	makeLuaText('CHARTER1', 'ZdzichuOfficial', 1000, 132, -1000)
	setTextAlignment('CHARTER1', 'center')
	setTextSize('CHARTER1', 25)
	setObjectCamera('CHARTER1', 'other')
	addLuaText('CHARTER1')

end

--------TIME FOR THE MOVEMENT SHIT BABEY WOOOOOOOO!!!--------

function onStepHit()

	--------UNDERLAY ENTRANCE--------
	
	if curStep == 18 then
	
	doTweenY('UNDERLAY1', 'Main', 0, 0.5, 'linear')
	doTweenY('UNDERLAY2', 'BorderLeft', 0, 0.5, 'linear')
	doTweenY('UNDERLAY3', 'BorderRight', 0, 0.5, 'linear')

	
	--------TEXT ENTRANCE--------
	
	----CREDITS TEXT----
	doTweenY('CREDSTEXT', 'CREDITS', 60, 0.3, 'linear')

	----CODERS TEXT----
	doTweenY('CODETEXT', 'CODERS', 140, 0.3, 'linear')
	doTweenY('CODER1', 'CODER1', 180, 0.3, 'linear')
	doTweenY('CODER2', 'CODER2', 210, 0.3, 'linear')
	doTweenY('CODER3', 'CODER3', 240, 0.3, 'linear')

	----ARTISTS TEXT----
	doTweenY('ARTTEXT', 'ARTISTS', 280, 0.3, 'linear')
	doTweenY('ARTIST1', 'ARTIST1', 320, 0.3, 'linear')
	doTweenY('ARTIST2', 'ARTIST2', 350, 0.3, 'linear')
	doTweenY('ARTIST3', 'ARTIST3', 380, 0.3, 'linear')
	doTweenY('ARTIST4', 'ARTIST4', 410, 0.3, 'linear')

	----MUSICIANS TEXT----
	doTweenY('MUSICTEXT', 'MUSICIANS', 480, 0.3, 'linear')
	doTweenY('MUSICIAN1', 'MUSICIAN1', 520, 0.3, 'linear')
	doTweenY('MUSICIAN2', 'MUSICIAN2', 550, 0.3, 'linear')
	doTweenY('MUSICIAN3', 'MUSICIAN3', 580, 0.3, 'linear')

	
	----CHARTERS TEXT----
	doTweenY('CHARTEXT', 'CHARTERS', 600, 0.3, 'linear')
	doTweenY('CHARTER1', 'CHARTER1', 640, 0.3, 'linear')
	doTweenY('CHARTER2', 'CHARTER2', 670, 0.3, 'linear')
	doTweenY('CHARTER3', 'CHARTER3', 700, 0.3, 'linear')

	----MAKE THE TEXT LEAVE SHIT----
	runTimer('ALL THE FUCKING THINGS', 3, 1)
end
end

function onTimerCompleted(tag, loops, loopsLeft)

	if tag == 'ALL THE FUCKING THINGS' then

	--------UNDERLAY EXIT--------
	
	doTweenY('UNDERLAY1EXIT', 'Main', -1300, 0.2, 'linear')
	doTweenY('UNDERLAY2EXIT', 'BorderLeft', -1300, 0.2, 'linear')
	doTweenY('UNDERLAY3EXIT', 'BorderRight', -1300, 0.2, 'linear')

	
	--------TEXT EXIT--------
	
	----CREDITS TEXT----
	doTweenY('CREDSTEXTEXIT', 'CREDITS', -1000, 0.3, 'linear')

	----CODERS TEXT----
	doTweenY('CODETEXTEXIT', 'CODERS', -1000, 0.3, 'linear')
	doTweenY('CODER1EXIT', 'CODER1', -1000, 0.3, 'linear')
	doTweenY('CODER2EXIT', 'CODER2', -1000, 0.3, 'linear')
	doTweenY('CODER3EXIT', 'CODER3', -1000, 0.3, 'linear')

	----ARTISTS TEXT----
	doTweenY('ARTTEXTEXIT', 'ARTISTS', -1000, 0.3, 'linear')
	doTweenY('ARTIST1EXIT', 'ARTIST1', -1000, 0.3, 'linear')
	doTweenY('ARTIST2EXIT', 'ARTIST2', -1000, 0.3, 'linear')
	doTweenY('ARTIST3EXIT', 'ARTIST3', -1000, 0.3, 'linear')
	doTweenY('ARTIST4EXIT', 'ARTIST4', -1000, 0.3, 'linear')

	----MUSICIANS TEXT----
	doTweenY('MUSICTEXTEXIT', 'MUSICIANS', -1000, 0.3, 'linear')
	doTweenY('MUSICIAN1EXIT', 'MUSICIAN1', -1000, 0.3, 'linear')
	doTweenY('MUSICIAN2EXIT', 'MUSICIAN2', -1000, 0.3, 'linear')
	doTweenY('MUSICIAN3EXIT', 'MUSICIAN3', -1000, 0.3, 'linear')

	
	----CHARTERS TEXT----
	doTweenY('CHARTEXTEXIT', 'CHARTERS', -1000, 0.3, 'linear')
	doTweenY('CHARTER1EXIT', 'CHARTER1', -1000, 0.3, 'linear')
	doTweenY('CHARTER2EXIT', 'CHARTER2', -1000, 0.3, 'linear')
	doTweenY('CHARTER3EXIT', 'CHARTER3', -1000, 0.3, 'linear')
end
end





