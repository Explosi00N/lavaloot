///Adds the mob reference to the list and directory of all mobs. Called on Initialize().
/mob/proc/add_to_mob_list()
	GLOB.mob_list |= src

///Removes the mob reference from the list and directory of all mobs. Called on Destroy().
/mob/proc/remove_from_mob_list()
	GLOB.mob_list -= src

///Adds the mob reference to the list of all mobs alive. If mob is cliented, it adds it to the list of all living player-mobs.
/mob/proc/add_to_alive_mob_list()
	if(QDELETED(src))
		return
	GLOB.alive_mob_list |= src
	if(client)
		add_to_current_living_players()

///Removes the mob reference from the list of all mobs alive. If mob is cliented, it removes it from the list of all living player-mobs.
/mob/proc/remove_from_alive_mob_list()
	GLOB.alive_mob_list -= src
	if(client)
		remove_from_current_living_players()

///Adds the mob reference to the list of all the dead mobs. If mob is cliented, it adds it to the list of all dead player-mobs.
/mob/proc/add_to_dead_mob_list()
	if(QDELETED(src))
		return
	GLOB.dead_mob_list |= src
	if(client)
		add_to_current_dead_players()

///Remvoes the mob reference from list of all the dead mobs. If mob is cliented, it adds it to the list of all dead player-mobs.
/mob/proc/remove_from_dead_mob_list()
	GLOB.dead_mob_list -= src
	if(client)
		remove_from_current_dead_players()


///Adds the cliented mob reference to the list of all player-mobs, besides to either the of dead or alive player-mob lists, as appropriate. Called on Login().
/mob/proc/add_to_player_list()
	SHOULD_CALL_PARENT(TRUE)
	GLOB.player_list |= src
	GLOB.keyloop_list |= src
	if(stat == DEAD)
		add_to_current_dead_players()
	else
		add_to_current_living_players()

///Removes the mob reference from the list of all player-mobs, besides from either the of dead or alive player-mob lists, as appropriate. Called on Logout().
/mob/proc/remove_from_player_list()
	SHOULD_CALL_PARENT(TRUE)
	GLOB.player_list -= src
	GLOB.keyloop_list -= src
	if(stat == DEAD)
		remove_from_current_dead_players()
	else
		remove_from_current_living_players()


///Adds the cliented mob reference to either the list of dead player-mobs or to the list of observers, depending on how they joined the game.
/mob/proc/add_to_current_dead_players()
	GLOB.dead_player_list |= src

/mob/dead/observer/add_to_current_dead_players()
	if(started_as_observer)
		GLOB.current_observers_list |= src
		return
	return ..()

/mob/dead/new_player/add_to_current_dead_players()
	return

///Removes the mob reference from either the list of dead player-mobs or from the list of observers, depending on how they joined the game.
/mob/proc/remove_from_current_dead_players()
	GLOB.dead_player_list -= src

/mob/dead/observer/remove_from_current_dead_players()
	if(started_as_observer)
		GLOB.current_observers_list -= src
		return
	return ..()


///Adds the cliented mob reference to the list of living player-mobs. If the mob is an antag, it adds it to the list of living antag player-mobs.
/mob/proc/add_to_current_living_players()
	GLOB.alive_player_list |= src

///Removes the mob reference from the list of living player-mobs. If the mob is an antag, it removes it from the list of living antag player-mobs.
/mob/proc/remove_from_current_living_players()
	GLOB.alive_player_list -= src

