#define CQC_ARENA_RADIUS	6 //how much tiles away from a center players will spawn
#define RANGED_ARENA_RADIUS	10


/**
 * This datum is designed to determine special settings for thunderdome battle.
 */
/datum/thunderdome_gamemode
	var/name = "Thunderdome gamemode"
	var/list/item_pool = list()
	var/arena_radius = 1
	var/brawler_type = /obj/effect/mob_spawn/human/thunderdome
	var/random_items_count = 1
	var/extended_area = FALSE
	var/preview_icon = "thunderman_preview_CqC"

/datum/thunderdome_gamemode/melee
	name = "Thunderdome Melee Challenge"
	arena_radius = CQC_ARENA_RADIUS
	preview_icon = "thunderman_preview_CqC"
	brawler_type = /obj/effect/mob_spawn/human/thunderdome/cqc
	random_items_count = 2
	item_pool = list(
		/obj/item/melee/rapier/captain = 1,
		/obj/item/melee/energy/axe = 1,
		/obj/item/melee/energy/sword/saber/red = 1,
		/obj/item/melee/energy/cleaving_saw = 1,
		/obj/item/twohanded/mjollnir = 1,
		/obj/item/twohanded/chainsaw = 1,
		/obj/item/twohanded/dualsaber = 1,
		/obj/item/twohanded/fireaxe = 1,
		/obj/item/melee/icepick = 1,
		/obj/item/melee/candy_sword = 1,
		/obj/item/melee/energy/sword/pirate = 1,
		/obj/item/storage/toolbox/surgery = 1,
		/obj/item/storage/toolbox/mechanical = 1,
		/obj/item/storage/toolbox/syndicate = 1,
		/obj/item/storage/box/syndie_kit/mantisblade = 1,
		/obj/item/CQC_manual = 1,
		/obj/item/sleeping_carp_scroll = 1,
		/obj/item/clothing/gloves/fingerless/rapid = 1,
		/obj/item/storage/box/thunderdome/spears = 1,
		/obj/item/storage/box/thunderdome/maga = 1,
		/obj/item/storage/box/thunderdome/singulatiry = 1,
		/obj/item/implanter/adrenalin = 1,
		/obj/item/mimejutsu_scroll = 1,
		/obj/item/pen/edagger = 1,
		/obj/item/melee/baseball_bat = 1,
		/obj/item/clothing/gloves/knuckles = 1,
		/obj/item/storage/box/syndie_kit/combat_baking = 1,
		/obj/item/twohanded/fireaxe/energized = 1,
		/obj/item/storage/box/syndie_kit/commando_kit = 1,
		/obj/item/storage/belt/grenade/frag = 1,
		/obj/item/storage/box/syndie_kit/dangertray = 1,
		/obj/item/gun/magic/hook = 1,
		/obj/item/twohanded/bamboospear = 1,
		/obj/item/twohanded/required/chainsaw = 1,
		/obj/item/kitchen/knife/butcher/meatcleaver = 1,
		/obj/item/rune_scimmy = 1,
		/obj/item/twohanded/spear/bonespear/chitinspear = 1,
		/obj/item/twohanded/garrote = 1,
		/obj/item/melee/rapier/syndie = 1,
		/obj/item/melee/claymore/bone = 1,
		/obj/item/gun/magic/staff/spellblade = 1,
		/obj/item/spellbook/oneuse/goliath_dash = 1,
		)


/datum/thunderdome_gamemode/ranged
	name = "Thunderdome Ranger Challenge"
	arena_radius = RANGED_ARENA_RADIUS
	extended_area = TRUE
	preview_icon = "thunderman_preview_Ranged"
	brawler_type = /obj/effect/mob_spawn/human/thunderdome/ranged
	random_items_count = 3
	item_pool = list(
		/obj/item/gun/energy/immolator/multi = 2,
		/obj/item/gun/energy/gun/minigun = 1,
		/obj/item/gun/projectile/automatic/mini_uzi = 2,
		/obj/item/gun/projectile/automatic/pistol/deagle = 2,
		/obj/item/gun/projectile/automatic/wt550 = 2,
		/obj/item/gun/projectile/automatic/l6_saw = 1,
		/obj/item/gun/projectile/automatic/lasercarbine = 2,
		/obj/item/gun/projectile/automatic/shotgun/bulldog = 2,
		/obj/item/gun/projectile/revolver/mateba = 4,
		/obj/item/gun/projectile/shotgun/automatic = 2,
		/obj/item/gun/projectile/shotgun/riot = 2,
		/obj/item/gun/projectile/automatic/ak814 = 2,
		/obj/item/gun/projectile/shotgun/riot/buckshot = 3,
		/obj/item/gun/projectile/shotgun/boltaction = 1,
		/obj/item/gun/projectile/shotgun/automatic/combat = 2,
		/obj/item/gun/projectile/automatic/pistol/APS = 2,
		/obj/item/gun/projectile/automatic/pistol/sp8/sp8ar = 1,
		/obj/item/gun/projectile/automatic/pistol/m1911 = 2,
		/obj/item/gun/projectile/revolver/golden = 2,
		/obj/item/gun/projectile/revolver/nagant = 2,
		/obj/item/gun/energy/gun/nuclear = 2,
		/obj/item/storage/box/thunderdome/bombarda = 1,
		/obj/item/storage/box/thunderdome/crossbow = 1,
		/obj/item/storage/box/thunderdome/crossbow/energy = 1,
		/obj/item/gun/energy/kinetic_accelerator/crossbow/large = 1,
		/obj/item/storage/box/thunderdome/laser_eyes = 1,
		/obj/item/implanter/adrenalin = 1,
		/obj/item/gun/projectile/automatic/sniper_rifle/syndicate = 1,
		/obj/item/gun/energy/xray = 2,
		/obj/item/gun/energy/lasercannon = 2,
		/obj/item/clothing/mask/holo_cigar = 1,
		/obj/item/storage/belt/grenade/frag = 1,
		/obj/item/spellbook/oneuse/watchers_look = 1,
		/obj/item/spellbook/oneuse/fireball = 1,
		/obj/item/gun/energy/emittergun = 2,
		/obj/item/gun/energy/decloner = 1,
		/obj/item/gun/projectile/shotgun/automatic/dual_tube = 2,
		/obj/item/gun/projectile/automatic/gyropistol = 2,
		/obj/item/gun/projectile/automatic/sfg = 2,
		/obj/item/gun/projectile/automatic/sp91rc = 2,
		/obj/item/gun/projectile/automatic/m90 = 2,
		/obj/item/gun/projectile/automatic/rusted/aksu = 2,
		/obj/item/gun/projectile/automatic/rusted/ppsh = 2,
		/obj/item/gun/projectile/automatic/shotgun/minotaur = 2,
		/obj/item/gun/projectile/automatic/lr30 = 2,
		/obj/item/gun/energy/sniperrifle = 1,
		/obj/item/gun/energy/sniperrifle/pod_pilot = 1,
		/obj/item/gun/energy/shock_revolver = 2,
		/obj/item/gun/energy/pulse/turret = 1,
		/obj/item/gun/energy/plasma_pistol = 2,
		/obj/item/gun/energy/laser/scatter = 2,
		/obj/item/gun/energy/bsg/prebuilt = 1,
		/obj/item/gun/magic/staff/spellblade = 1,
		/obj/item/spellbook/oneuse/goliath_dash = 1,
		/obj/item/spellbook/oneuse/forcewall = 1,
		)

/datum/thunderdome_gamemode/mixed
	name = "Thunderdome Mixed Challenge"
	arena_radius = RANGED_ARENA_RADIUS
	extended_area = TRUE
	preview_icon = "thunderman_preview_Mixed"
	brawler_type = /obj/effect/mob_spawn/human/thunderdome/mixed
	random_items_count = 3
	item_pool = list(
		/obj/item/gun/energy/immolator/multi = 1,
		/obj/item/gun/energy/gun/minigun = 1,
		/obj/item/gun/projectile/automatic/mini_uzi = 1,
		/obj/item/gun/projectile/automatic/pistol/deagle = 1,
		/obj/item/gun/projectile/automatic/wt550 = 1,
		/obj/item/gun/projectile/automatic/l6_saw = 1,
		/obj/item/gun/projectile/automatic/lasercarbine = 1,
		/obj/item/gun/projectile/automatic/shotgun/bulldog = 1,
		/obj/item/gun/magic/staff/slipping = 1,
		/obj/item/gun/projectile/revolver/mateba = 3,
		/obj/item/gun/projectile/shotgun/automatic = 2,
		/obj/item/gun/projectile/shotgun/riot = 2,
		/obj/item/gun/projectile/automatic/ak814 = 1,
		/obj/item/gun/projectile/shotgun/riot/buckshot = 3,
		/obj/item/gun/projectile/shotgun/boltaction = 1,
		/obj/item/gun/projectile/shotgun/automatic/combat = 2,
		/obj/item/gun/projectile/automatic/pistol/APS = 1,
		/obj/item/gun/projectile/automatic/pistol/sp8/sp8ar = 1,
		/obj/item/gun/projectile/automatic/pistol/m1911 = 1,
		/obj/item/gun/projectile/revolver/golden = 1,
		/obj/item/gun/projectile/revolver/nagant = 1,
		/obj/item/gun/energy/gun/nuclear = 2,
		/obj/item/storage/box/thunderdome/bombarda = 1,
		/obj/item/storage/box/thunderdome/crossbow = 1,
		/obj/item/storage/box/thunderdome/crossbow/energy = 1,
		/obj/item/storage/box/thunderdome/laser_eyes = 1,
		/obj/item/implanter/adrenalin = 1,
		/obj/item/melee/rapier/captain = 1,
		/obj/item/melee/energy/axe = 1,
		/obj/item/melee/energy/sword/saber/red = 1,
		/obj/item/melee/energy/cleaving_saw = 1,
		/obj/item/twohanded/mjollnir = 1,
		/obj/item/twohanded/chainsaw = 1,
		/obj/item/twohanded/dualsaber = 1,
		/obj/item/twohanded/fireaxe = 1,
		/obj/item/melee/icepick = 1,
		/obj/item/melee/candy_sword = 1,
		/obj/item/melee/energy/sword/pirate = 1,
		/obj/item/storage/toolbox/surgery = 1,
		/obj/item/storage/toolbox/mechanical = 1,
		/obj/item/storage/toolbox/syndicate = 1,
		/obj/item/storage/box/syndie_kit/mantisblade = 1,
		/obj/item/CQC_manual = 1,
		/obj/item/sleeping_carp_scroll = 1,
		/obj/item/clothing/gloves/fingerless/rapid = 1,
		/obj/item/storage/box/thunderdome/spears = 1,
		/obj/item/storage/box/thunderdome/maga = 1,
		/obj/item/storage/box/thunderdome/singulatiry = 1,
		/obj/item/gun/energy/kinetic_accelerator/crossbow/large = 1,
		/obj/item/pen/edagger = 1,
		/obj/item/melee/baseball_bat = 1,
		/obj/item/clothing/gloves/knuckles = 1,
		/obj/item/gun/projectile/automatic/sniper_rifle/syndicate = 1,
		/obj/item/gun/energy/xray = 1,
		/obj/item/gun/energy/lasercannon = 1,
		/obj/item/storage/box/syndie_kit/combat_baking = 1,
		/obj/item/twohanded/fireaxe/energized = 1,
		/obj/item/storage/box/syndie_kit/commando_kit = 1,
		/obj/item/storage/belt/grenade/frag = 1,
		/obj/item/storage/box/syndie_kit/dangertray = 1,
		/obj/item/spellbook/oneuse/watchers_look = 1,
		/obj/item/spellbook/oneuse/fireball = 1,
		/obj/item/gun/energy/emittergun = 1,
		/obj/item/gun/magic/hook = 1,
		/obj/item/gun/energy/decloner = 1,
		/obj/item/gun/projectile/shotgun/automatic/dual_tube = 2,
		/obj/item/gun/projectile/automatic/gyropistol = 1,
		/obj/item/gun/projectile/automatic/sfg = 1,
		/obj/item/gun/projectile/automatic/sp91rc = 1,
		/obj/item/gun/projectile/automatic/m90 = 1,
		/obj/item/gun/projectile/automatic/rusted/aksu = 1,
		/obj/item/gun/projectile/automatic/rusted/ppsh = 1,
		/obj/item/gun/projectile/automatic/shotgun/minotaur = 1,
		/obj/item/gun/projectile/automatic/lr30 = 1,
		/obj/item/gun/energy/sniperrifle = 1,
		/obj/item/gun/energy/sniperrifle/pod_pilot = 1,
		/obj/item/gun/energy/shock_revolver = 1,
		/obj/item/gun/energy/pulse/turret = 1,
		/obj/item/gun/energy/plasma_pistol = 1,
		/obj/item/gun/energy/laser/scatter = 1,
		/obj/item/gun/energy/bsg/prebuilt = 1,
		/obj/item/twohanded/bamboospear = 1,
		/obj/item/twohanded/required/chainsaw = 1,
		/obj/item/kitchen/knife/butcher/meatcleaver = 1,
		/obj/item/rune_scimmy = 1,
		/obj/item/twohanded/spear/bonespear/chitinspear = 1,
		/obj/item/twohanded/garrote = 1,
		/obj/item/melee/rapier/syndie = 1,
		/obj/item/melee/claymore/bone = 1,
		/obj/item/gun/magic/staff/spellblade = 1,
		/obj/item/spellbook/oneuse/goliath_dash = 1,
		/obj/item/spellbook/oneuse/forcewall = 1,
		)
