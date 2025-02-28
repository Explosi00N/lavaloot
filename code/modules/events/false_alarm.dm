/datum/event/falsealarm
	announceWhen	= 0
	endWhen			= 1
	var/static/list/possible_event_types = list(
		/datum/event/alien_infestation,
		/datum/event/apc_overload,
		/datum/event/apc_short,
		/datum/event/blob,
		/datum/event/brand_intelligence,
		/datum/event/communications_blackout,
		/datum/event/electrical_storm,
		/datum/event/immovable_rod,
		/datum/event/infestation,
		/datum/event/ion_storm,
		/datum/event/mass_hallucination,
		/datum/event/meteor_wave,
		/datum/event/prison_break,
		/datum/event/rogue_drone,
		/datum/event/solar_flare,
		/datum/event/space_dragon,
		/datum/event/spider_infestation,
		/datum/event/tear,
		/datum/event/traders,
		/datum/event/spider_terror,
		/datum/event/vent_clog
	) + subtypesof(/datum/event/anomaly) + subtypesof(/datum/event/carp_migration)

	var/datum/event/working_event
	var/forced_type //Admin abuse


/datum/event/falsealarm/admin_setup()
	if(!check_rights(R_EVENT))
		return

	forced_type = tgui_input_list(usr, "Выберите пугалку", "Ложный ивент", possible_event_types)

/datum/event/falsealarm/start()
	. = ..()
	var/datum/event/working_event_type = forced_type? forced_type : pick(possible_event_types)
	working_event = new working_event_type(skeleton = TRUE)
	log_debug("False alarm selecting [working_event] to imitate")

/datum/event/falsealarm/announce()
	if(working_event.fake_announce())
		return
	working_event.announce(TRUE)
	message_admins("False Alarm: [working_event]")
	kill()

/datum/event/falsealarm/end()
	QDEL_NULL(working_event)
