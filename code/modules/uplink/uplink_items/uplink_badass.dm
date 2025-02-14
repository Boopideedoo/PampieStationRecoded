
/*
	Uplink Items:
	Unlike categories, uplink item entries are automatically sorted alphabetically on server init in a global list,
	When adding new entries to the file, please keep them sorted by category.
*/

// Pointless (Badassery)

/datum/uplink_item/badass/costumes/obvious_chameleon
	name = "Broken Chameleon Kit"
	desc = "A set of items that contain chameleon technology allowing you to disguise as pretty much anything on the station, and more! \
			Please note that this kit did NOT pass quality control."
	item = /obj/item/storage/box/syndie_kit/chameleon/broken

/datum/uplink_item/badass/costumes
	cost = 4
	cant_discount = TRUE
	purchasable_from = UPLINK_NUKE_OPS | UPLINK_CLOWN_OPS

/datum/uplink_item/badass/costumes/centcom_official
	name = "CentCom Official Costume"
	desc = "Ask the crew to \"inspect\" their nuclear disk and weapons system, and then when they decline, pull out a fully automatic rifle and gun down the Captain. \
			Radio headset does not include encryption key. No gun included."
	item = /obj/item/storage/box/syndie_kit/centcom_costume

/datum/uplink_item/badass/costumes/clown
	name = "Clown Costume"
	desc = "Nothing is more terrifying than clowns with fully automatic weaponry."
	item = /obj/item/storage/backpack/duffelbag/clown/syndie

/datum/uplink_item/badass/plastitanium_toolbox
	name = "Plastitanium Toolbox"
	desc = "A very high impact toolbox. Excels at destroying stationary structures."
	item = /obj/item/storage/toolbox/plastitanium
	cost = 2		//18 damage on mobs, 50 on objects, 4.5 stam/hit

/datum/uplink_item/badass/balloon
	name = "Syndicate Balloon"
	desc = "For showing that you are THE BOSS: A useless red balloon with the Syndicate logo on it. \
			Can blow the deepest of covers."
	item = /obj/item/toy/syndicateballoon
	cost = 20
	cant_discount = TRUE
	illegal_tech = FALSE

/datum/uplink_item/badass/syndiecash
	name = "Syndicate Briefcase Full of Cash"
	desc = "A secure briefcase containing 5000 space credits. Useful for bribing personnel, or purchasing goods \
			and services at lucrative prices. The briefcase also feels a little heavier to hold; it has been \
			manufactured to pack a little bit more of a punch if your client needs some convincing."
	item = /obj/item/storage/secure/briefcase/syndie
	cost = 1
	restricted = TRUE

/datum/uplink_item/badass/syndiecards
	name = "Syndicate Playing Cards"
	desc = "A special deck of space-grade playing cards with a mono-molecular edge and metal reinforcement, \
			making them slightly more robust than a normal deck of cards. \
			You can also play card games with them or leave them on your victims."
	item = /obj/item/toy/cards/deck/syndicate
	cost = 1
	surplus = 40
	illegal_tech = FALSE

/datum/uplink_item/badass/syndiecigs
	name = "Syndicate Smokes"
	desc = "Strong flavor, dense smoke, infused with omnizine."
	item = /obj/item/storage/fancy/cigarettes/cigpack_syndicate
	cost = 2
	illegal_tech = FALSE

/datum/uplink_item/badass/tactical_naptime
	name = "Sleepy Time Pajama Bundle"
	desc = "Even soldiers need to get a good nights rest. Comes with some cozy as heck sleeping wear, a blankie to keep yourself warm in deep space, a hot mug of cocoa for you and your fuzzy friend."
	item = /obj/item/storage/box/syndie_kit/sleepytime
	cost = 4
	limited_stock = 1
	cant_discount = TRUE
	purchasable_from = UPLINK_NUKE_OPS | UPLINK_CLOWN_OPS

/datum/uplink_item/badass/gaming_cardpack
	name = "TCG Card Operatives Bundle"
	desc = "A bundle full of goodies required to work as a TCG Card Operative. A warm pajama, a mug of cocoa, a plushie and a two packs full of rare 2560 Core Set cards!"
	item = /obj/item/storage/box/syndie_kit/sleepytime/cardpack
	cost = 20
	purchasable_from = UPLINK_NUKE_OPS | UPLINK_CLOWN_OPS

/datum/uplink_item/badass/cardpack
	name = "TCG Nuclear Cardpack"
	desc = "A cardpack filled with top-tier TCG cards."
	item = /obj/item/cardpack/syndicate
	cost = 4

/datum/uplink_item/badass/diaper
	name = "SyndieStinker Chameleons"
	desc = "A diaper that disguises itself as a plain diaper, and can heal your wounds."
	cost = 1
	item = /obj/item/diaper/syndi

/datum/uplink_item/badass/diaperbox
	name = "SyndieStinker Chameleons Package"
	desc = "Contains like five of the special op diapers."
	cost = 4
	item = /obj/item/diaper_package/syndi
