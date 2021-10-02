/datum/component/tieddir/Initialize(...)
	. = ..()
	RegisterSignal(parent, COMSIG_BUCKLED_MOB_DIRECTION, .proc/matchdir)

/datum/component/tieddir/proc/matchdir(obj/structure/chair/source, mob/living/babbu)
	if(babbu.buckled == source)
		source.setDir(babbu.dir)

/datum/component/diaperswitch/Initialize(...)
	. = ..()
	RegisterSignal(parent, COMSIG_DIAPERCHANGE, .proc/changeundies)

/datum/component/diaperswitch/proc/changeundies(source, ckey)
	if(ishuman(parent))
		var/mob/living/carbon/human/butt = parent
		var/piss = copytext_char(ckey,1,2)
		var/underwear
		var/undie_color
		var/default_slot = 1
		if(fexists("data/player_saves/[piss]/[ckey]/preferences.sav"))
			var/savefile/S = new/savefile("data/player_saves/[piss]/[ckey]/preferences.sav")
			S.cd = "/"
			S["default_slot"] >> default_slot
			S.cd = "/character[default_slot]"
			S["underwear"] >> underwear
			S["undie_color"] >> undie_color
			sanitize_inlist(underwear, GLOB.underwear_list)
			sanitize_hexcolor(undie_color)
		else
			underwear = butt.baseunderwear
			undie_color = butt.undie_color
		if((HAS_TRAIT(butt,TRAIT_INCONTINENT) || HAS_TRAIT(butt,TRAIT_FULLYINCONTINENT) || HAS_TRAIT(butt,TRAIT_POTTYREBEL) || HAS_TRAIT(butt,BABYBRAINED_TRAIT) || HAS_TRAIT(butt,TRAIT_DIAPERUSE)))
			butt.underwear = "Diaper"
			switch(butt.brand)
				if("plain")
					butt.undie_color = undie_color
				if("classics")
					butt.undie_color = "6F6"
				if("13")
					butt.undie_color = undie_color
				if("swaddles")
					butt.undie_color = "39C"
				if("cloth")
					butt.undie_color = "FFF"
				if("hefters_m")
					butt.undie_color = "EEF"
				if("hefters_f")
					butt.undie_color = "FDE"
				if("Princess")
					butt.undie_color = "F9F"
				if("PwrGame")
					butt.undie_color = "83F"
				if("StarKist")
					butt.undie_color = "F93"
				if("Space")
					butt.undie_color = "36C"
				if("Replica")
					butt.undie_color = "C00"
				if("Service")
					butt.undie_color = "999"
				if("Supply")
					butt.undie_color = "DB2"
				if("Hydroponics")
					butt.undie_color = "0F0"
				if("Sec")
					butt.undie_color = "111"
				if("Engineering")
					butt.undie_color = "FE0"
				if("Atmos")
					butt.undie_color = "FE0"
				if("Science")
					butt.undie_color = "609"
				if("Med")
					butt.undie_color = "48A"
				if("Miner")
					butt.undie_color = "777"
				if("Miner_thick")
					butt.undie_color = "777"
				if("Jeans")
					butt.undie_color = "587890"
				if("Jeans_thicc")
					butt.undie_color = "587890"
				if("circuit")
					butt.undie_color = "030"
				if("Pink")
					butt.undie_color = "FFC0CB"
				if("Punk")
					butt.undie_color = "000"
				if("fish")
					butt.undie_color = "ABCDEF"
				if("SMWind")
					butt.undie_color = "0BDA51"
				if("Cult_Clock")
					butt.undie_color = "B8860B"
				if("Cult_Nar")
					butt.undie_color = "3D0000"
				if("Ashwalker")
					butt.undie_color = "DAA520"
				if("Camo")
					butt.undie_color = "568203"
				if("alien")
					butt.undie_color = "563C5C"
				if("greentext")
					butt.undie_color = "46DA3E"
				if("scalies")
					butt.undie_color = "46DA3E"
				if("blackcat")
					butt.undie_color = "FFF"
				if("goldendog")
					butt.undie_color = "000"
				if("leafy")
					butt.undie_color = "698B57"
				if("slime")
					butt.undie_color = "83639D"
				if("skunk")
					butt.underwear = new /datum/sprite_accessory/underwear/bottom/diaper/skunk()
				if("bee")
					butt.underwear = new /datum/sprite_accessory/underwear/bottom/diaper/bee()
				if("rainbow")
					butt.underwear = new /datum/sprite_accessory/underwear/bottom/diaper/rainbow()
				if("rainbowse")
					butt.underwear = new /datum/sprite_accessory/underwear/bottom/diaper/rainbow_thick()
				if("matrix")
					butt.underwear = new /datum/sprite_accessory/underwear/bottom/diaper/matri()
				if("ringading")
					butt.underwear = new /datum/sprite_accessory/underwear/bottom/diaper/ringading()
				if("hawaiir")
					butt.underwear = new /datum/sprite_accessory/underwear/bottom/diaper/hawaiir()
				if("hawaiib")
					butt.underwear = new /datum/sprite_accessory/underwear/bottom/diaper/hawaiib()
				if("pumpkin")
					butt.underwear = new /datum/sprite_accessory/underwear/bottom/diaper/pumpkin()
				if("jacko")
					butt.underwear = new /datum/sprite_accessory/underwear/bottom/diaper/halloween()
		else
			butt.underwear = underwear
			butt.undie_color = undie_color
		butt.update_body()
