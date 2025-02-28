/obj/item/gun/magic/staff
	slot_flags = ITEM_SLOT_BACK
	ammo_type = /obj/item/ammo_casing/magic
	item_flags = NO_MAT_REDEMPTION
	lefthand_file = 'icons/mob/inhands/staff_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/staff_righthand.dmi'

/obj/item/gun/magic/staff/change
	name = "staff of change"
	desc = "An artefact that spits bolts of coruscating energy which cause the target's very form to reshape itself"
	ammo_type = /obj/item/ammo_casing/magic/change
	icon_state = "staffofchange"
	item_state = "staffofchange"
	recharge_rate = 12
	fire_sound = 'sound/magic/Staff_Change.ogg'

/obj/item/gun/magic/staff/animate
	name = "staff of animation"
	desc = "An artefact that spits bolts of life-force which causes objects which are hit by it to animate and come to life! This magic doesn't affect machines."
	ammo_type = /obj/item/ammo_casing/magic/animate
	icon_state = "staffofanimation"
	item_state = "staffofanimation"
	fire_sound = 'sound/magic/staff_animation.ogg'

/obj/item/gun/magic/staff/healing
	name = "staff of healing"
	desc = "An artefact that spits bolts of restoring magic which can remove ailments of all kinds and even raise the dead."
	ammo_type = /obj/item/ammo_casing/magic/heal
	icon_state = "staffofhealing"
	item_state = "staffofhealing"
	fire_sound = 'sound/magic/staff_healing.ogg'

/obj/item/gun/magic/staff/healing/handle_suicide() //Stops people trying to commit suicide to heal themselves
	return

/obj/item/gun/magic/staff/chaos
	name = "staff of chaos"
	desc = "An artefact that spits bolts of chaotic magic that can potentially do anything."
	ammo_type = /obj/item/ammo_casing/magic/chaos
	icon_state = "staffofchaos"
	item_state = "staffofchaos"
	max_charges = 10
	recharge_rate = 2
	no_den_usage = 1
	fire_sound = 'sound/magic/staff_chaos.ogg'

/obj/item/gun/magic/staff/door
	name = "staff of door creation"
	desc = "An artefact that spits bolts of transformative magic that can create doors in walls."
	ammo_type = /obj/item/ammo_casing/magic/door
	icon_state = "staffofdoor"
	item_state = "staffofdoor"
	max_charges = 10
	recharge_rate = 2
	no_den_usage = 1
	fire_sound = 'sound/magic/staff_door.ogg'

/obj/item/gun/magic/staff/slipping
	name = "staff of slipping"
	desc = "An artefact that spits... bananas?"
	ammo_type = /obj/item/ammo_casing/magic/slipping
	icon_state = "staffofslipping"
	item_state = "staffofslipping"
	fire_sound = 'sound/items/bikehorn.ogg'

/obj/item/gun/magic/staff/slipping/honkmother
	name = "staff of the honkmother"
	desc = "An ancient artefact, sought after by clowns everywhere."
	fire_sound = 'sound/items/airhorn.ogg'

/obj/item/gun/magic/staff/focus
	name = "mental focus"
	desc = "An artefact that channels the will of the user into destructive bolts of force. If you aren't careful with it, you might poke someone's brain out."
	icon = 'icons/obj/wizard.dmi'
	icon_state = "focus"
	item_state = "focus"
	ammo_type = /obj/item/ammo_casing/magic/forcebolt

/obj/item/gun/magic/staff/spellblade
	name = "spellblade"
	desc = "A deadly combination of laziness and bloodlust, this blade allows the user to dismember their enemies without all the hard work of actually swinging the sword."
	fire_sound = 'sound/magic/fireball.ogg'
	ammo_type = /obj/item/ammo_casing/magic/spellblade
	icon_state = "spellblade"
	item_state = "spellblade"
	hitsound = 'sound/weapons/rapierhit.ogg'
	force = 25
	armour_penetration = 75
	block_chance = 50
	block_type = MELEE_ATTACKS
	sharp = 1
	max_charges = 4
