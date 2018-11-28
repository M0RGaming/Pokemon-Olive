function getAttack(attack)
	attacks as string
	if attack = 1 then attacks = "Tackle"
	if attack = 4 then attacks = "Growl"
	if attack = 7 then attacks = "Scratch"
	if attack = 8 then attacks = "Ember"
	if attack = 9 then attacks = "Splash"
endfunction attacks

function getPkmn(pkmn)
	pkmns as string
	if pkmn = 1 then pkmns = "Bulbasaur"
	if pkmn = 4 then pkmns = "Charmander"
	if pkmn = 7 then pkmns = "Squirtle"
endfunction pkmns


pkmn:
	pkmne as String
	pkmnp as string
	attackes as String
	attackps as String
	
	SetFolder("")
	SetFolder("db")
	// Insert Read Folder for encounter maps
	enc as integer[]
	enc.insert(1)
	enc.insert(4)
	enc.insert(7)
	
	enemy = enc[Random(0, enc.length)]
	player = enc[Random(0, enc.length)]
	//lvl = Random(1,10)
	lvle = Random(1,10)
	lvlp = Random(1,10)
	
	speedp = Random(1,100)
	speede = Random(1,100)
	
	type movelist
		level as integer
		move as integer
	endtype
	
	/*
	// Get enemy move list
	moveliste as integer[5,2]
	
	moveliste[1,1] = 1
	moveliste[1,2] = 1
	moveliste[2,1] = 3
	moveliste[2,2] = 4
	moveliste[3,1] = 6
	moveliste[3,2] = 7
	moveliste[4,1] = 8
	moveliste[4,2] = 8
	moveliste[5,1] = 10
	moveliste[5,2] = 9
	*/
	/*
	//getplayer move list
	movelistp as integer[5,2]
	
	movelistp[1,1] = 1
	movelistp[1,2] = 1
	movelistp[2,1] = 3
	movelistp[2,2] = 4
	movelistp[3,1] = 6
	movelistp[3,2] = 7
	movelistp[4,1] = 8
	movelistp[4,2] = 8
	movelistp[5,1] = 10
	movelistp[5,2] = 9
	*/
	movelistp as movelist[4]
	movelistp[0].level = 1 : movelistp[0].move = 1
	movelistp[1].level = 3 : movelistp[1].move = 4
	movelistp[2].level = 6 : movelistp[2].move = 7
	movelistp[3].level = 8 : movelistp[3].move = 8
	movelistp[4].level = 10 : movelistp[4].move = 9
	
	moveliste as movelist[4]
	moveliste[0].level = 1 : moveliste[0].move = 1
	moveliste[1].level = 3 : moveliste[1].move = 4
	moveliste[2].level = 6 : moveliste[2].move = 7
	moveliste[3].level = 8 : moveliste[3].move = 8
	moveliste[4].level = 10 : moveliste[4].move = 9
	
	/*
	for x = 1 to movelist.length
		Random(1,movelist.length)
	next x
	
	*/
	movese as integer[3]
	movesp as integer[3]
	
	for x = 0 to movese.length
		movese.remove()
	next x
	for x = 0 to movesp.length
		movesp.remove()
	next x
	
	movese.length = 3
	movesp.length = 3
	
	
	/// CHOOSES THE HIGHEST LEVEL MOVES TO LEARN
	
	for m = 0 to movese.length
		for x = moveliste.length to 0 step -1
			if moveliste[x].level <= lvle
				in = 0
				for a = 0 to movese.length
					if moveliste[x].move = movese[a]
						in = 1
						exit
					endif
				next a
				if in = 0
					movese[m] = moveliste[x].move
					exit
				endif
			endif		
		next x
	next m
	
	for m = 0 to movesp.length
		for x = movelistp.length to 0 step -1
			if movelistp[x].level <= lvlp
				in = 0
				for a = 0 to movesp.length
					if movelistp[x].move = movesp[a]
						print(movelistp[x].move)
						print(movesp[a])
						in = 1
						exit
					endif
				next a
				if in = 0
					movesp[m] = movelistp[x].move
					exit
				endif
			endif		
		next x
	next m
	/*
	Sync()
	Sleep(10000)
	Sync()
	*/
	SetFolder("")
	SetFolder("media")
	missing = LoadImage("missing.png")

	if GetImageExists(white) = 0 then white = CreateImageColor(255, 255, 255, 255)
	p1 = CreateSprite(missing)
	p2 = Createsprite(missing)
	
	actionbox = CreateSprite(white)
	
	SetSpriteSize(actionbox, GetVirtualWidth(), 64)
	
	SetSpriteSize(p1, 75, 75)
	SetSpriteSize(p2, 50, 50)
	SetSpritePosition(p1, 16, GetVirtualHeight()-GetSpriteHeight(p1)-64-16)
	SetSpritePosition(p2, GetVirtualWidth()-GetSpriteWidth(p2)-16, 32)
	
	SetSpritePosition(actionbox, 0, GetVirtualHeight()-GetSpriteHeight(actionbox))
	
	attacke = 0
	
	while attacke = 0
		attacke = movese[Random(1,4)-1]
	endwhile
	
	
	attack3 = CreateText("Test")
	SetTextAlignment(attack3, 1)
	SetTextSize(attack3, 30)
	SetTextColor(attack3, 0, 0, 0, 255)
	SetTextPosition(attack3, GetVirtualWidth()/2-GetSpriteWidth(actionbox)/4, GetVirtualHeight()-GetSpriteHeight(actionbox)/4-GetTextTotalHeight(attack3)/2)
	
	attack4 = CreateText("Test2")
	SetTextAlignment(attack4, 1)
	SetTextSize(attack4, 30)
	SetTextColor(attack4, 0, 0, 0, 255)
	SetTextPosition(attack4, GetVirtualWidth()/2+GetSpriteWidth(actionbox)/4, GetVirtualHeight()-GetSpriteHeight(actionbox)/4-GetTextTotalHeight(attack4)/2)
	
	attack1 = CreateText("Attack 1")
	SetTextAlignment(attack1, 1)
	SetTextSize(attack1, 30)
	SetTextColor(attack1, 0, 0, 0, 255)
	SetTextPosition(attack1, GetVirtualWidth()/2-GetSpriteWidth(actionbox)/4, GetVirtualHeight()-GetSpriteHeight(actionbox)+GetSpriteHeight(actionbox)/4-GetTextTotalHeight(attack1)/2)
	
	attack2 = CreateText("Attack 2")
	SetTextAlignment(attack2, 1)
	SetTextSize(attack2, 30)
	SetTextColor(attack2, 0, 0, 0, 255)
	SetTextPosition(attack2, GetVirtualWidth()/2+GetSpriteWidth(actionbox)/4, GetVirtualHeight()-GetSpriteHeight(actionbox)+GetSpriteHeight(actionbox)/4-GetTextTotalHeight(attack2)/2)
	
	
	for m = 0 to movesp.length
		if movesp[m] <> 0
			attackps = getAttack(movesp[m])
			if m = 0 then SetTextString(attack1, attackps)
			if m = 1 then SetTextString(attack2, attackps)
			if m = 2 then SetTextString(attack3, attackps)
			if m = 3 then SetTextString(attack4, attackps)
		else
			if m = 0 then SetTextString(attack1, "")
			if m = 1 then SetTextString(attack2, "")
			if m = 2 then SetTextString(attack3, "")
			if m = 3 then SetTextString(attack4, "")
		endif
	next m
	
	
	
	do
		
		for x = 0 to movesp.length
			printC(str(movesp[x]))
			printC(" ")
		next x
		print("")
		
		Print(attacke)
		
		Print(enemy)
		
		if GetRawKeyPressed(13)
			attacke = 0
			
			while attacke = 0
				attacke = movese[Random(1,4)-1]
			endwhile
		endif
		
		/*
		if GetPointerPressed() and GetTextHitTest(attack2, GetPointerX(), GetPointerY()) or GetTextHitTest(attack3, GetPointerX(), GetPointerY()) or GetTextHitTest(attack4, GetPointerX(), GetPointerY()))
		//if GetRawKeyPressed(asc("1")) or GetRawKeyPressed(asc("2")) or GetRawKeyPressed(asc("3")) or GetRawKeyPressed(asc("4"))
			//if GetRawKeyPressed(asc
			attackp = 1
			gosub attack
			
		endif
		*/
		if GetPointerPressed() and GetTextHitTest(attack1, GetPointerX(), GetPointerY())
			attackp = movesp[0]
			gosub attack
		elseif GetPointerPressed() and GetTextHitTest(attack2, GetPointerX(), GetPointerY())
			attackp = movesp[1]
			gosub attack
		elseif GetPointerPressed() and GetTextHitTest(attack3, GetPointerX(), GetPointerY())
			attackp = movesp[2]
			gosub attack
		elseif GetPointerPressed() and GetTextHitTest(attack4, GetPointerX(), GetPointerY())
			attackp = movesp[3]
			gosub attack
		endif
			
			
		if GetRawKeyPressed(27) then exit
		Sync()
	loop
	
	gosub cleanup
	Sync()
return

cleanup:
	DeleteAllImages()
	DeleteAllObjects()
	DeleteAllSprites()
	DeleteAllText()
return


attack:
	
	if speedp > speede
		attacke = 0
		while attacke = 0
			attacke = movese[Random(1,4)-1]
		endwhile
		pkmnp = getPkmn(player)
		attackps = getAttack(attackp)
		Print("Your "+pkmnp+" attacks with "+attackps)
		Sync()
		Sleep(1000)
		Sync()
		attackes = getAttack(attacke)
		pkmne = getPkmn(enemy)
		Print(pkmne+" attacks with "+attackes)
		Sync()
		Sleep(1000)
		Sync()
	else
		attacke = 0
		while attacke = 0
			attacke = movese[Random(1,4)-1]
		endwhile
		attackes = getAttack(attacke)
		pkmne = getPkmn(enemy)
		Print(pkmne+" attacks with "+attackes)
		Sync()
		Sleep(1000)
		Sync()
		pkmnp = getPkmn(player)
		attackps = getAttack(attackp)
		Print("Your "+pkmnp+" attacks with "+attackps)
		Sync()
		Sleep(1000)
		Sync()
	endif
	
return
