
// Project:  ⌊Project Olive⌉ Mk1 
// Created: 2018-05-07
// Made by M0RGaming

#include "pkmn.agc"
#include "db.agc"

remstart Made By: Chinmay Patil

  __  __           _            ____          
 |  \/  |         | |          |  _ \       _ 
 | \  / | __ _  __| | ___      | |_) |_   _(_)
 | |\/| |/ _` |/ _` |/ _ \     |  _ <| | | |  
 | |  | | (_| | (_| |  __/     | |_) | |_| |_ 
 |_|  |_|\__,_|\__,_|\___|     |____/ \__, (_)
                                       __/ |  
                                      |___/   

   _____ _     _                             	  _____      _   _ _ 
  / ____| |   (_)                            	 |  __ \    | | (_) |
 | |    | |__  _ _ __  _ __ ___   __ _ _   _ 	 | |__) |_ _| |_ _| |
 | |    | '_ \| | '_ \| '_ ` _ \ / _` | | | |	 |  ___/ _` | __| | |
 | |____| | | | | | | | | | | | | (_| | |_| |	 | |  | (_| | |_| | |
  \_____|_| |_|_|_| |_|_| |_| |_|\__,_|\__, |	 |_|   \__,_|\__|_|_|
                                        __/ |                     
                                       |___/                      
                                       
remend


// NOTE: ALL FORMULAS USED HAVE BEEN ADAPTED FROM http://bulbapedia.bulbagarden.net/


remstart See main.agc First : See pkmn.agc Next : See db.agc Last : (You dont have to but its prefered)

  ____                                  _                               _____ _          _   
 / ___|  ___  ___       _ __ ___   __ _(_)_ __    __ _  __ _  ___      |  ___(_)_ __ ___| |_ 
 \___ \ / _ \/ _ \     | '_ ` _ \ / _` | | '_ \  / _` |/ _` |/ __|     | |_  | | '__/ __| __|
  ___) |  __/  __/     | | | | | | (_| | | | | || (_| | (_| | (__      |  _| | | |  \__ \ |_ 
 |____/ \___|\___|     |_| |_| |_|\__,_|_|_| |_(_)__,_|\__, |\___|     |_|   |_|_|  |___/\__|
                                                       |___/                                 


  ____                        _                                            _   _           _   
 / ___|  ___  ___       _ __ | | ___ __ ___  _ __    __ _  __ _  ___      | \ | | _____  _| |_ 
 \___ \ / _ \/ _ \     | '_ \| |/ / '_ ` _ \| '_ \  / _` |/ _` |/ __|     |  \| |/ _ \ \/ / __|
  ___) |  __/  __/     | |_) |   <| | | | | | | | || (_| | (_| | (__      | |\  |  __/>  <| |_ 
 |____/ \___|\___|     | .__/|_|\_\_| |_| |_|_| |_(_)__,_|\__, |\___|     |_| \_|\___/_/\_\\__|
                       |_|                                |___/                                


  ____                      _ _                            _              _   
 / ___|  ___  ___        __| | |__   __ _  __ _  ___      | |    __ _ ___| |_ 
 \___ \ / _ \/ _ \      / _` | '_ \ / _` |/ _` |/ __|     | |   / _` / __| __|
  ___) |  __/  __/     | (_| | |_) | (_| | (_| | (__      | |__| (_| \__ \ |_ 
 |____/ \___|\___|      \__,_|_.__(_)__,_|\__, |\___|     |_____\__,_|___/\__|
                                          |___/                               






   ____   __                ____              _ _         _   _                       _____     
  / /\ \ / /__  _   _      |  _ \  ___  _ __ ( ) |_      | | | | __ ___   _____      |_   _|__  
 | |  \ V / _ \| | | |     | | | |/ _ \| '_ \|/| __|     | |_| |/ _` \ \ / / _ \       | |/ _ \ 
 | |   | | (_) | |_| |     | |_| | (_) | | | | | |_      |  _  | (_| |\ V /  __/       | | (_) |
 | |   |_|\___/ \__,_|     |____/ \___/|_| |_|  \__|     |_| |_|\__,_| \_/ \___|       |_|\___/ 
  \_\_        _         ___ _             ____            __                        ___         
 | __ ) _   _| |_      |_ _| |_ ___      |  _ \ _ __ ___ / _| ___ _ __ _ __ ___  __| \ \        
 |  _ \| | | | __|      | || __/ __|     | |_) | '__/ _ \ |_ / _ \ '__| '__/ _ \/ _` || |       
 | |_) | |_| | |_       | || |_\__ \     |  __/| | |  __/  _|  __/ |  | | |  __/ (_| || |       
 |____/ \__,_|\__|     |___|\__|___/     |_|   |_|  \___|_|  \___|_|  |_|  \___|\__,_|| |       
                                                                                     /_/        
                                                                                     

remend


remstart Downloading Files

  _____                      _                 _ _                   ______ _ _           
 |  __ \                    | |               | (_)                 |  ____(_) |          
 | |  | | _____      ___ __ | | ___   __ _  __| |_ _ __   __ _      | |__   _| | ___  ___ 
 | |  | |/ _ \ \ /\ / / '_ \| |/ _ \ / _` |/ _` | | '_ \ / _` |     |  __| | | |/ _ \/ __|
 | |__| | (_) \ V  V /| | | | | (_) | (_| | (_| | | | | | (_| |     | |    | | |  __/\__ \
 |_____/ \___/ \_/\_/ |_| |_|_|\___/ \__,_|\__,_|_|_| |_|\__, |     |_|    |_|_|\___||___/
                                                          __/ |                           
                                                         |___/                            
remend



/* OLD METHOD - DEPRECIATED - KEPT ONLY AS AN ARTIFACT/BACKUP

function downloadFile(filetype, file as String, http)
	//if GetFileExists(file+".mem") = 0
		
		if filetype = 1
			GetHTTPFile( http, file+".jpg", file+".jpg" )
			while GetHTTPFileComplete(http) = 0
				Print( "Downloading: " + str(GetHTTPFileProgress(http)) )
				Sync()
			endwhile
			CreateFileFromMemblock(file+".mem", CreateMemblockFromImage(LoadImage(file+".jpg")))
			DeleteFile(file+".jpg")
		elseif filetype = 2
			GetHTTPFile( http, file+".png", file+".png" )
			while GetHTTPFileComplete(http) = 0
				Print( "Downloading: " + str(GetHTTPFileProgress(http)) )
				Sync()
			endwhile
			CreateFileFromMemblock(file+".mem", CreateMemblockFromImage(LoadImage(file+".png")))
			DeleteFile(file+".png")
		elseif filetype = 3
			print(file+".ogg")
			sync()
			sleep(1500)
			GetHTTPFile( http, file+".ogg", file+".ogg" )
			while GetHTTPFileComplete(http) = 0
				Print( "Downloading: " + str(GetHTTPFileProgress(http)) )
				Sync()
			endwhile
		endif
	//endif
	
endfunction
*/

function downloadFile(file as String,http) // Downloads the file specified, http is the connection
	if GetFileExists(file) = 0 // if we dont already have the file, start to download it
		GetHTTPFile(http, file, file)
		while GetHTTPFileComplete(http) = 0 // while file is not done downloading
			Print("Downloading Additional Media Files") // tell user that we are downloading
			Print( "Downloading: " + str(GetHTTPFileProgress(http)) ) // say progress
			Print("File : "+str(filenumber)+"/19") //Show file number
			Sync()
		endwhile
		filenumber = filenumber+1 // add file to completed files
	endif
endfunction

	

function createImage(name as String) // No longer used, was previously used to turn a .mem into an image
	CreateMemblockFromFile(1, name+".mem")
	names = CreateImageFromMemblock(1)
	DeleteMemblock(1)
endfunction names











leave = 0

// if the download is verified, dont download, not added, as it is no longer needed
if GetFileExists("download.verify")
	verify = OpenToRead("download.verify")
	if ReadInteger(verify) = 1
		leave = 1
	else
		leave = 0
	endif
else
	leave = 0
endif


if leave = 0 or leave = 1 // start downloading
	
	global filenumber = 0 // specify the current file number
	
	// defines the files to download
	files as string[11] = ["StartTown.png","StartTownOriginal.png","namebar2l.png","namebar2r.png","missing.png","sans.ttf","starttown.ogg","starttownbeg.ogg","wild.ogg","wildstart.ogg","bt.ogg","btstart.ogg"]

	// create a connection and set it to the git page
	http = CreateHTTPConnection()
	SetHTTPHost( http, "raw.githubusercontent.com/M0RGaming/Project-Olive/master", 0 )
	
	/* OLD
	downloadFile(1, "mos", http)
	downloadFile(2, "StartTown", http)
	downloadFile(3, "starttown", http)
	*/
	
	// download all the files specified above
	for x = 0 to files.length
		downloadFile(files[x],http)
	next x
	
	/* MANUAL (depreciated)
	downloadFile("mos.jpg", http)
	downloadFile("StartTown.png", http)
	downloadFile("starttown.ogg", http)
	*/
	
	// download all pokemon sprites
	for x = 1 to 7 step 3 //pokedex numbers
		downloadFile(str(x)+".png",http) //front
		downloadFile(str(x)+"b.png",http) //back
	next x
	
	// Change folder to the water animation
	SetFolder("water")
	SetFolder("result")
	SetHTTPHost( http, "raw.githubusercontent.com/M0RGaming/Project-Olive/master/water/result", 0 )
	
	downloadFile("water.png",http) // download the water animation
	
	//Change back to normal media folder
	SetHTTPHost( http, "raw.githubusercontent.com/M0RGaming/Project-Olive/master", 0 )
	SetFolder("")
	SetFolder("media")
	/*
	downloadFile("bt.ogg", http)
	downloadFile("btstart.ogg", http)
	*/
	
	CloseHTTPConnection(http) // end the connection
	DeleteHTTPConnection(http) // delete the connection
	

endif





remstart End Downloading : Load Selected Mode(Dev)


  ______           _        _____                      _                 _ _             
 |  ____|         | |      |  __ \                    | |               | (_)            
 | |__   _ __   __| |      | |  | | _____      ___ __ | | ___   __ _  __| |_ _ __   __ _ 
 |  __| | '_ \ / _` |      | |  | |/ _ \ \ /\ / / '_ \| |/ _ \ / _` |/ _` | | '_ \ / _` |
 | |____| | | | (_| |      | |__| | (_) \ V  V /| | | | | (_) | (_| | (_| | | | | | (_| |
 |______|_| |_|\__,_|      |_____/ \___/ \_/\_/ |_| |_|_|\___/ \__,_|\__,_|_|_| |_|\__, |
                                                                                    __/ |
                                                                                   |___/                                                                               |___/                            


  _                     _        _____      _           _           _       __  __           _      
 | |                   | |      / ____|    | |         | |         | |     |  \/  |         | |     
 | |     ___   __ _  __| |     | (___   ___| | ___  ___| |_ ___  __| |     | \  / | ___   __| | ___ 
 | |    / _ \ / _` |/ _` |      \___ \ / _ \ |/ _ \/ __| __/ _ \/ _` |     | |\/| |/ _ \ / _` |/ _ \
 | |___| (_) | (_| | (_| |      ____) |  __/ |  __/ (__| ||  __/ (_| |     | |  | | (_) | (_| |  __/
 |______\___/ \__,_|\__,_|     |_____/ \___|_|\___|\___|\__\___|\__,_|     |_|  |_|\___/ \__,_|\___|
                                       / /  __ \          \ \                                       
                                      | || |  | | _____   _| |                                      
                                      | || |  | |/ _ \ \ / / |                                      
                                      | || |__| |  __/\ V /| |                                      
                                      | ||_____/ \___| \_/ | |                                      
                                       \_\                /_/                                       
                                                                                                    



remend

// PKMN Prof = Douglas Fir

dev = 1 /// Choose dev mode
// 1 = main 
// 2 = pkmn (NO LONGER WORKS) (cant be called outside of main)
// 3 = db

// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "[Project Olive] Mk2" )

if GetDeviceBaseName() = "android"
	SetWindowSize( 256, 256, 0)
else
	SetWindowSize( 1024, 768, 0 )
endif

SetWindowAllowResize( 1 ) // allow the user to resize the window

// set display properties
SetVirtualResolution( 256, 256 ) // doesn't have to match the window
SetOrientationAllowed( 0, 0, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 30, 0 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts

SetPrintColor(150 ,150, 150)

LoadFont(1, "sans.ttf")
//LoadFont(2, "math.ttf")

CreateText(1, "⌊Project Olive⌉")
SetTextSize(1, 75)
SetTextAlignment(1, 1)
SetTextPosition(1, GetVirtualWidth()/2, GetVirtualHeight()/2-GetTextTotalHeight(1)/2)
SetTextFont(1, 1)
SetTextColorAlpha(1, 0)
//gosub pkmn


// FLASH [Project Olive]

for x = 1 to 15
	SetTextColorAlpha(1, GetTextColorAlpha(1)+15)
	Sync()
next x

for x = 1 to 30
	Sync()
next x

for x = 1 to 15
	SetTextColorAlpha(1, GetTextColorAlpha(1)-15)
	Sync()
next x
DeleteText(1)





if dev = 3 // IF DB DEV MODE IS SELECTED ACTIVATE THIS
	gosub db // LOAD THE DATABASE
	do
		Sync() // INFINITE LOOP DOING NOTHING
	loop
	end

elseif dev = 2 // IF PKMN BATTLE DEV MODE IS SELECTED ACTIVATE THIS (NO LONGER WORKS)
	gosub db // LOAD THE DATABASE
	do
		gosub pkmn // LOAD THE POKEMON BATTLE
		Sync()
	loop // INFINITE LOOP TO RELOAD BATTLE AFTER DONE

	end
else // IF MAIN MODE (DEV MODE 1) IS SELECTED ACTIVATE THIS

gosub db // LOAD THE DATABASE


// GOTO MEDIA FOLDER FOR THE IMAGES, MUSIC, AND FONTS

SetFolder("")
setfolder("media")



// CREATE A PARTY WITH 6 POKEMON (0 counts as a pokemon) AND THEIR RESPECTIVE EXP

type partyt // partyt stands for party type
	pokemon as pkmn[5] //the type pkmn is defined in db.agc
	exp as Integer[5] // EXP
endtype

party as partyt // DEFINES VARIABLE PARTY AS TYPE PARTYT


// ALLOW PLAYER TO SELECT STARTER
do
	Print("Press 1 for Bulbasaur, 2 for Charmander, or 3 for Squirtle")
	
	if GetRawKeyPressed(asc("1")) // BULBAUR
		party.pokemon[0] = pkmnlist[0] // copy the value of the pkmn inside the pokedex (created in db)
		party.exp[0] = 100 // set exp
		player = 1 // define player pokedex number
		
	elseif GetRawKeyPressed(asc("2")) // Squirtle
		party.pokemon[0] = pkmnlist[3] // copy the value of the pkmn inside the pokedex (created in db)
		party.exp[0] = 100 // set exp
		player = 4 // define player pokedex number
		
	elseif GetRawKeyPressed(asc("3"))
		party.pokemon[0] = pkmnlist[6] // copy the value of the pkmn inside the pokedex (created in db)
		party.exp[0] = 100 // set exp
		player = 7 // define player pokedex number
	endif
	Sync()
	
	if party.pokemon[0].name <> "" then exit // If player selected something, exit
loop


// Start Music


/* Bloody tears, just there for me to have something to listen to while making this

btstart = LoadMusicOGG("btstart.ogg")
bt = LoadMusicOGG("bt.ogg")

*/

// Nevuma Town
btstart = LoadMusicOGG("starttownbeg.ogg")
bt = LoadMusicOGG("starttown.ogg")

// Set loop time using the btstart as a refrence music (its the part before the loop)
SetMusicLoopTimesOGG(bt, GetMusicDurationOGG(btstart), -1) //set Loop from btstart to the end of the song
PlayMusicOGG(bt, 1) // Play music looping forever


remstart End Loading : Functions

  _____           _    	 _                    _ _             
 | ____|_ __   __| | 	| |    ___   __ _  __| (_)_ __   __ _ 
 |  _| | '_ \ / _` | 	| |   / _ \ / _` |/ _` | | '_ \ / _` |
 | |___| | | | (_| | 	| |__| (_) | (_| | (_| | | | | | (_| |
 |_____|_| |_|\__,_| 	|_____\___/ \__,_|\__,_|_|_| |_|\__, |
													   	|___/ 


  _____                 _   _                 
 |  ___|   _ _ __   ___| |_(_) ___  _ __  ___ 
 | |_ | | | | '_ \ / __| __| |/ _ \| '_ \/ __|
 |  _|| |_| | | | | (__| |_| | (_) | | | \__ \
 |_|   \__,_|_| |_|\___|\__|_|\___/|_| |_|___/
                                              

remend


// Create Functions

function getTile(tile) // Output the name of the tile
	tiles as String
	if GetSpriteExists(tile) // if there is a tile
		// Get colors of tile
		colorR = GetSpriteColorRed(tile)
		colorG = GetSpriteColorGreen(tile)
		colorB = GetSpriteColorBlue(tile)
		
		// If the tile is a registered tile, output what the tile is
		if colorR = 0 and colorG = 233 and colorB = 255
			tiles = "water"
		elseif colorR = 0 and colorG = 0 and colorB = 0
			tiles = "wall"
		elseif colorR = 255 and colorG = 255 and colorB = 255
			tiles = "path"
		elseif colorR = 0 and colorG = 32 and colorB = 201
			tiles = "building"
		elseif colorR = 156 and colorG = 14 and colorB = 14
			tiles = "door"
		elseif colorR = 0 and colorG = 101 and colorB = 0
			tiles = "grass"
		else
			tiles = "N/A" // if tile is not known output "not applicable name" (it has no name)
		endif
		
		//print(tiles)
	else // otherwise output it as a wall (which would stop a person from entering the area)
		tiles = "wall"
		//print(tiles)
	endif
	
endfunction tiles //return the name of the tile to the point where the function was called


function moveChar(world as integer[], back, xtiles, ytiles, speedframes) // Moves the charecter
	// Map actualy moves, not the char (this makes the char in the center of the frame always)
	
	// world is the world tiles
	// back is the background sprite
	// x tiles is the amount of tiles moved in the x axis
	// y tiles is the amount of tiles moved in the y axis
	// speedframes is the speed in frames (less is faster) (has to be a multiple of 2)
	
	calc as float // used to calc stuff
	x as float
	y as float
	multiplyer as float // used later
	
	
	// convert amt of tiles to actual pixel counts (32 pixels per tile)
	x = 32*xtiles 
	y = 32*ytiles 
	
	
	// if the speed in frames is set to 0 move the map instantly
	if speedframes = 0
		for c=1 to world.length
			SetSpritePosition(world[c], GetSpriteX(world[c])-x, GetSpriteY(world[c])+y)
			SetSpritePosition(back, GetSpriteX(back)-x, GetSpriteY(back)+y)
		next c
	else
		// if speed in frames is greater than 0 frames
		
		// change speedframes to a float (calc)
		calc = speedframes
		
		// finds out how much pixels we must move over the speed (in frames) to move 1 tile
		multiplyer = 32/speedframes
		x = xtiles*multiplyer
		y = ytiles*multiplyer
		
		
		// move the char over the speed specified
		for f = 1 to speedframes
			for c=1 to world.length // move every tile
				SetSpritePosition(world[c], GetSpriteX(world[c])-x, GetSpriteY(world[c])+y)
			next c
			SetSpritePosition(back, GetSpriteX(back)-x, GetSpriteY(back)+y) // move the background
			Sync()
		next f
	endif
	
	
endfunction
remstart END OF FUNCTIONS


  _____           _       _____                 _   _                 
 | ____|_ __   __| |     |  ___|   _ _ __   ___| |_(_) ___  _ __  ___ 
 |  _| | '_ \ / _` |     | |_ | | | | '_ \ / __| __| |/ _ \| '_ \/ __|
 | |___| | | | (_| |     |  _|| |_| | | | | (__| |_| | (_) | | | \__ \
 |_____|_| |_|\__,_|     |_|   \__,_|_| |_|\___|\__|_|\___/|_| |_|___/
                                                                      

   ____                _             ___                                 
  / ___|_ __ ___  __ _| |_ ___      |_ _|_ __ ___   __ _  __ _  ___  ___ 
 | |   | '__/ _ \/ _` | __/ _ \      | || '_ ` _ \ / _` |/ _` |/ _ \/ __|
 | |___| | |  __/ (_| | ||  __/      | || | | | | | (_| | (_| |  __/\__ \
  \____|_|  \___|\__,_|\__\___|     |___|_| |_| |_|\__,_|\__, |\___||___/
                                                         |___/           


remend


// Create the charecter (a circle for now)

DrawEllipse(16, 16, 12, 12, MakeColor(150,150,150), MakeColor(150,150,150), 1)
Render()
chari = GetImage(0, 0, 32, 32)

//Sync()

//starttowni = createImage("StartTown")
starttowni = LoadImage("StartTown.png") // Create Starting Map
//CreateImageColor(2, 150, 150, 150, 255) // Char



/// Turn the map into a memblock to make all white pixels invisible
// (Microsoft Paint does not support invisible backgrounds and they become white upon saving)

memimage = CreateMemblockFromImage(starttowni) //turn map into memblock
size = GetMemblockSize(memimage) // get the size of the memblock

for c = 12 to size-1 step 4 // start at 12 because before 12 there is a bunch of info stuff, like size
	
	// for every pixel, if the color is white, turn it invisible
	colorR = GetMemblockByte(memimage, c)
	colorG = GetMemblockByte(memimage, c+1)
	colorB = GetMemblockByte(memimage, c+2)
	if colorR = 255 and colorG = 255 and colorB = 255 then SetMemblockByte(memimage, c+3, 0)
next c
starttowni = CreateImageFromMemblock(memimage) // repack memblock into image






white = CreateImageColor(255,255,255,255) // create white image


//SetSpriteSize(back, 512, 512)
//SetSpriteAnimation(back, 32, 32, (GetImageWidth(1)/32)*(GetImageHeight(1)/32))
//SetSpriteFrame(back, 4)



back = CreateSprite(starttowni) // Load Background
char = CreateSprite(chari) // Create Player


// Set charecter position and size
//SetSpritePosition(back, GetVirtualWidth()/2-GetSpriteWidth(back)/2-GetSpriteWidth(char)/4, GetVirtualHeight()/2-GetSpriteHeight(back)/2-GetSpriteHeight(char)/4)
SetSpritePosition(char, GetVirtualWidth()/2-GetSpriteWidth(char)/4, GetVirtualHeight()/2-GetSpriteHeight(char)/4)
SetSpriteSize(char, 32, 32)

// The 1 = Grass and 2 = Water doesnt apply anymore (at least i dont think so)
//1 = Grass
//2 = Water

//back = [CreateSprite(1), [id,[x,y]], [id,[x,y]]]

// change folder to access the water image (previously contained alot of frames, but was later stitched)
SetFolder("")
SetFolder("media")
SetFolder("water")
SetFolder("result")
waterani = LoadImage("water.png") // load water spritesheet
// head back to normal media location
SetFolder("")
setFolder("media")

LoadImage(2, "StartTownOriginal.png") // load the tile map of the world map

remstart World Generation

 __        __         _     _        ____                           _   _             
 \ \      / /__  _ __| | __| |      / ___| ___ _ __   ___ _ __ __ _| |_(_) ___  _ __  
  \ \ /\ / / _ \| '__| |/ _` |     | |  _ / _ \ '_ \ / _ \ '__/ _` | __| |/ _ \| '_ \ 
   \ V  V / (_) | |  | | (_| |     | |_| |  __/ | | |  __/ | | (_| | |_| | (_) | | | |
    \_/\_/ \___/|_|  |_|\__,_|      \____|\___|_| |_|\___|_|  \__,_|\__|_|\___/|_| |_|
                                                                                      

remend


memblock = CreateMemblockFromImage(2) // turn pixel map into memblock

// get the height, width, and size (used to turn image into a bunch of tiles)

width = GetMemblockInt(memblock, 0)
height = GetMemblockInt(memblock, 4)
size = GetMemblockSize(memblock)



tiles as String
button as String

/*
// we start at 12 because the first 12 bytes are taken up with meta data and so this is where the bitmap begins
// we continue until size - 1 because memblocks start as index 0 and so position size is not part of the memblock
// we step 4 each time as each pixel is represented by four bytes of data (red, green, blue, alpha)
for c = 12 to size - 1 step 4
    // each color byte is inverted
    SetMemblockByte(memblock, c, 255 - GetMemblockByte(memblock, c))
    SetMemblockByte(memblock, c + 1, 255 - GetMemblockByte(memblock, c + 1))
    SetMemblockByte(memblock, c + 2, 255 - GetMemblockByte(memblock, c + 2))
    // the alpha (position c + 3) is ignored because we don't want to invert that
next c


invertedColorImage = CreateImageFromMemblock(memblock)
sprite = CreateSprite(invertedColorImage)
SetSpriteSize(sprite, 100, -1)
*/

list as String[0] // Used to tell if there is a tile that is different than what we know (dev)

world as Integer[0] // the list of all the world tiles


// HEAVY CODE BELOW (YOU SHOULD PROBALBY READ COMMENTS)

for c = 12 to size-1 step 4  // start at 12 because before 12 there is a bunch of info stuff, like size
	
	// for every pixel, which there is only 32*32 of, get the color of it
	colorR = GetMemblockByte(memblock, c)
	colorG = GetMemblockByte(memblock, c+1)
	colorB = GetMemblockByte(memblock, c+2)
	//list.insert(str(colorR)+" "+str(colorG)+" "+str(colorB)+",")
	
	// if tile color is registered as a tile, gosub tile, which is at the bottom of the page
	
	if colorR = 0 and colorG = 233 and colorB = 255 // Water
		gosub tile
	elseif colorR = 0 and colorG = 0 and colorB = 0 // Wall
		//list.insert("Wall,")
		gosub tile
	elseif colorR = 255 and colorG = 255 and colorB = 255 // path
		//list.insert("Path,")
		gosub tile
	elseif colorR = 0 and colorG = 32 and colorB = 201 // Building
		//list.insert("Building,")
		gosub tile
	elseif colorR = 156 and colorG = 14 and colorB = 14 // Door
		//list.insert("Door,")
		gosub tile
	elseif colorR = 0 and colorG = 101 and colorB = 0 // Grass
		//list.insert("Grass,")
		gosub tile
	else
		list.insert(str(colorR)+" "+str(colorG)+" "+str(colorB)+",") // add RGB of unknown tile to list
	endif
next c



for x = 1 to world.length // for every tile created above
	SetSpriteDepth(world[x], 999) // Move tile to *almost* the very back (during checks, back sprite goes at 1000)
	
	//Move all tiles to the correct offset (was made before i found out we could just move the camera)
	SetSpritePosition(world[x], GetSpriteX(world[x])+GetVirtualWidth()/2-32*16/2, GetSpriteY(world[x])+GetVirtualHeight()/2-16*32/2)
next x

// move background sprite to the same position as the first tile of the world
SetSpritePosition(back, GetSpriteX(world[1]), GetSpriteY(world[1]))


// set movement speed in frames (8 = walk, 4 = run, 2 = bike)
speed = 8

// if on an android (no apple support yet) then make a joystick
joystick = 0
if GetDeviceBaseName() = "android" then joystick = 1

if joystick = 1
	AddVirtualJoystick(1, GetVirtualWidth(), GetVirtualHeight()-50, 50)
endif

remstart End Generation : End Image Creation : Main Loop

  _____           _        ____                           _   _             
 | ____|_ __   __| |      / ___| ___ _ __   ___ _ __ __ _| |_(_) ___  _ __  
 |  _| | '_ \ / _` |     | |  _ / _ \ '_ \ / _ \ '__/ _` | __| |/ _ \| '_ \ 
 | |___| | | | (_| |     | |_| |  __/ | | |  __/ | | (_| | |_| | (_) | | | |
 |_____|_| |_|\__,_|      \____|\___|_| |_|\___|_|  \__,_|\__|_|\___/|_| |_|
                                                                                                                                                                                      

  _____           _        ___                                    ____                _   _             
 | ____|_ __   __| |      |_ _|_ __ ___   __ _  __ _  ___        / ___|_ __ ___  __ _| |_(_) ___  _ __  
 |  _| | '_ \ / _` |       | || '_ ` _ \ / _` |/ _` |/ _ \      | |   | '__/ _ \/ _` | __| |/ _ \| '_ \ 
 | |___| | | | (_| |       | || | | | | | (_| | (_| |  __/      | |___| | |  __/ (_| | |_| | (_) | | | |
 |_____|_| |_|\__,_|      |___|_| |_| |_|\__,_|\__, |\___|       \____|_|  \___|\__,_|\__|_|\___/|_| |_|
                                               |___/                                                    


  __  __       _             _                      
 |  \/  | __ _(_)_ __       | |    ___   ___  _ __  
 | |\/| |/ _` | | '_ \      | |   / _ \ / _ \| '_ \ 
 | |  | | (_| | | | | |     | |__| (_) | (_) | |_) |
 |_|  |_|\__,_|_|_| |_|     |_____\___/ \___/| .__/ 
                                             |_|    


remend
do
	
	// if GetRawKeyPressed(13) then gosub PKMNBattle //Dev (if enter is pressed, enter a pkmn battle)
	
	// if tab is pressed toggle biking
	if GetRawKeyPressed(9)
		if speed = 2 // if already biking, stop
			speed = 8
		else
			speed = 2 // if not biking start
		endif
	endif
	
	if speed = 8 or speed = 4 // if walking or running
		speed = 8 // set to walking
		if GetRawKeyState(16) = 1 // if shift is being pressed
			speed = 4 // set to running
		else
			speed = 8 // otherwise set to walking
		endif
	endif
	
	
	// CONTROLS FOR IF THERE IS NO JOYSTICK (CAUSE JOYSTICKS BREAK STUFF (if used in normal [if]s))
	
	remstart
	
	I realised, that the following code is basicly the same with slightly different numbers and stuff
	So i decided to only code the first one in.
	
	remend
	
	
	if joystick = 0 // if no joystick
		if GetRawKeyState(asc("S")) // if s is pressed
			
			button = "S"
			gosub movechecks // located just below this code ( checks and moves the char)
			
		elseif GetRawKeyState(asc("W"))
			
			button = "W"
			gosub movechecks // located just below this code ( checks and moves the char)
			
		elseif GetRawKeyState(asc("D"))
			
			button = "D"
			gosub movechecks // located just below this code ( checks and moves the char)
			
		elseif GetRawKeyState(asc("A"))
			
			button = "A"
			gosub movechecks // located just below this code ( checks and moves the char)
			
		endif
		
	else
		
		if GetRawKeyState(asc("S")) or GetVirtualJoystickY(1) > 0.1
			
			button = "S"
			gosub movechecks // located just below this code ( checks and moves the char)
			
		elseif GetRawKeyState(asc("W")) or GetVirtualJoystickY(1) < -0.1
			
			button = "W"
			gosub movechecks // located just below this code ( checks and moves the char)
			
		elseif GetRawKeyState(asc("D")) or GetVirtualJoystickX(1) > 0.1
			
			button = "D"
			gosub movechecks // located just below this code ( checks and moves the char)
			
		elseif GetRawKeyState(asc("A")) or GetVirtualJoystickX(1) < -0.1
			
			button = "A"
			gosub movechecks // located just below this code ( checks and moves the char)
			
		endif
		
	endif
	
	
	/* PRINTS (DEV)
	
	Print(tiles)
	Print(width)
	Print(height)
	Print(size)
	
	Print("")
	for x=0 to list.length
		PrintC(list[x])
	next x
	print("")
	for x=0 to world.length
		PrintC(world[x])
	next x
	print("")
	
	Print(GetSpriteColorGreen(back))
	Print(GetSpriteColorBlue(back))
	Print(GetSpriteColorRed(back))
    Print( ScreenFPS() )
    Print(GetRawLastKey())
    */
    Sync()
loop


remstart End Main Loop : Subroutines


  _____           _       __  __       _             _                      
 | ____|_ __   __| |     |  \/  | __ _(_)_ __       | |    ___   ___  _ __  
 |  _| | '_ \ / _` |     | |\/| |/ _` | | '_ \      | |   / _ \ / _ \| '_ \ 
 | |___| | | | (_| |     | |  | | (_| | | | | |     | |__| (_) | (_) | |_) |
 |_____|_| |_|\__,_|     |_|  |_|\__,_|_|_| |_|     |_____\___/ \___/| .__/ 
                                                                     |_|    


  ____        _                     _   _                 
 / ___| _   _| |__  _ __ ___  _   _| |_(_)_ __   ___  ___ 
 \___ \| | | | '_ \| '__/ _ \| | | | __| | '_ \ / _ \/ __|
  ___) | |_| | |_) | | | (_) | |_| | |_| | | | |  __/\__ \
 |____/ \__,_|_.__/|_|  \___/ \__,_|\__|_|_| |_|\___||___/
                                                          


remend


movechecks: // Checks and moves charecter (if checks pass)

	// Check and define which way to move (in pixels) (based off of what button was pressed)
	xtiles = 0
	ytiles = 0
	x = 0
	y = 0
	if button = "S"
		y = 32
		ytiles = -1
	elseif button = "W"
		y = -32
		ytiles = 1
	elseif button = "A"
		x = -32
		xtiles = -1
	elseif button = "D"
		x = 32
		xtiles = 1
	endif
		
		
	// teleport char to selected tile
	SetSpritePosition(char, GetSpriteX(char)+x, GetSpriteY(char)+y)
	SetSpriteDepth(back, 1000) // move background to check tile colisions
	
	hit = GetSpriteHit(GetSpriteX(char), GetSpriteY(char)) // get a tile collision
	if hit <> back // if it didnt hit the back
		tiles = getTile(hit) // get the tile
	else // otherwise, if it did hit the back, call it a wall
		tiles = "wall"
	endif
	
	SetSpriteDepth(back, 900) // move the background back from tile checkings
	
	
	SetSpritePosition(char, GetSpriteX(char)-x, GetSpriteY(char)-y) // teleport char back
	
	if tiles = "wall" or tiles = "building"
		//Sync()
		// if the tile in front is a wall or a building, do nothing
	else
		// otherwise, move the charecter
		//SetSpritePosition(back, GetSpriteX(back), GetSpriteY(back)-32)
		moveChar(world, back, xtiles, ytiles, speed) // remember to move the char, as thats important
		gosub checktile // checks and does the tile effects (like tall grass)
	endif
return



tile: // Creates Tiles
	
	//Creates a sprite thats white, then makes it 32*32 and sets the color to that of the pixel map
	//also sets the sprite offset to -1/4 or the char's width and height (i dont know why, but it works)
	tile = CreateSprite(white)
	SetSpriteSize(tile, 32, 32)
	SetSpriteColor(tile, colorR, colorG, colorB, 255)
	SetSpriteOffset(tile, GetSpriteWidth(char)/4-GetSpriteWidth(char)/2, GetSpriteHeight(char)/4-GetSpriteHeight(char)/2)
	
	
	// gets the tiley coordinates
	tiley = (c/4)-2 // gets the tile number
	tiley = tiley - mod(tiley,16) // gets the row its on (as there is 16 tiles per row
	tiley = tiley/16 // gets the actual row number, not just the tile number for that row
	//tiley = tiley+1 // ignore this
	tiley = tiley*32 // convert to pixels
	//tiley = 16*32 - tiley
	
	// gets the tilex coordinates
	tilex = (c/4)-2 // gets the tile number
	tilex = mod(tilex,16) // gets the collum
	tilex = tilex*32 // convert to pixels
	
	// if tile is water
	if colorR = 0 and colorG = 233 and colorB = 255
		
		/* change media input folder, no longer nessicary
		SetFolder("")
		SetFolder("media")
		SetFolder("water")
		
		LoadImage(90, "water.png")
		AddSpriteAnimationFrame(tile, 90)
		DeleteImage(90)
		
		for g = 2 to 16
			LoadImage(90, "water"+str(g)+".png")
			AddSpriteAnimationFrame(tile, 90)
			DeleteImage(90)
		next g
		*/
		
		
		SetSpriteImage(tile, waterani) // Load the water animate image onto the sprite
		SetSpriteAnimation(tile, 32, 32, 16) // cut the spritesheet into 16 images
		PlaySprite(tile, 2) // play the image at 2 fps
	endif
	
	
	SetSpritePositionByOffset(tile, tilex, tiley) // moves tile relative to the char
	world.insert(CloneSprite(tile)) // adds a cloned version of the tile to the world tile list
	DeleteSprite(tile) // deletes the tile (not the cloned)
	
	
	
return



checktile: // Checks the tile and activates any effects
	for x = 1 to world.length // checks every single tile
		
		if GetSpriteCollision(char, world[x]) //checks if there is a collision between the tile and char
			tiles = getTile(world[x]) // if there is, get the tile name
			// (functions like getTile are located at the top of the page, under "Functions")
			//Print(tiles)
			if tiles = "grass" // if its grass
				
				
				if speed = 8 // if walking, 1/20 chance to encounter
					if Random(1,20) < 2 then gosub PKMNBattle // Pokemon battle, located below
				elseif speed = 4 // if running, 1/10 chance to encounter
					if Random(1,10) < 2 then gosub PKMNBattle // Pokemon battle, located below
				elseif speed = 2 // if biking, 1/5 chance to encounter
					if Random(1,5) < 2 then gosub PKMNBattle // Pokemon battle, located below
				endif
				
				
			elseif tiles = "wall" or tiles = "building" or tiles = "water"
				
				// if its water, it pushes you back
				// if its wall or building, it kicks you out of the restricted area
				
				gosub goback // pushes char out of area
				
				
			elseif tiles = "door" then gosub changelevel // if its a door, then change the level
			// change level is located below
			exit // exit so it doesnt try to do this again for multiple tiles.
		endif
	next x
	if x > world.length then gosub goback // if no tiles are in contact with the player, kick player out
return


goback: // kicks the player out (at a speed of 4 frames)
	if button = "W" then moveChar(world, back, 0, -1, 4)
	if button = "S" then moveChar(world, back, 0, 1, 4)
	if button = "D" then moveChar(world, back, -1, 0, 4)
	if button = "A" then moveChar(world, back, 1, 0, 4)
return



PKMNBattle: // Transitions to pokemon battle (file: pkmn.agc)

	//set media source
	SetFolder("")
	SetFolder("media")
	
	// create a white screen (not a blue, thats bad, though while coding this i got one)
	whitescreeni = CreateImageColor(255, 255, 255, 255)
	whitescreen = createsprite(whitescreeni)
	SetSpriteSize(whitescreen, GetVirtualWidth()*2, GetVirtualHeight()*2)
	SetSpriteOffset(whitescreen, GetSpriteWidth(whitescreen)/2, GetSpriteHeight(whitescreen)/2)
	SetSpritePositionByOffset(whitescreen, GetVirtualWidth()/2, GetVirtualHeight()/2)
	
	// Stop the beginning town music
	StopMusicOGG(bt)
	
	// Load, Set Loop, and Start Wild Pokemon Music (Pokemon black and white : Battle! Wild Pokemon)
	wildmusicstart = LoadMusicOGG("wildstart.ogg")
	wildmusic = LoadMusicOGG("wild.ogg")
	SetMusicLoopTimesOGG(wildmusic, GetMusicDurationOGG(wildmusicstart), -1)
	PlayMusicOGG(wildmusic, 1)
	
	// set the whitescreen to be invisible
	SetSpriteColorAlpha(whitescreen, 0)
	sync()
	
	// flash the whitescreen over 10 frames
	for x = 0 to 10
		for y = 0 to 17
			if GetSpriteColorAlpha(whitescreen) < 255 then SetSpriteColorAlpha(whitescreen, GetSpriteColorAlpha(whitescreen)+1)
		next y
		Sync()
	next x
	for x = 0 to 3 // wait 3 frames
		Sync()
	next x
	for x = 0 to 10 // over 10 frames pull down the alpha of everything on the screen
		for y = 0 to 17
			if GetSpriteColorAlpha(whitescreen) > 1 then SetSpriteColorAlpha(whitescreen, GetSpriteColorAlpha(whitescreen)-1)
			for z = 1 to world.length
				if GetSpriteColorAlpha(world[z]) > 1 then SetSpriteColorAlpha(world[z], GetSpriteColorAlpha(world[z])-1)
			next z
			if GetSpriteColorAlpha(char) > 1 then SetSpriteColorAlpha(char, GetSpriteColorAlpha(char)-1)
			if GetSpriteColorAlpha(back) > 1 then SetSpriteColorAlpha(back, GetSpriteColorAlpha(back)-1)
			if joystick = 1 then SetVirtualJoystickAlpha(1, GetSpriteColorAlpha(char), GetSpriteColorAlpha(char))
		next y
		Sync()
	next x
	
	// if there is a joystick, make it invisible
	if joystick = 1
		SetVirtualJoystickActive(1,0)
		SetVirtualJoystickVisible(1,0)
	endif
	
	// make world tiles invisible
	for x = 1 to world.length
		SetSpriteVisible(world[x], 0)
	next x
	// make everything else invisible
	SetSpriteVisible(char, 0)
	SetSpriteVisible(back, 0)
	
	// delete the whitescreen
	DeleteSprite(whitescreen)
	DeleteImage(whitescreeni)
	
	
	
	gosub pkmn // Pokemon battle, located in the pkmn.agc file
	
	
	
	// after battle make everything visible again
	
	for x = 1 to world.length
		SetSpriteVisible(world[x], 1)
		SetSpriteColorAlpha(world[x], 255)
	next x
	PlayMusicOGG(bt, 1)
	SetSpriteVisible(back, 1)
	SetSpriteColorAlpha(back, 255)
	SetSpriteVisible(char, 1)
	SetSpriteColorAlpha(char, 255)
	if joystick = 1
		SetVirtualJoystickAlpha(1, 255, 255)
		SetVirtualJoystickActive(1,1) // re activate joystick
		SetVirtualJoystickVisible(1,1)
	endif
	
return






changelevel: // change level, not included yet, just going to say the doors are closed
	gosub goback // kicks player out
return





endif // endif to the dev mode changing feature (dev only)



remstart End Main File : End Subroutine : Next File to look at is pkmn.agc

  _____           _       ____        _                     _   _                 
 | ____|_ __   __| |     / ___| _   _| |__  _ __ ___  _   _| |_(_)_ __   ___  ___ 
 |  _| | '_ \ / _` |     \___ \| | | | '_ \| '__/ _ \| | | | __| | '_ \ / _ \/ __|
 | |___| | | | (_| |      ___) | |_| | |_) | | | (_) | |_| | |_| | | | |  __/\__ \
 |_____|_| |_|\__,_|     |____/ \__,_|_.__/|_|  \___/ \__,_|\__|_|_| |_|\___||___/
                                                                                  


  _____           _       __  __       _             _____ _ _      
 | ____|_ __   __| |     |  \/  | __ _(_)_ __       |  ___(_) | ___ 
 |  _| | '_ \ / _` |     | |\/| |/ _` | | '_ \      | |_  | | |/ _ \
 | |___| | | | (_| |     | |  | | (_| | | | | |     |  _| | | |  __/
 |_____|_| |_|\__,_|     |_|  |_|\__,_|_|_| |_|     |_|   |_|_|\___|
 
 
  ____                        _                                                            _   
 / ___|  ___  ___       _ __ | | ___ __ ___  _ __    __ _  __ _  ___       _ __   _____  _| |_ 
 \___ \ / _ \/ _ \     | '_ \| |/ / '_ ` _ \| '_ \  / _` |/ _` |/ __|     | '_ \ / _ \ \/ / __|
  ___) |  __/  __/     | |_) |   <| | | | | | | | || (_| | (_| | (__      | | | |  __/>  <| |_ 
 |____/ \___|\___|     | .__/|_|\_\_| |_| |_|_| |_(_)__,_|\__, |\___|     |_| |_|\___/_/\_\\__|
                       |_|                                |___/                                                   
                                                                    


remend
