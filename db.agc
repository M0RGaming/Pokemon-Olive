remstart Database
  _____        _        _                    
 |  __ \      | |      | |                   
 | |  | | __ _| |_ __ _| |__   __ _ ___  ___ 
 | |  | |/ _` | __/ _` | '_ \ / _` / __|/ _ \
 | |__| | (_| | || (_| | |_) | (_| \__ \  __/
 |_____/ \__,_|\__\__,_|_.__/ \__,_|___/\___|
                                             
                                             

remend

// Note: most variables created here are types, which are defined before creation of variable


remstart Functions
  ______                _   _                 
 |  ____|              | | (_)                
 | |__ _   _ _ __   ___| |_ _  ___  _ __  ___ 
 |  __| | | | '_ \ / __| __| |/ _ \| '_ \/ __|
 | |  | |_| | | | | (__| |_| | (_) | | | \__ \
 |_|   \__,_|_| |_|\___|\__|_|\___/|_| |_|___/
                                              
                                              

remend

// adds a move to the specified pokemon's movelist
function db(pkmn ref as pkmn, level, move as String)
	movelist as movelistt // create new type
	
	movelist.level = level // set the level required to gain the move
	movelist.move = move // set the move name
	pkmn.movelist.insert(movelist) // add the move to the pokemon's movelist
	
	/* OLD
	pkmn.movelist.length = pkmn.movelist.length+1
	length = pkmn.movelist.length
	pkmn.movelist[length].level = level
	pkmn.movelist[length].move = move
	*/
endfunction

// sets the base stats of a pokemon to the specified ones.
function stats(pkmn ref as pkmn, health, atk, def, spAtk, spDef, speed, exp)
	
	pkmn.stats.health = health // base health
	pkmn.stats.atk = atk // base attack
	pkmn.stats.def = def // base defence
	pkmn.stats.spAtk = spAtk // base special attack (not used)
	pkmn.stats.spDef = spDef // base special attack (not used)
	pkmn.stats.speed = speed // base speed
	pkmn.stats.expyeild = exp // base exp yeild : stat determines how much exp opponent gets in a win
	
endfunction

remstart End Functions
  ______           _       ______                _   _                 
 |  ____|         | |     |  ____|              | | (_)                
 | |__   _ __   __| |     | |__ _   _ _ __   ___| |_ _  ___  _ __  ___ 
 |  __| | '_ \ / _` |     |  __| | | | '_ \ / __| __| |/ _ \| '_ \/ __|
 | |____| | | | (_| |     | |  | |_| | | | | (__| |_| | (_) | | | \__ \
 |______|_| |_|\__,_|     |_|   \__,_|_| |_|\___|\__|_|\___/|_| |_|___/
                                                                       
                                                                       

remend



db:
	// Switch over to the db folder (not used much anymore)
	SetFolder("")
	SetFolder("db")
	
	
	
	remstart Create Pokedex
   _____                _             _____      _            _           
  / ____|              | |           |  __ \    | |          | |          
 | |     _ __ ___  __ _| |_ ___      | |__) |__ | | _____  __| | _____  __
 | |    | '__/ _ \/ _` | __/ _ \     |  ___/ _ \| |/ / _ \/ _` |/ _ \ \/ /
 | |____| | |  __/ (_| | ||  __/     | |  | (_) |   <  __/ (_| |  __/>  < 
  \_____|_|  \___|\__,_|\__\___|     |_|   \___/|_|\_\___|\__,_|\___/_/\_\
                                                                          
                                                                          

	remend
	
	
	type movelistt // movelist type
		level as Integer // level required to gain move
		move as String // move name
	endtype
	
	type statst // stats type
		health as Integer // pretty self explanitory
		atk as Integer
		def as integer
		spAtk as integer
		spDef as integer
		speed as integer
		expyeild as Integer
	endtype
	
	type evolvet // evolve type
		level as Integer // level to evolve
		form as String // what it evolves to
	endtype
	
	type pkmn // type pokemon
		evolve as evolvet // evolution
		name as String // name
		stats as statst // stats
		movelist as movelistt[] // moves that can be learnt
	endtype
	
	// any value that is not defined is by default set to 0 or ""
	
	
	// NOTE: I WILL NOT BE COMENTING EVERY PKMN, JUST THE FIRST ONE
	
	pkmnlist as pkmn[] // create a list of pkmn
	
	bulbasaur as pkmn // define bulbasaur
	bulbasaur.name = "Bulbasaur" // name
	bulbasaur.evolve.level = 16 : bulbasaur.evolve.form = "Ivysaur" // evolution form and level
	stats(bulbasaur, 45, 49, 49, 65, 65, 45, 64) // stats (stats function is above)
	db(bulbasaur, 1, "Tackle") // define movelist (db function is above)
	db(bulbasaur, 3, "Growl")
	pkmnlist.insert(bulbasaur) // add to database
	
	
	ivysaur as pkmn
	ivysaur.name = "Ivysaur"
	ivysaur.evolve.level = 32 : ivysaur.evolve.form = "Venusaur"
	stats(ivysaur, 60, 62, 63, 80, 80, 60, 142)
	pkmnlist.insert(ivysaur)
	
	
	venusaur as pkmn
	venusaur.name = "Venusaur"
	stats(venusaur, 80, 82, 83, 100, 100, 80, 236)
	pkmnlist.insert(venusaur)
	
	
	charmander as pkmn
	charmander.name = "Charmander"
	charmander.evolve.level = 16 : charmander.evolve.form = "Charmeleon"
	stats(charmander, 39, 52, 43, 60, 50, 65, 62)
	db(charmander, 1, "Growl")
	db(charmander, 1, "Scratch")
	//db(charmander, 6, "Tackle")
	pkmnlist.insert(charmander)
	
	charmeleon as pkmn
	charmeleon.name = "Charmeleon"
	charmeleon.evolve.level = 36 : charmeleon.evolve.form = "Charizard"
	stats(charmeleon, 58, 64, 58, 80, 65, 80, 142)
	db(charmeleon, 6, "Tackle")
	pkmnlist.insert(charmeleon)
	
	charizard as pkmn
	charizard.name = "Charizard"
	stats(charizard, 78, 84, 78, 109, 85, 100, 240)
	pkmnlist.insert(charizard)
	
	squirtle as pkmn
	squirtle.name = "Squirtle"
	squirtle.evolve.level = 16 : squirtle.evolve.form = "Wartortle"
	stats(squirtle, 44, 48, 65, 50, 64, 43, 63)
	db(squirtle, 1, "Tackle")
	db(squirtle, 4, "Tail Whip")
	pkmnlist.insert(squirtle)
	
	wartortle as pkmn
	wartortle.name = "Wartortle"
	wartortle.evolve.level = 36 : wartortle.evolve.form = "Blastoise"
	stats(wartortle, 59, 63, 80, 65, 80, 58, 142)
	pkmnlist.insert(wartortle)
	
	blastiose as pkmn
	blastiose.name = "Blastoise"
	stats(blastiose, 79, 83, 100, 85, 105, 78, 239)
	pkmnlist.insert(blastiose)
	
	remstart End Pokedex : Create Moves DB

  ______           _   _____      _            _           
 |  ____|         | | |  __ \    | |          | |          
 | |__   _ __   __| | | |__) |__ | | _____  __| | _____  __
 |  __| | '_ \ / _` | |  ___/ _ \| |/ / _ \/ _` |/ _ \ \/ /
 | |____| | | | (_| | | |  | (_) |   <  __/ (_| |  __/>  < 
 |______|_| |_|\__,_| |_|   \___/|_|\_\___|\__,_|\___/_/\_\
                                                           
                                                           


   _____                _             __  __                           _____  ____  
  / ____|              | |           |  \/  |                         |  __ \|  _ \ 
 | |     _ __ ___  __ _| |_ ___      | \  / | _____   _____  ___      | |  | | |_) |
 | |    | '__/ _ \/ _` | __/ _ \     | |\/| |/ _ \ \ / / _ \/ __|     | |  | |  _ < 
 | |____| | |  __/ (_| | ||  __/     | |  | | (_) \ V /  __/\__ \     | |__| | |_) |
  \_____|_|  \___|\__,_|\__\___|     |_|  |_|\___/ \_/ \___||___/     |_____/|____/ 
                                                                                    
                                                                                    
	remend
	
	type effects // if the move has a status effect
		atk as Integer // pretty self explanatory
		def as integer
		spAtk as integer
		spDef as integer
		speed as integer
		accuracy as integer
	endtype
	
	type moves // moves type
		name as String // name of move
		attacktype as String // weither its physical, special, or status
		element as String // element of move (does nothing for right now)
		atk as Integer // damage dealt
		effect as effects // status effects dealt
	endtype
	
	
	movedb as moves[] // Create a list of all moves
	
	// any value that is not defined is by default set to 0 or ""
	
	// NOTE: IM NOT GOING TO COMMENT ON THE CREATION OF ALL THE MOVES, JUST THE FIRST AND SECOND
	
	tackle as moves // create move tackle
	tackle.name = "Tackle" // define name of move
	tackle.attacktype = "Physical" // define as an attack
	tackle.element = "Normal" // element is normal
	tackle.atk = 40 // damage value
	movedb.insert(tackle) // add to database
	
	growl as moves // create move growl
	growl.name = "Growl" // define name of move
	growl.attacktype = "Status" // define as an status effect
	growl.element = "Normal" // element is normal
	growl.effect.atk = -1 // lower atk by 1 stage
	movedb.insert(growl) // add to database
	
	scratch as moves
	scratch.name = "Scratch"
	scratch.attacktype = "Physical"
	scratch.element = "Normal"
	scratch.atk = 40
	movedb.insert(scratch)
	
	tailWhip as moves
	tailWhip.name = "Tail Whip"
	tailWhip.attacktype = "Status"
	tailWhip.element = "Normal"
	tailWhip.effect.def = -1
	movedb.insert(tailWhip)
	
	
	remstart End Move Creation (below is just old, depreciated stuff)
  ______           _       __  __                       _____                _   _             
 |  ____|         | |     |  \/  |                     / ____|              | | (_)            
 | |__   _ __   __| |     | \  / | _____   _____      | |     _ __ ___  __ _| |_ _  ___  _ __  
 |  __| | '_ \ / _` |     | |\/| |/ _ \ \ / / _ \     | |    | '__/ _ \/ _` | __| |/ _ \| '_ \ 
 | |____| | | | (_| |     | |  | | (_) \ V /  __/     | |____| | |  __/ (_| | |_| | (_) | | | |
 |______|_| |_|\__,_|     |_|  |_|\___/ \_/ \___|      \_____|_|  \___|\__,_|\__|_|\___/|_| |_|
                                                                                               
                                                                                               

  ______           _       _____        _        _                    
 |  ____|         | |     |  __ \      | |      | |                   
 | |__   _ __   __| |     | |  | | __ _| |_ __ _| |__   __ _ ___  ___ 
 |  __| | '_ \ / _` |     | |  | |/ _` | __/ _` | '_ \ / _` / __|/ _ \
 | |____| | | | (_| |     | |__| | (_| | || (_| | |_) | (_| \__ \  __/
 |______|_| |_|\__,_|     |_____/ \__,_|\__\__,_|_.__/ \__,_|___/\___|
                                                                      
                                                                      

	remend
	
	
	
	/* OLD
	do
		print(movedb.toJSON())
		Sync()
	loop
	
	name as String = "Bulbasaur"
	
	file = OpenToWrite("1.db", 0)
	WriteString(file, name)
	WriteInteger(file, 45) // HP
	WriteInteger(file, 49) // Attack
	WriteInteger(file, 49) // Defense
	WriteInteger(file, 65) // Sp.Atk
	WriteInteger(file, 65) // Sp.Def
	WriteInteger(file, 45) // Speed
	
	WriteInteger(file,1) // Level
	WriteInteger(file,1) // Move ID // Tackle
	
	WriteInteger(file, 3)
	WriteInteger(file, 2) // Growl
	
	CloseFile(file)
	
	file = OpenToWrite("4.db", 0)
	name = "Charmander"
	hp = 39
	atk = 52
	def = 43
	spAtk = 60
	spDef = 50
	speed = 65
	gosub write
	WriteInteger(file,1)
	WriteInteger(file,2)
	WriteInteger(file,1)
	WriteInteger(file,3) // Scratch
	CloseFile(file)
	
	file = OpenToWrite("7.db", 0)
	name = "Squirtle"
	hp = 44
	atk = 48
	def = 65
	spAtk = 50
	spDef = 64
	speed = 43
	gosub write
	WriteInteger(file,1)
	WriteInteger(file,1)
	WriteInteger(file,4)
	WriteInteger(file,4) // Tail Whip
	CloseFile(file)
	
	*/
		
return


/*
write:
	WriteString(file, name)
	WriteInteger(file, hp) // HP
	WriteInteger(file, atk) // Attack
	WriteInteger(file, def) // Defense
	WriteInteger(file, spAtk) // Sp.Atk
	WriteInteger(file, spDef) // Sp.Def
	WriteInteger(file, speed) // Speed
return
*/
