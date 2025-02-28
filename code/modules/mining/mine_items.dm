/**********************Light************************/

//this item is intended to give the effect of entering the mine, so that light gradually fades
/obj/effect/light_emitter
	name = "Light emitter"
	icon_state = "at_shield1"
	anchored = TRUE
	invisibility = INVISIBILITY_ABSTRACT

/obj/effect/light_emitter/Initialize(mapload)
	. = ..()
	icon_state = null

/obj/effect/light_emitter/singularity_pull()
	return

/obj/effect/light_emitter/singularity_act()
	return

/**********************Miner Lockers**************************/

/obj/structure/closet/wardrobe/miner
	name = "mining wardrobe"
	icon_state = "mine_ward"

/obj/structure/closet/wardrobe/miner/populate_contents()
	new /obj/item/storage/backpack/duffel(src)
	new /obj/item/storage/backpack/explorer(src)
	new /obj/item/storage/backpack/satchel_explorer(src)
	new /obj/item/clothing/under/rank/miner/lavaland(src)
	new /obj/item/clothing/under/rank/miner/lavaland(src)
	new /obj/item/clothing/under/rank/miner/lavaland(src)
	new /obj/item/clothing/shoes/workboots/mining(src)
	new /obj/item/clothing/shoes/workboots/mining(src)
	new /obj/item/clothing/shoes/workboots/mining(src)
	new /obj/item/clothing/gloves/color/black(src)
	new /obj/item/clothing/gloves/color/black(src)
	new /obj/item/clothing/gloves/color/black(src)

/obj/structure/closet/secure_closet/miner
	name = "miner's equipment"
	icon_state = "mining"
	req_access = list(ACCESS_MINING)

/obj/structure/closet/secure_closet/miner/populate_contents()
	new /obj/item/stack/sheet/mineral/sandbags(src, 5)
	new /obj/item/storage/box/emptysandbags(src)
	new /obj/item/shovel(src)
	new /obj/item/pickaxe/mini(src)
	new /obj/item/radio/headset/headset_cargo/mining(src)
	new /obj/item/flashlight/seclite(src)
	new /obj/item/storage/bag/plants(src)
	new /obj/item/storage/bag/gem(src)
	new /obj/item/storage/bag/ore(src)
	new /obj/item/mining_scanner(src)
	new /obj/item/gun/energy/kinetic_accelerator(src)
	new /obj/item/clothing/glasses/meson(src)

/**********************Shuttle Computer**************************/

/obj/machinery/computer/shuttle/mining
	name = "Mining Shuttle Console"
	desc = "Используется для вызова и отправки шахтёрского шаттла."
	circuit = /obj/item/circuitboard/mining_shuttle
	shuttleId = "mining"
	possible_destinations = "mining_home;mining_away"
	lockdown_affected = TRUE

/******************************Lantern*******************************/

/obj/item/flashlight/lantern
	name = "lantern"
	icon_state = "lantern"
	item_state = "lantern"
	belt_icon = "lantern"
	desc = "A mining lantern."
	light_range = 6			// luminosity when on
	light_color = LIGHT_COLOR_YELLOW
	light_system = MOVABLE_LIGHT


/**********************Mining car (Crate like thing, not the rail car)**************************/

/obj/structure/closet/crate/miningcar
	desc = "A mining car. This one doesn't work on rails, but has to be dragged."
	name = "mining car (not for rails)"
	icon_state = "miningcar"
	density = TRUE
	icon_opened = "miningcaropen"
	icon_closed = "miningcar"
