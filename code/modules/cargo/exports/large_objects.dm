// Large objects that don't fit in crates, but must be sellable anyway.

// Crates, boxes, lockers.
/datum/export/large/crate
	cost = CARGO_CRATE_COST
	unit_name = "crate"
	export_types = list(/obj/structure/closet/crate)
	exclude_types = list(/obj/structure/closet/crate/large)

/datum/export/large/crate/total_printout() // That's why a goddamn metal crate costs that much.
	. = ..()
	if(.)
		. += " Thanks for participating in Nanotrasen Crates Recycling Program."

/datum/export/large/crate/wooden
	cost = CARGO_CRATE_COST / 5
	unit_name = "wooden crate"
	export_types = list(/obj/structure/closet/crate/large)
	exclude_types = list()

/datum/export/large/crate/wooden/ore
	unit_name = "ore box"
	export_types = list(/obj/structure/ore_box)


// Reagent dispensers.
/datum/export/large/reagent_dispenser
	cost = 100 // +0-400 depending on amount of reagents left
	var/contents_cost = 400

/datum/export/large/reagent_dispenser/get_cost(obj/O)
	var/obj/structure/reagent_dispensers/D = O
	var/ratio = D.reagents.total_volume / D.reagents.maximum_volume

	return ..() + round(contents_cost * ratio)

/datum/export/large/reagent_dispenser/water
	unit_name = "watertank"
	export_types = list(/obj/structure/reagent_dispensers/watertank)
	contents_cost = 200

/datum/export/large/reagent_dispenser/fuel
	unit_name = "fueltank"
	export_types = list(/obj/structure/reagent_dispensers/fueltank)

/datum/export/large/reagent_dispenser/beer
	unit_name = "beer keg"
	contents_cost = 700
	export_types = list(/obj/structure/reagent_dispensers/beerkeg)

/datum/export/large/reagent_dispenser/kvass
	unit_name = "kvass tank"
	cost = 400
	contents_cost = 200
	export_types = list(/obj/structure/reagent_dispensers/kvasstank)



// Heavy engineering equipment. Singulo/Tesla parts mostly.
/datum/export/large/emitter
	cost = 400
	unit_name = "emitter"
	export_types = list(/obj/machinery/power/emitter)

/datum/export/large/field_generator
	cost = 400
	unit_name = "field generator"
	export_types = list(/obj/machinery/field_generator)

/datum/export/large/collector
	cost = 250
	unit_name = "collector"
	export_types = list(/obj/machinery/power/rad_collector)

/datum/export/large/collector/pa
	cost = 450
	unit_name = "particle accelerator part"
	export_types = list(/obj/structure/particle_accelerator)

/datum/export/large/collector/pa/controls
	cost = 500
	unit_name = "particle accelerator control console"
	export_types = list(/obj/machinery/particle_accelerator/control_box)

/datum/export/large/pipedispenser
	cost = 500
	unit_name = "pipe dispenser"
	export_types = list(/obj/machinery/pipedispenser)


/datum/export/large/singularitygen
	cost = 1000 // If you have one left after engine setup, sell it.
	unit_name = "unused gravitational singularity generator"
	export_types = list(/obj/machinery/the_singularitygen)
	include_subtypes = FALSE

/datum/export/large/singularitygen/tesla
	unit_name = "unused energy ball generator"
	export_types = list(/obj/machinery/the_singularitygen/tesla)


// Misc
/datum/export/large/iv
	cost = 300
	unit_name = "iv drip"
	export_types = list(/obj/machinery/iv_drip)

/datum/export/large/barrier
	cost = 325
	unit_name = "security barrier"
	export_types = list(/obj/machinery/deployable/barrier)
