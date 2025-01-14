/area/holodeck
	name = "Holodeck"
	icon_state = "Holodeck"
	dynamic_lighting = DYNAMIC_LIGHTING_DISABLED
	flags_1 = NONE
	sound_environment = SOUND_ENVIRONMENT_PADDED_CELL

	var/obj/machinery/computer/holodeck/linked
	var/restricted = FALSE // if true, program goes on emag list
	// network_root_id = "HOLODECK"

/*
	Power tracking: Use the holodeck computer's power grid
	Asserts are to avoid the inevitable infinite loops
*/

/area/holodeck/Initialize(mapload)
	. = ..()
	var/list/update_holodeck_cache = SSholodeck?.rejected_areas[type]
	if(update_holodeck_cache)
		var/list/info_this = list("name" = name, "type" = type)
		var/list/target = restricted ? SSholodeck.emag_program_cache : SSholodeck.program_cache
		for(var/A in update_holodeck_cache)
			LAZYADD(target[A], info_this)
		SSholodeck.rejected_areas -= type

/area/holodeck/powered(var/chan)
	if(!requires_power)
		return 1
	if(always_unpowered)
		return 0
	if(!linked)
		return 0
	var/area/A = get_area(linked)
	ASSERT(!istype(A, /area/holodeck))
	return A.powered(chan)

/area/holodeck/usage(var/chan)
	if(!linked)
		return 0
	var/area/A = get_area(linked)
	ASSERT(!istype(A, /area/holodeck))
	return A.usage(chan)

/area/holodeck/addStaticPower(value, powerchannel)
	if(!linked)
		return
	var/area/A = get_area(linked)
	ASSERT(!istype(A, /area/holodeck))
	return A.addStaticPower(value,powerchannel)

/area/holodeck/use_power(var/amount, var/chan)
	if(!linked)
		return 0
	var/area/A = get_area(linked)
	ASSERT(!istype(A, /area/holodeck))
	return A.use_power(amount,chan)


/*
	This is the standard holodeck.  It is intended to allow you to
	blow off steam by doing stupid things like laying down, throwing
	spheres at holes, or bludgeoning people.
*/
/area/holodeck/rec_center
	name = "\improper Recreational Holodeck"

/area/holodeck/rec_center/offline
	name = "Holodeck - Offline"

/area/holodeck/rec_center/court
	name = "Holodeck - Empty Court"

/area/holodeck/rec_center/dodgeball
	name = "Holodeck - Dodgeball Court"

/area/holodeck/rec_center/basketball
	name = "Holodeck - Basketball Court"

/area/holodeck/rec_center/thunderdome
	name = "Holodeck - Thunderdome Arena"

/area/holodeck/rec_center/beach
	name = "Holodeck - Beach"

/area/holodeck/rec_center/lounge
	name = "Holodeck - Lounge"

/area/holodeck/rec_center/medical
	name = "Holodeck - Emergency Medical"

/area/holodeck/rec_center/pet_lounge
	name = "Holodeck - Pet Park"

/area/holodeck/rec_center/firingrange
	name = "Holodeck - Firing Range"

/area/holodeck/rec_center/school
	name = "Holodeck - Anime School"

/area/holodeck/rec_center/chapelcourt
	name = "Holodeck - Chapel Courtroom"

/area/holodeck/rec_center/spacechess
	name = "Holodeck - Space Chess"

/area/holodeck/rec_center/kobayashi
	name = "Holodeck - Kobayashi Maru"

/area/holodeck/rec_center/winterwonderland
	name = "Holodeck - Winter Wonderland"

/area/holodeck/rec_center/wrestlingarena
	name = "Holodeck - Wrestling Arena"

// Bad programs

/area/holodeck/rec_center/burn
	name = "Holodeck - Atmospheric Burn Test"
	restricted = 1

/area/holodeck/rec_center/wildlife
	name = "Holodeck - Wildlife Simulation"
	restricted = 1

/area/holodeck/rec_center/bunker
	name = "Holodeck - Holdout Bunker"
	restricted = 1

/area/holodeck/rec_center/anthophila
	name = "Holodeck - Anthophila"
	restricted = 1

/area/holodeck/rec_center/refuel
	name = "Holodeck - Refueling Station"
	restricted = 1

/area/holodeck/rec_center/thunderdome1218
	name = "Holodeck - 1218 AD"
	restricted = 1
