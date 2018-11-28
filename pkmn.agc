remstart Pokemon Battle


  _____      _                                    ____        _   _   _      
 |  __ \    | |                                  |  _ \      | | | | | |     
 | |__) |__ | | _____ _ __ ___   ___  _ __       | |_) | __ _| |_| |_| | ___ 
 |  ___/ _ \| |/ / _ \ '_ ` _ \ / _ \| '_ \      |  _ < / _` | __| __| |/ _ \
 | |  | (_) |   <  __/ | | | | | (_) | | | |     | |_) | (_| | |_| |_| |  __/
 |_|   \___/|_|\_\___|_| |_| |_|\___/|_| |_|     |____/ \__,_|\__|\__|_|\___|
                                                                             
                                     
                                     
                                     
                                     
                                                                             

  ______                _   _                 
 |  ____|              | | (_)                
 | |__ _   _ _ __   ___| |_ _  ___  _ __  ___ 
 |  __| | | | '_ \ / __| __| |/ _ \| '_ \/ __|
 | |  | |_| | | | | (__| |_| | (_) | | | \__ \
 |_|   \__,_|_| |_|\___|\__|_|\___/|_| |_|___/
                                              
                                              


remend



// Note: all sleeps are commented out and replaced with for loops (using syncs) because
// sleeps cause music to stop working on the html version.



function getAttack(attack as String, movedb as moves[]) // gets the index value of the attack specified
	/*
	attacks as string
	if attack = 1 then attacks = "Tackle"
	if attack = 4 then attacks = "Growl"
	if attack = 7 then attacks = "Scratch"
	if attack = 8 then attacks = "Ember"
	if attack = 9 then attacks = "Splash"
	*/
	
	
	for x = 0 to movedb.length // searches database for attack name
		move as String
		if movedb[x].name = attack
			print(x)
			exit
		endif
	next x
	Sync()
	//Sleep(6000)
	
endfunction x // returns attack name


function calcstat(base, level) // calculates stats for everything but hp
	//uses standard pokemon formula : stat = ((2*base*level)/100)+5
	
	stat as float
	stat = base
	stat = stat*2
	stat = stat*level
	stat = stat/100
	stat = stat+5
	stati = stat // convert float to integer
	
endfunction stati // return stat to place called


// The following (that are commented) are no longer used

//function calcDamage(player, enemy, lvl, move, movedb as move[], pkmnlist as pkmn[])
		
//endfunction
/*
function getPkmn(pkmn, party)
	pkmns as string
	
endfunction pkmns
*/

function getPkmn2(pkmnlist as pkmn[], pkmn as String) // gets the pokemon by name
	for x = 0 to pkmnlist.length // searches pokedex 
		if pkmnlist[x].name = pkmn 
			print(x)
			exit
		endif
	next x
	Sync()
endfunction x // returns pokedex id

remstart End Functions: Main Code (Battle)
  ______           _       ______                _   _                 
 |  ____|         | |     |  ____|              | | (_)                
 | |__   _ __   __| |     | |__ _   _ _ __   ___| |_ _  ___  _ __  ___ 
 |  __| | '_ \ / _` |     |  __| | | | '_ \ / __| __| |/ _ \| '_ \/ __|
 | |____| | | | (_| |     | |  | |_| | | | | (__| |_| | (_) | | | \__ \
 |______|_| |_|\__,_|     |_|   \__,_|_| |_|\___|\__|_|\___/|_| |_|___/
                                                                       
                                                                       

  __  __       _              _____          _              ______        _   _   _    __  
 |  \/  |     (_)            / ____|        | |            / /  _ \      | | | | | |   \ \ 
 | \  / | __ _ _ _ __       | |     ___   __| | ___       | || |_) | __ _| |_| |_| | ___| |
 | |\/| |/ _` | | '_ \      | |    / _ \ / _` |/ _ \      | ||  _ < / _` | __| __| |/ _ \ |
 | |  | | (_| | | | | |     | |___| (_) | (_| |  __/      | || |_) | (_| | |_| |_| |  __/ |
 |_|  |_|\__,_|_|_| |_|      \_____\___/ \__,_|\___|      | ||____/ \__,_|\__|\__|_|\___| |
                                                           \_\                         /_/ 
                                                                                           


remend




pkmn: // Code for the battle segment

/* Old music start (mp3 files)
	SetFolder("")
	SetFolder("media")
	wildmusicstart = LoadMusic("wildpkmnstart.mp3")
	wildmusicloop = LoadMusic("wildpkmnloop.mp3")
	ResetTimer()
	PlayMusic(wildmusicstart)
*/
	SetFolder("") // Set media input to standard folder (/media)
	SetFolder("media")
	
	
	if GetMusicExistsOGG(wildmusic) = 0 // if music has not already started
		wildmusicstart = LoadMusicOGG("wildstart.ogg") // load refrence music (the non looping portion)
		wildmusic = LoadMusicOGG("wild.ogg") // load music
		//use duration of refrence music to create a loop
		SetMusicLoopTimesOGG(wildmusic, GetMusicDurationOGG(wildmusicstart), -1)
		PlayMusicOGG(wildmusic, 1) // play music for infinite loops
	endif
	
	
remstart Initializing
  _____       _ _   _       _ _     _             
 |_   _|     (_) | (_)     | (_)   (_)            
   | |  _ __  _| |_ _  __ _| |_ _____ _ __   __ _ 
   | | | '_ \| | __| |/ _` | | |_  / | '_ \ / _` |
  _| |_| | | | | |_| | (_| | | |/ /| | | | | (_| |
 |_____|_| |_|_|\__|_|\__,_|_|_/___|_|_| |_|\__, |
                                             __/ |
                                            |___/ 

remend
	
	// define/create variables
	pkmne as String
	pkmnp as string
	attackes as String
	attackps as String
	attackp as String
	attacke as String
	message as String
	healthfillcalc as float
	power as float

	
	type pkmnstatsinternal // type for the stats of each pokemon
		atk as Integer
		speed as Integer
		def as Integer
		spAtk as Integer
		spDef as Integer
	endtype
	
	atkstagep = 0 // the stage of atk (for example growl lowers atk by 1 stage)
	speedstagep = 0 // the rest is the same as above (except with different effected stats)
	defstagep = 0
	spAtkstagep = 0
	spDefstagep = 0
	
	startfilll = 112 // the pixel that the health bar starts at (in the actual image)
	startfillr = 1 // same as above
	
	type pkmnstats // type for easy access to stats of each pokemon
		enemy as pkmnstatsinternal
		player as pkmnstatsinternal
	endtype
	
	pkmnstats as pkmnstats // define var pkmnstats as type pkmnstats
	
	SetFolder("")
	SetFolder("db")
	// Insert Read Folder for encounter maps (Not implemented) (for now just pokedex numbers 1,4,7)
	enc as integer[]
	enc.insert(1)
	enc.insert(4)
	enc.insert(7)
	
	enemy = enc[Random(0, enc.length)] // Randomly choose 1 pokemon to fight
	
	
	//player = enc[Random(0, enc.length)]
	//player = 7 // Pokedex number
	
	
	//the following finds the pokedex id of the player's pokemon that is first in their party
	for x = 0 to pkmnlist.length
		if pkmnlist[x].name = party.pokemon[0].name then exit // search pokedex for player's pkmn's name
	next x // if found, exit
	
	if x = pkmnlist.length // if exited on the last number, check if its actualy the last pokemon
		if pkmnlist[x].name = party.pokemon[0].name
			player = x+1 // if it is set that as the pokedex id
		endif
	else
		player = x+1 // if not, do it anyways, as we only have 9 pokemon registered
	endif
	
	
	lvlp = 5 // level of the player, gets replaced later on
	//lvlp = 
	
	lvlc as float // level calculator defined as float
	
	
	// the following uses pokemon's fast level up group to determine their current level
	lvlc = party.exp[0]
	lvlc = lvlc*5
	lvlc = lvlc/4
	power = 1
	power = power/3
	lvlc = pow(lvlc, power)
	
	lvlp = floor(lvlc) // round down and save to the player's level
	
	//lvle = Random(1,10)
	
	lvle = 5 // enemy is level 5
	
	//lvlp = Random(1,10)
	
	
	expreqcalcc as float // calculate the exp required to become the next level
	expreqcalcn as float // calculate the exp required to become the current level
	expreqcalcc = lvlp*lvlp*lvlp
	expreqcalcc = expreqcalcc*4
	expreqcalcc = expreqcalcc/5
	
	expreqcalcn = (lvlp+1)*(lvlp+1)*(lvlp+1)
	expreqcalcn = expreqcalcn*4
	expreqcalcn = expreqcalcn/5
	
	expnext = expreqcalcn-expreqcalcc // calculate the exp required to level up, assuming no player exp
	explevelup = expnext-(party.exp[0]-expreqcalcc) // calculate the exp required for the player to lvl
	
	
	enemypkmn as pkmn // define enemypkmn as a pkmn type (located in db.agc)
	enemypkmn = pkmnlist[enemy-1] // copy info from database (by pokedex number)
	
	playerpkmn as pkmn // define playerpkmn as a pkmn type (located in db.agc)
	playerpkmn = party.pokemon[0] // copy info from players party
	
	
	//indp = getPkmn2(pkmnlist, "Bulbasaur"
	
	// Calculate health for both player and enemy
	hp as float
	hp = playerpkmn.stats.health
	hp = hp*2
	hp = hp*lvlp
	hp = hp/100
	hp = hp+lvlp
	hp = hp+10
	hpp = hp // health points player (current health)
	hpmp = hp // helath points max player (maximum health)
		
	hp = enemypkmn.stats.health
	hp = hp*2
	hp = hp*lvle
	hp = hp/100
	hp = hp+lvle
	hp = hp+10
	hpe = hp // health points enemy (current health)
	hpme = hp // health points max enemy (Maximum health)
	
	
	
	
	/*
	Sync()
	print(hpp)
	Sync()
	Sleep(10000)
	*/
	
	// calculate stats, function calcstat is located above, in the functions area
	pkmnstats.player.speed = calcstat(playerpkmn.stats.speed, lvlp)
	pkmnstats.enemy.speed = calcstat(enemypkmn.stats.speed, lvle)
	
	pkmnstats.player.def = calcstat(playerpkmn.stats.def, lvlp)
	pkmnstats.enemy.def = calcstat(enemypkmn.stats.def, lvle)
	pkmnstats.player.atk = calcstat(playerpkmn.stats.atk, lvlp)
	pkmnstats.enemy.atk = calcstat(enemypkmn.stats.atk, lvle)
	
	
	type movelist // create new type movelist that has level and move
		level as integer
		move as String
	endtype
	
	
	//The following clears the arrays moves enemy and moves player

	movese as String[3] // create an array for enemies moves
	movesp as String[3] // create an array for players moves
	
	for x = 0 to movese.length // remove any artifacts from old pkmn battles
		movese.remove()
	next x
	
	for x = 0 to movesp.length // remove any artifacts from old pkmn battles
		movesp.remove()
	next x
	
	movese.length = 3 // redefine array length
	movesp.length = 3 // redefine arry length
	
	
	/// CHOOSES THE HIGHEST LEVEL MOVES TO LEARN
	
	enemyind = enemy-1 // changes pokedex number into pokedex number-1 (because 0 is a value as well)
	playerind = player-1 // changes pokedex number into pokedex number-1 (because 0 is a value as well)
	
	for m = 0 to movese.length // for the length of the array movese, which is 4 do the following
		 // for the length of the movelist of the enemy pkmn do the following, in reverse order
		for x = pkmnlist[enemyind].movelist.length to 0 step -1
			if pkmnlist[enemyind].movelist[x].level <= lvle //if the move req is higher than current lvl
				in = 0 // stands for in/out (was running out of variable names)
				for a = 0 to movese.length //for every value in the array of current moves
					//if the move is already known, exit the for loop
					if pkmnlist[enemyind].movelist[x].move = movese[a]
						in = 1
						exit
					endif
				next a
				if in = 0 // if in stays 0 (the move is not in the list)
					movese[m] = pkmnlist[enemyind].movelist[x].move // add move to list
					exit
				endif
			endif		
		next x
	next m
	
	
	// the following is the same as above, so i wont comment it
	for m = 0 to movesp.length
		for x = pkmnlist[playerind].movelist.length to 0 step -1
			if pkmnlist[playerind].movelist[x].level <= lvlp
				in = 0
				for a = 0 to movesp.length
					if pkmnlist[playerind].movelist[x].move = movesp[a]
						in = 1
						exit
					endif
				next a
				if in = 0
					movesp[m] = pkmnlist[playerind].movelist[x].move
					exit
				endif
			endif		
		next x
	next m
	
	
	remstart End Init: Load Visuals
  ______           _       _____       _ _   _       _ _     _             
 |  ____|         | |     |_   _|     (_) | (_)     | (_)   (_)            
 | |__   _ __   __| |       | |  _ __  _| |_ _  __ _| |_ _____ _ __   __ _ 
 |  __| | '_ \ / _` |       | | | '_ \| | __| |/ _` | | |_  / | '_ \ / _` |
 | |____| | | | (_| |      _| |_| | | | | |_| | (_| | | |/ /| | | | | (_| |
 |______|_| |_|\__,_|     |_____|_| |_|_|\__|_|\__,_|_|_/___|_|_| |_|\__, |
                                                                      __/ |
                                                                     |___/ 
	
  _                     _      __      ___                 _     
 | |                   | |     \ \    / (_)               | |    
 | |     ___   __ _  __| |      \ \  / / _ ___ _   _  __ _| |___ 
 | |    / _ \ / _` |/ _` |       \ \/ / | / __| | | |/ _` | / __|
 | |___| (_) | (_| | (_| |        \  /  | \__ \ |_| | (_| | \__ \
 |______\___/ \__,_|\__,_|         \/   |_|___/\__,_|\__,_|_|___/
                                                                 
                                                                 
	remend
	
	/* DEBUG
	Sync()
	Sleep(10000)
	Sync()
	*/
	
	SetFolder("") // change input folder to standard (/media)
	SetFolder("media")
	missing = LoadImage("missing.png") // missing texture
	if GetFileExists(str(player)+"b.png") // gets if the players pkmn's texture exists
		playeri = LoadImage(str(player)+"b.png") // if it does, assigns it
	else
		playeri = LoadImage("missing.png") // if it doesnt, assisgs a missing texture
	endif
	
	// repeats the same thing above with the enemy
	if GetFileExists(str(enemy)+".png")
		enemyi = LoadImage(str(enemy)+".png")
	else
		enemyi = LoadImage("missing.png")
	endif
	//enemyi = LoadImage("4.png")


	//if the image white does not exist, make one
	if GetImageExists(white) = 0 then white = CreateImageColor(255, 255, 255, 255)
	//p1 = CreateSprite(7)
	p1 = CreateSprite(playeri) //create a sprite for the player, using the image assigned above
	p2 = Createsprite(enemyi) //create a sprite for the enemy, using the image assigned above
	
	actionbox = CreateSprite(white) //create a box, where the attacks go in
	
	//some sprite adjustments
	SetSpriteSize(actionbox, GetVirtualWidth(), 64)
	
	SetSpriteSize(p1, 75, 75)
	SetSpriteSize(p2, 50, 50)
	SetSpritePosition(p1, 16, GetVirtualHeight()-GetSpriteHeight(p1)-64-16)
	SetSpritePosition(p2, GetVirtualWidth()-GetSpriteWidth(p2)-16, 32)
	
	SetSpritePosition(actionbox, 0, GetVirtualHeight()-GetSpriteHeight(actionbox))
	
	
	//Load the namebars
	
	//namebari = LoadImage("namebar.png")
	namebari2r = LoadImage("namebar2r.png") // load image for namebar right
	namebari2l = LoadImage("namebar2l.png") // load image for namebar left
	namebarp = CreateSprite(namebari2l) // create sprite
	namebare = CreateSprite(namebari2r) //create sprite
	//SetSpriteFlip(namebare, 1, 0)
	
	//position sprites
	SetSpritePosition(namebare, GetVirtualWidth()-GetSpriteWidth(namebare), 16+GetSpriteHeight(p2)+32)
	SetSpritePosition(namebarp, 0, GetSpriteY(p1)-16-GetSpriteHeight(namebarp))
	//attacke as String
	
	//create and position the name of the players pokemon
	namer = CreateText(playerpkmn.name)
	SetTextAlignment(namer, 1)
	//SetTextPosition(namer, 32+(GetSpriteWidth(namebarp)-32)/2, GetSpriteY(namebarp)+GetSpriteHeight(namebarp)/4) 
	//SetTextSize(namer, GetSpriteHeight(namebarp)/4)
	SetTextPosition(namer, 32+(GetSpriteWidth(namebarp)-32)/2, GetSpriteY(namebarp)-12) 
	SetTextSize(namer, 16)
	
	//Create and position the name of the enemies pokemon
	namel = CreateText(enemypkmn.name)
	SetTextAlignment(namel, 1)
	SetTextPosition(namel, (GetVirtualWidth()-(GetSpriteWidth(namebare)-32)/2)-32, GetSpriteY(namebare)-12) 
	SetTextSize(namel, 16)
	
	//set offset to the center of sprite
	SetSpriteOffset(p1, GetSpriteWidth(p1)/2, GetSpriteHeight(p1)/2)
	SetSpriteOffset(p2, GetSpriteWidth(p2)/2, GetSpriteHeight(p2)/2)
	// scale up image, using the center as the anchor point
	SetSpriteScaleByOffset(p1, 2, 2)
	SetSpriteScaleByOffset(p2, 2, 2)
	
	
	
	
	//gosub updateHealthr
	//gosub updateHealthl
	
	/*
	// Make Image Transparent
	nbml = CreateMemblockFromImage(namebari2l)
	size = GetMemblockSize(nbml)
	for c = 12 to size-1 step 4
		
		colorR = GetMemblockByte(nbml, c)
		colorG = GetMemblockByte(nbml, c+1)
		colorB = GetMemblockByte(nbml, c+2)
		
		if colorR = 255 and colorG = 255 and colorB = 255 then SetMemblockByte(nbml, c+3, 1)
	next c
	*/
	
	/* OLD - NOW DONE WHEN PLAYER ATTACKS
	while attacke = ""
		attacke = movese[Random(1,4)-1]
	endwhile
	*/
	
	
	
	// Create, size, and position text for each of the attacks
	
	attack3 = CreateText("Attack 3")
	SetTextAlignment(attack3, 1)
	SetTextSize(attack3, 30)
	SetTextColor(attack3, 0, 0, 0, 255)
	SetTextPosition(attack3, GetVirtualWidth()/2-GetSpriteWidth(actionbox)/4, GetVirtualHeight()-GetSpriteHeight(actionbox)/4-GetTextTotalHeight(attack3)/2)
	
	attack4 = CreateText("Attack 4")
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
	
	
	
	// Fill in the value of each attack
	for m = 0 to movesp.length // for every move known
		if movesp[m] <> "" //if the current move is not nothing then set the text to the attack
			//attackps = movedb[getAttack(movesp[m], movedb)].name
			if m = 0 then SetTextString(attack1, movesp[m]) 
			if m = 1 then SetTextString(attack2, movesp[m])
			if m = 2 then SetTextString(attack3, movesp[m])
			if m = 3 then SetTextString(attack4, movesp[m])
		else // otherwise make the text blank
			if m = 0 then SetTextString(attack1, "")
			if m = 1 then SetTextString(attack2, "")
			if m = 2 then SetTextString(attack3, "")
			if m = 3 then SetTextString(attack4, "")
		endif
	next m
	
	
	//timer = 1 //No Longer Used
	win = -1 // who wins (-1 for no winner yet)
	
	
	// Make the attacks and the names invisible
	SetTextColorAlpha(attack1 ,0)
	SetTextColorAlpha(attack2 ,0)
	SetTextColorAlpha(attack3 ,0)
	SetTextColorAlpha(attack4 ,0)
	SetTextColorAlpha(namer ,0)
	SetTextColorAlpha(namel ,0)
	
	// position the pokemon sprites outside the screen
	SetSpritePosition(p1, GetSpriteX(p1)-300, GetSpriteY(p1))
	SetSpritePosition(p2, GetSpriteX(p2)+300, GetSpriteY(p2))
	//position the namebar sprites and the actionbox outside of the screen
	SetSpritePosition(namebarp, GetSpriteX(namebarp)-300, GetSpriteY(namebarp))
	SetSpritePosition(namebare, GetSpriteX(namebare)+300, GetSpriteY(namebare))
	SetSpritePosition(actionbox, GetSpriteX(actionbox), GetSpriteY(actionbox)+300)
	
	
	for x = 1 to 30 // over 1 second (30 frames), move the sprites into the frame
		SetSpritePosition(p1, GetSpriteX(p1)+10, GetSpriteY(p1))
		SetSpritePosition(p2, GetSpriteX(p2)-10, GetSpriteY(p2))
		SetSpritePosition(namebarp, GetSpriteX(namebarp)+10, GetSpriteY(namebarp))
		SetSpritePosition(namebare, GetSpriteX(namebare)-10, GetSpriteY(namebare))
		SetSpritePosition(actionbox, GetSpriteX(actionbox), GetSpriteY(actionbox)-10)
		Sync()
	next x
	
	
	for x = 0 to 10 // over 1/3 of a second, (10 frames), fade in the attacks and the names of the pkmn
		for y = 0 to 17 // makes sure it doesnt go over 255, cause if it does, it breaks
			if GetTextColorAlpha(attack1) < 255 then SetTextColorAlpha(attack1, GetTextColorAlpha(attack1)+1)
			if GetTextColorAlpha(attack2) < 255 then SetTextColorAlpha(attack2, GetTextColorAlpha(attack2)+1)
			if GetTextColorAlpha(attack3) < 255 then SetTextColorAlpha(attack3, GetTextColorAlpha(attack3)+1)
			if GetTextColorAlpha(attack4) < 255 then SetTextColorAlpha(attack4, GetTextColorAlpha(attack4)+1)
			if GetTextColorAlpha(namer) < 255 then SetTextColorAlpha(namer, GetTextColorAlpha(namer)+1)
			if GetTextColorAlpha(namel) < 255 then SetTextColorAlpha(namel, GetTextColorAlpha(namel)+1)
		next y
		Sync()
	next x
	
	// if it didnt make it to 255, then make it 255 anyways
	SetTextColorAlpha(attack1 ,255)
	SetTextColorAlpha(attack2 ,255)
	SetTextColorAlpha(attack3 ,255)
	SetTextColorAlpha(attack4 ,255)
	SetTextColorAlpha(namer ,255)
	SetTextColorAlpha(namel ,255)
	
	/* OLD
	DeleteText(attack1)
	DeleteText(attack2)
	DeleteText(attack3)
	DeleteText(attack4)
	deletetext(namer)
	DeleteText(namel)
	*/
	
	remstart End Loading Visuals:
  ______           _       _                     _ _                  __      ___                 _     
 |  ____|         | |     | |                   | (_)                 \ \    / (_)               | |    
 | |__   _ __   __| |     | |     ___   __ _  __| |_ _ __   __ _       \ \  / / _ ___ _   _  __ _| |___ 
 |  __| | '_ \ / _` |     | |    / _ \ / _` |/ _` | | '_ \ / _` |       \ \/ / | / __| | | |/ _` | / __|
 | |____| | | | (_| |     | |___| (_) | (_| | (_| | | | | | (_| |        \  /  | \__ \ |_| | (_| | \__ \
 |______|_| |_|\__,_|     |______\___/ \__,_|\__,_|_|_| |_|\__, |         \/   |_|___/\__,_|\__,_|_|___/
                                                            __/ |                                       
                                                           |___/                                        	

  __  __       _             _                       
 |  \/  |     (_)           | |                      
 | \  / | __ _ _ _ __       | |     ___   ___  _ __  
 | |\/| |/ _` | | '_ \      | |    / _ \ / _ \| '_ \ 
 | |  | | (_| | | | | |     | |___| (_) | (_) | |_) |
 |_|  |_|\__,_|_|_| |_|     |______\___/ \___/| .__/ 
                                              | |    
                                              |_|    

	
	
	
	remend
	
	
	
	do
		
		
		/* OLD
		if timer() > 13.001 and timer = 1
			PlayMusic(wildmusicloop, 1)
			timer = 0
		endif
		
		
		for x = 0 to movesp.length
			printC(movesp[x])
			printC(" ")
		next x
		print("")
		
		Print(attacke)
		
		Print(enemy)
		
		
		if GetRawKeyPressed(13)
			attacke = ""
			
			while attacke = ""
				attacke = movese[Random(1,4)-1]
			endwhile
		endif
		
		
		if GetPointerPressed() and GetTextHitTest(attack2, GetPointerX(), GetPointerY()) or GetTextHitTest(attack3, GetPointerX(), GetPointerY()) or GetTextHitTest(attack4, GetPointerX(), GetPointerY()))
		//if GetRawKeyPressed(asc("1")) or GetRawKeyPressed(asc("2")) or GetRawKeyPressed(asc("3")) or GetRawKeyPressed(asc("4"))
			//if GetRawKeyPressed(asc
			attackp = 1
			gosub attack
			
		endif
		*/
		
		
		
		// registers players attack
		
		if GetPointerPressed() and GetTextHitTest(attack1, GetPointerX(), GetPointerY())
			attackp = movesp[0] //go through attack (located below), with attack 1 selected
			gosub attack
		elseif GetPointerPressed() and GetTextHitTest(attack2, GetPointerX(), GetPointerY())
			attackp = movesp[1] //go through attack (located below), with attack 2 selected
			gosub attack
		elseif GetPointerPressed() and GetTextHitTest(attack3, GetPointerX(), GetPointerY())
			attackp = movesp[2] //go through attack (located below), with attack 3 selected
			gosub attack
		elseif GetPointerPressed() and GetTextHitTest(attack4, GetPointerX(), GetPointerY())
			attackp = movesp[3] //go through attack (located below), with attack 4 selected
			gosub attack
		endif
			
		
		//if GetRawKeyPressed(27) then win = 1 //DEV ONLY
		
		//Print("")
		
		// Prints player HP, enemy HP, EXP req, EXP to lvl, current level
		Print("Your HP: "+str(hpp))
		print("Enemies HP: "+str(hpe))
		Print("Exp to next level: "+str(expnext))
		Print("Exp required to level up: "+str(explevelup))
		//Print(lvlc)
		print("Your Level: "+str(lvlp))
		Sync()
		
		
		
		if win = 1 // if player wins
			Sync() // sync to get rid of previous prints
			Print("The enemy fainted") // tell player they won
			Print("You Win")
			
			// calculate exp gain using the formula that pokemon uses (for fast lvl group)
			expgain as float
			expgain = enemypkmn.stats.expyeild
			expgain = expgain*lvle
			expgain = expgain/7
			//expgain = expgain*15
			party.exp[0] = party.exp[0]+expgain // add exp to first pokemon's exp
			Print("You gain "+str(expgain)+" experience") // tell player how much exp they gained
			
			// reverse (fast) exp formula to determine how much exp is required to evolve
			lvlupcalc as float
			lvlupcalc = pow(playerpkmn.evolve.level, 3)
			lvlupcalc = lvlupcalc*4
			lvlupcalc = lvlupcalc/5
			
			
			if party.exp[0] > lvlupcalc and lvlupcalc <> 0 //if player evolves (and its not a final evo)
				for x = 0 to pkmnlist.length // determine what the index of the evolved pkmn is
					if pkmnlist[x].name = party.pokemon[0].evolve.form then exit
				next x // (x is the index of the evolved pkmn)
				
				if x = pkmnlist.length // if the evolution is the last value
					if pkmnlist[x].name = party.pokemon[0].evolve.form //if it is the correct pkmn
						party.pokemon[0] = pkmnlist[x] // change the pkmn to it
						print("YOUR POKEMON IS EVOLVING!!!!") // tell player their pkmn is evolving
						evo = 1 // tell if the pkmn evolved
					endif
				else // if the index gained was not the last value
					party.pokemon[0] = pkmnlist[x] // change pkmn to the evolved pkmn
					print("YOUR POKEMON IS EVOLVING!!!!") // tell player their pkmn is evolving
					evo = 1 // tell if the pkmn evolved
				endif
			endif
			
			Sync()
			for x = 1 to 45 // print the following for 1.5 seconds
				Print("The enemy fainted") // tell player they won
				Print("You Win")
				Print("You gain "+str(expgain)+" experience") //tell player their exp gain
				if evo = 1 then print("YOUR POKEMON IS EVOLVING!!!!") // if evolving, tell player
				Sync()
			next x
			exit // exit out of loop
			
		elseif win = 2 // if enemy wins
			
			Sync() // clear previous messages
			
			for x = 1 to 45 // print the following for 1.5 seconds
				Print("Your Pokemon fainted") // tell player they lost
				Print("You Loose")
				Sync()
			next x
			//Sleep(1500) // do nothing for 1.5 seconds
			exit // exit out of loop
		endif
		
		
	loop
	
	gosub cleanup // cleanup visuals so we can run this code again without problems
	//Sleep(1000) 
	Sync() // not really nessicary but there because why not
return


remstart End Main Loop: Subroutines
  ______           _       __  __       _             _                       
 |  ____|         | |     |  \/  |     (_)           | |                      
 | |__   _ __   __| |     | \  / | __ _ _ _ __       | |     ___   ___  _ __  
 |  __| | '_ \ / _` |     | |\/| |/ _` | | '_ \      | |    / _ \ / _ \| '_ \ 
 | |____| | | | (_| |     | |  | | (_| | | | | |     | |___| (_) | (_) | |_) |
 |______|_| |_|\__,_|     |_|  |_|\__,_|_|_| |_|     |______\___/ \___/| .__/ 
                                                                       | |    
                                                                       |_|    


   _____       _                     _   _                 
  / ____|     | |                   | | (_)                
 | (___  _   _| |__  _ __ ___  _   _| |_ _ _ __   ___  ___ 
  \___ \| | | | '_ \| '__/ _ \| | | | __| | '_ \ / _ \/ __|
  ____) | |_| | |_) | | | (_) | |_| | |_| | | | |  __/\__ \
 |_____/ \__,_|_.__/|_|  \___/ \__,_|\__|_|_| |_|\___||___/
                                                           
                                                           

remend

cleanup: // clean up visuals so we can run this code again
	DeleteSprite(p1)
	DeleteSprite(p2)
	DeleteSprite(namebarp)
	deletesprite(namebare)
	DeleteSprite(actionbox)
	DeleteText(attack1)
	DeleteText(attack2)
	DeleteText(attack3)
	DeleteText(attack4)
	deletetext(namer)
	DeleteText(namel)
	
	StopMusicOGG(wildmusic) // stop music as well
	DeleteMusicOGG(wildmusic) // delete it cause its re created anyways
return




attack: // the attacks

	dmg as Float // dmg dealth defined as float
	
	if enemypkmn.stats.speed < playerpkmn.stats.speed // if the enemy pkmn is faster than player pkmn
		
		attacke = "" //enemy attack is nothing
		while attacke = "" // select a random enemy attack
			attacke = movese[Random(1,4)-1] // Random of 1:4 -1 because values start at index 0
		endwhile
		
		//pkmnp = getPkmn(player)
		//pkmnp = party.pokemon[0].name
		//pkmnp = getPkmn2(pkmnlist, player)
		
		
		pkmnp = pkmnlist[player-1].name // player pkmn (name) is the extracted from party
		pkmne = pkmnlist[enemy-1].name // enemy pkmn (name) is the extracted from pokedex
		
		// Get attack is located above in the functions section
		indp = getAttack(attackp, movedb) //index is gained from searching attackp in the attackdb
		attackps = movedb[indp].name // attack player string becomes the name of the move
		
		//the following is the same as above
		inde = getAttack(attacke, movedb)
		attackes = movedb[inde].name
		
		
		//pkmne = getPkmn(enemy) // OLD
		//pkmne = getPkmn2(pkmnlist, player) // OLD
		
		
		
		gosub playerAttack // player attacks (subroutine is located below)
		
		
		
		if hpe <= 0 then win = 1 // if the enemy fainted, the player wins
		
		//Sleep(1000) // pause program for 1 second
		
		for x = 1 to 30 // pause the program for 1 second
			print(message) // prints the attack msg	
			sync()
		next x
		
		message = "" // reset the attack msg
		
		Sync()
		
		if win = -1 // if no one has one yet
			
			gosub enemyAttack // enemy attacks (subroutine is located below)
			if hpp <= 0 then win = 2 // if player faints, the player looses
			//Sleep(1000) // pause program for 1 second
			
			for x = 1 to 30 // pause the program for 1 second
				print(message) // prints the attack msg		
				sync()
			next x
			
			message = "" // reset the attack msg
			Sync()
			
		endif
		
	else // if the enemy is faster than the player
		
		//The following is the same as the above portion, just reversed order of attacks
		
		
		attacke = ""
		while attacke = ""
			attacke = movese[Random(1,4)-1]
		endwhile
		
		
		inde = getAttack(attacke, movedb)
		attackes = movedb[inde].name
		//pkmne = getPkmn(enemy)
		pkmne = pkmnlist[enemy-1].name
		//pkmnp = getPkmn(player)
		pkmnp = pkmnlist[player-1].name
		indp = getAttack(attackp, movedb)
		attackps = movedb[indp].name
		
		gosub enemyAttack
		
		if hpp <= 0 then win = 2
		
		for x = 1 to 30
			print(message)
			sync()
		next x
		
		message = ""
		Sync()
		
		if win = -1

			gosub playerAttack
			
			if hpe <= 0 then win = 1
			
			for x = 1 to 30
				print(message)
				sync()
			next x
			message = ""
			
			
			Sync()
		endif
	endif
	
return






// Enemy Attack
enemyAttack:
	message = pkmne+" attacks with "+attackes //Attack message
	Print(message)
	
	if movedb[inde].atk <> 0 // if the attack damage on the attack is not 0
		// calculate damage dealt using formula
		dmg = 2*lvlp
		dmg = dmg/5
		dmg = dmg+2
		dmg = dmg*movedb[indp].atk
		dmg = dmg*pkmnstats.enemy.atk
		dmg = dmg/pkmnstats.player.def
		dmg = dmg/50
		dmg = dmg+2
		dmgdone = dmg
		Print("It does "+str(dmgdone)+" Damage")
		
		hpp = hpp-dmgdone // update health for player
		gosub updateHealthl // update health bar for player
		
	elseif movedb[inde].attacktype = "Status" // if status type move
		
		if movedb[inde].effect.accuracy <> 0 // if accuracy, just say something, does nothing else rn
			print("It lowers "+pkmnp+"'s Accuracy by "+str(-(movedb[inde].effect.accuracy))+" Grade")
		endif
		
		if movedb[inde].effect.atk <> 0 //if it effects atk
			if atkstagep > -6 // if the atk stage for the player is > -6
				atkstagep = atkstagep - 1 //remove 1 from the atk stage
				// tell player that attack went down
				print("It lowers "+pkmnp+"'s Attack by "+str(-(movedb[inde].effect.atk))+" Grade")
				dmg = playerpkmn.stats.atk //dmg is a float, we use it rather than creating a new one
				if atkstagep < 0 //if attack stage is less than 0, use reversed formula to get new atk
					dmg = dmg*2
					dmg = dmg/(abs(atkstagep)+2)
					pkmnstats.player.atk = calcstat(dmg, lvlp) //make new atk the pkmn's atk stat
				endif
			else
				print("The attack cant go any lower") // if stage is already -6, dont do anything
			endif
		endif
		
		// the rest is pretty much the same as attack, just with changed variables
		
		if movedb[inde].effect.def <> 0
			if defstagep > -6
				defstagep = defstagep - 1
				print("It lowers "+pkmnp+"'s Defence by "+str(-(movedb[inde].effect.def))+" Grade")
				dmg = playerpkmn.stats.def
				if defstagep < 0
					dmg = dmg*2
					dmg = dmg/(abs(defstagep)+2)
					pkmnstats.player.def = calcstat(dmg, lvlp)
				endif
			else
				print("The defence cant go any lower")
			endif
		endif
		if movedb[inde].effect.spAtk <> 0
			if spAtkstagep > -6
				print("It lowers "+pkmnp+"'s Special Attack by "+str(-(movedb[inde].effect.spAtk))+" Grade")
				spAtkstagep = spAtkstagep -1
				dmg = playerpkmn.stats.spAtk
				if spAtkstagep < 0
					dmg = dmg*2
					dmg = dmg/(abs(spAtkstagep)+2)
					pkmnstats.player.spAtk = calcstat(dmg, lvlp)
				endif
			else
				print("The Special Attack cant go any lower")
			endif
		endif
		if movedb[inde].effect.spDef <> 0
			if spDefstagep > -6
				print("It lowers "+pkmnp+"'s Special Defence by "+str(-(movedb[inde].effect.spDef))+" Grade")
				spDefstagep = spDefstagep -1
				dmg = playerpkmn.stats.spDef
				if spDefstagep < 0
					dmg = dmg*2
					dmg = dmg/(abs(spDefstagep)+2)
					pkmnstats.player.spDef = calcstat(dmg, lvlp)
				endif
			else
				print("The Special Defence cant go any lower")
			endif
		endif
		if movedb[inde].effect.speed <> 0
			if speedstagep > -6
				print("It lowers "+pkmnp+"'s Speed by "+str(-(movedb[inde].effect.speed))+" Grade")
				speedstagep = speedstagep -1
				dmg = playerpkmn.stats.speed
				if speedstagep < 0
					dmg = dmg*2
					dmg = dmg/(abs(speedstagep)+2)
					pkmnstats.player.speed = calcstat(dmg, lvlp)
				endif
			else
				print("The speed cant go any lower")
			endif
		endif
	endif
return


//Player Attack

// THE PLAYER ATTACK IS THE SAME AS THE ENEMIES, JUST WITH DIFFERENT VARIABLES (thus I wont comment it)

playerAttack:
	message = "Your "+pkmnp+" attacks with "+attackps
	Print(message)
		if movedb[indp].atk <> 0
			dmg = 2*lvlp
			dmg = dmg/5
			dmg = dmg+2
			dmg = dmg*movedb[indp].atk
			dmg = dmg*pkmnstats.player.atk
			dmg = dmg/pkmnstats.enemy.def
			dmg = dmg/50
			dmg = dmg+2
			dmgdone = dmg
			Print("It does "+str(dmgdone)+" Damage")
			hpe = hpe-dmgdone
			gosub updateHealthr
	elseif movedb[indp].attacktype = "Status"
		if movedb[indp].effect.accuracy <> 0
			print("It lowers "+pkmne+"'s Accuracy by "+str(-(movedb[indp].effect.accuracy))+" Grade")
		endif
		if movedb[indp].effect.atk <> 0
			if atkstagee > -6
				atkstagee = atkstagee - 1
				print("It lowers "+pkmne+"'s Attack by "+str(-(movedb[indp].effect.atk))+" Grade")
				dmg = enemypkmn.stats.atk
				if atkstagee < 0
					dmg = dmg*2
					dmg = dmg/(abs(atkstagee)+2)
					pkmnstats.enemy.atk = calcstat(dmg, lvle)
				endif
			else
				print("The attack cant go any lower")
			endif
		endif
		if movedb[indp].effect.def <> 0
			if defstagee > -6
				defstagee = defstagee - 1
				print("It lowers "+pkmne+"'s Defence by "+str(-(movedb[indp].effect.def))+" Grade")
				dmg = enemypkmn.stats.def
				if defstagee < 0
					dmg = dmg*2
					dmg = dmg/(abs(defstagee)+2)
					pkmnstats.enemy.def = calcstat(dmg, lvle)
				endif
			else
				print("The defence cant go any lower")
			endif
		endif
		if movedb[indp].effect.spAtk <> 0
			if spAtkstagee > -6
				print("It lowers "+pkmne+"'s Special Attack by "+str(-(movedb[indp].effect.spAtk))+" Grade")
				spAtkstagee = spAtkstagee -1
				dmg = enemypkmn.stats.spAtk
				if spAtkstagee < 0
					dmg = dmg*2
					dmg = dmg/(abs(spAtkstagee)+2)
					pkmnstats.enemy.spAtk = calcstat(dmg, lvle)
				endif
			else
				print("The Special Attack cant go any lower")
			endif
		endif
		if movedb[indp].effect.spDef <> 0
			if spDefstagee > -6
				print("It lowers "+pkmne+"'s Special Defence by "+str(-(movedb[indp].effect.spDef))+" Grade")
				spDefstagee = spDefstagee -1
				dmg = enemypkmn.stats.spDef
				if spDefstagee < 0
					dmg = dmg*2
					dmg = dmg/(abs(spDefstagee)+2)
					pkmnstats.enemy.spDef = calcstat(dmg, lvle)
				endif
			else
				print("The Special Defence cant go any lower")
			endif
		endif
		if movedb[indp].effect.speed <> 0
			if speedstagee > -6
				print("It lowers "+pkmne+"'s Speed by "+str(-(movedb[indp].effect.speed))+" Grade")
				speedstagee = speedstagee -1
				dmg = enemypkmn.stats.speed
				if speedstagee < 0
					dmg = dmg*2
					dmg = dmg/(abs(speedstagee)+2)
					pkmnstats.enemy.speed = calcstat(dmg, lvle)
				endif
			else
				print("The speed cant go any lower")
			endif
		endif
	endif
return




updateHealthr: // Updates the health bar for the enemy
	nbmr = CreateMemblockFromImage(namebari2r) // turn the sprite image into a memblock
	//nbml = CreateMemblockFromImage(namebari2l)
	size = GetMemblockSize(nbmr) //get the size of the memblock
	
	// Do some calculations:
	
	// x/85 = hpe/hpme
	// x = (hpe/hpme)*85
	healthfillcalc = hpe
	healthfillcalc = healthfillcalc/hpme
	healthfillcalc = healthfillcalc*85
	healthfill = healthfillcalc // round the float to an integer
	
	
	//timersync = 0 // NO LONGER USED
	changed = 0 // if something changed in the image
	
	for r = 1 to 85-healthfill // for all the x pixels of the beginning of the healthbar to the fill
		for a = 10 to 15 // for all the y pixels that the healthbar takes up
			
			c = r+(a*119) // 119 pixels in the image, converts the x and y to the pixel number
			c = c*4 // converts pixel number into memblock byte
			c = c+12 //adds 12 because the first 12 bytes are info bytes, and not actual pixels
			colorR = GetMemblockByte(nbmr, c) // get the red value of the pixel
			colorG = GetMemblockByte(nbmr, c+1) // get the green value of the pixel
			colorB = GetMemblockByte(nbmr, c+2) // get the blue value of the pixel
			colorA = GetMemblockByte(nbmr, c+3) // get the transparency of the pixel
			
			// if the color is one of the greens used, and the pixel is not invisible
			if ((colorR = 24 and colorG = 200 and colorB = 31) or (colorR = 91 and colorG = 253 and colorB = 89)) and colorA <> 0
				SetMemblockByte(nbmr, c+3, 0) //set the pixel to be invisible
				changed = 1 // say that something changed
			endif
		next a
		if changed = 1 // if something changed in that collum of pixels
			namebari2r = CreateImageFromMemblock(nbmr) //convert memblock to image
			SetSpriteImage(namebare, namebari2r) //update sprite image
			if message <> "" then print(message) //if there is an attack, print the attack message
			sync() // update screen so it doesnt seem like an instant change
		endif
		changed = 0 // reset the changed to 0
	next r
	
	// after all pixels are done being checked, convert memblock to image, and update the sprite image
	namebari2r = CreateImageFromMemblock(nbmr)
	SetSpriteImage(namebare, namebari2r)
	
return


// THE FOLLOWING IS PRETTY MUCH THE SAME AS ABOVE, JUST WITH SLIGHTLY DIFFERENT NUMBERS, AND VARIABLES
// I WILL NOT BE COMMENTING IT

updateHealthl: // Updates the health bar for the player
	nbml = CreateMemblockFromImage(namebari2l)
	size = GetMemblockSize(nbml)
	healthfillcalc = hpp
	healthfillcalc = healthfillcalc/hpmp
	healthfillcalc = healthfillcalc*82
	healthfill = healthfillcalc
	healthfill = healthfill+29
	
	changed = 0
	timersync = 0
	for r = 112 to healthfill step -1
		for a = 10 to 15
			c = r+(a*119)
			c = c*4
			c = c+12
			colorR = GetMemblockByte(nbml, c)
			colorG = GetMemblockByte(nbml, c+1)
			colorB = GetMemblockByte(nbml, c+2)
			colorA = GetMemblockByte(nbml, c+3)
			if ((colorR = 24 and colorG = 200 and colorB = 31) or (colorR = 91 and colorG = 253 and colorB = 89)) and colorA <> 0
				SetMemblockByte(nbml, c+3, 0)
				changed = 1
			endif
		next a
		
		if changed = 1
			namebari2l = CreateImageFromMemblock(nbml)
			SetSpriteImage(namebarp, namebari2l)
			if message <> "" then print(message)
			sync()
		endif
		changed = 0
	next r
	
	namebari2l = CreateImageFromMemblock(nbml)
	SetSpriteImage(namebarp, namebari2l)
	
return



/* old code:
	// update health
	for c = 12+(119*10)*4 to size-1-(119*6*4) step 4
		
		colorR = GetMemblockByte(nbml, c)
		colorG = GetMemblockByte(nbml, c+1)
		colorB = GetMemblockByte(nbml, c+2)
				
		if mod((c/4)-2, 119) > healthfill
			if (colorR = 24 and colorG = 200 and colorB = 31) or (colorR = 91 and colorG = 253 and colorB = 89)
				timersync = timersync +1
				if timersync = 5
					namebari2l = CreateImageFromMemblock(nbml)
					SetSpriteImage(namebarp, namebari2l)
					sync()
					timersync = 0
				endif
				SetMemblockByte(nbml, c+3, 1)
			endif
		endif
			
	next c

*/



remstart End Subroutines: End Pokemon Battle
  ______           _        _____       _                     _   _                 
 |  ____|         | |      / ____|     | |                   | | (_)                
 | |__   _ __   __| |     | (___  _   _| |__  _ __ ___  _   _| |_ _ _ __   ___  ___ 
 |  __| | '_ \ / _` |      \___ \| | | | '_ \| '__/ _ \| | | | __| | '_ \ / _ \/ __|
 | |____| | | | (_| |      ____) | |_| | |_) | | | (_) | |_| | |_| | | | |  __/\__ \
 |______|_| |_|\__,_|     |_____/ \__,_|_.__/|_|  \___/ \__,_|\__|_|_| |_|\___||___/
                                                                                    
                                                                                    

  ______           _       _____      _                                    ____        _   _   _      
 |  ____|         | |     |  __ \    | |                                  |  _ \      | | | | | |     
 | |__   _ __   __| |     | |__) |__ | | _____ _ __ ___   ___  _ __       | |_) | __ _| |_| |_| | ___ 
 |  __| | '_ \ / _` |     |  ___/ _ \| |/ / _ \ '_ ` _ \ / _ \| '_ \      |  _ < / _` | __| __| |/ _ \
 | |____| | | | (_| |     | |  | (_) |   <  __/ | | | | | (_) | | | |     | |_) | (_| | |_| |_| |  __/
 |______|_| |_|\__,_|     |_|   \___/|_|\_\___|_| |_| |_|\___/|_| |_|     |____/ \__,_|\__|\__|_|\___|
                                                                                                      
                                                                                                      


remend
