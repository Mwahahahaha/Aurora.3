// Uniform slot
/datum/gear/uniform
	display_name = "kilt"
	path = /obj/item/clothing/under/kilt
	slot = slot_w_uniform
	sort_category = "Uniforms and Casual Dress"

/datum/gear/uniform/bathrobe
	display_name = "bathrobe"
	path = /obj/item/clothing/under/bathrobe

/datum/gear/uniform/croptop
    display_name = "crop top (selection)"
    path = /obj/item/clothing/under/croptop

/datum/gear/uniform/croptop/New()
	..()
	var/list/croptops = list()
	for(var/croptop in typesof(/obj/item/clothing/under/croptop))
		var/obj/item/clothing/under/croptop/croptop_type = croptop
		croptops[initial(croptop_type.name)] = croptop_type
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(croptops))

/datum/gear/uniform/cuttop
	display_name = "cut top (selection)"
	description = "A selection of cut top shirts."
	path = /obj/item/clothing/under/cuttop

/datum/gear/uniform/cuttop/New()
	..()
	var/list/cuttops = list()
	for(var/cuttop in typesof(/obj/item/clothing/under/cuttop))
		var/obj/item/clothing/under/cuttop/cuttop_type = cuttop
		cuttops[initial(cuttop_type.name)] = cuttop_type
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(cuttops))

/datum/gear/uniform/cropdress
    display_name = "crop dress"
    path = /obj/item/clothing/under/cropdress

/datum/gear/uniform/iacjumpsuit
	display_name = "IAC Jumpsuit"
	path = /obj/item/clothing/under/rank/iacjumpsuit
	allowed_roles = list("Chief Medical Officer", "Physician", "Surgeon", "Pharmacist", "Paramedic", "Medical Resident")

/datum/gear/uniform/jumpsuit
	display_name = "generic jumpsuit (selection)"
	description = "A selection of generic colored jumpsuits."
	path = /obj/item/clothing/under/color/grey

/datum/gear/uniform/jumpsuit/New()
	..()
	var/jumpsuit = list()
	jumpsuit["grey jumpsuit"] = /obj/item/clothing/under/color/grey
	jumpsuit["black jumpsuit"] = /obj/item/clothing/under/color/black
	jumpsuit["blue jumpsuit"] = /obj/item/clothing/under/color/blue
	jumpsuit["green jumpsuit"] = /obj/item/clothing/under/color/green
	jumpsuit["orange jumpsuit"] = /obj/item/clothing/under/color/orange_nonprisoner
	jumpsuit["prisoner jumpsuit"] = /obj/item/clothing/under/color/orange
	jumpsuit["pink jumpsuit"] = /obj/item/clothing/under/color/pink
	jumpsuit["red jumpsuit"] = /obj/item/clothing/under/color/red
	jumpsuit["white jumpsuit"] = /obj/item/clothing/under/color/white
	jumpsuit["yellow jumpsuit"] = /obj/item/clothing/under/color/yellow
	jumpsuit["light blue jumpsuit"] = /obj/item/clothing/under/lightblue
	jumpsuit["aqua jumpsuit"] = /obj/item/clothing/under/aqua
	jumpsuit["purple jumpsuit"] = /obj/item/clothing/under/purple
	jumpsuit["light purple jumpsuit"] = /obj/item/clothing/under/lightpurple
	jumpsuit["light green jumpsuit"] = /obj/item/clothing/under/lightgreen
	jumpsuit["brown jumpsuit"] = /obj/item/clothing/under/brown
	jumpsuit["light brown jumpsuit"] = /obj/item/clothing/under/lightbrown
	jumpsuit["yellow green jumpsuit"] = /obj/item/clothing/under/yellowgreen
	jumpsuit["light red jumpsuit"] = /obj/item/clothing/under/lightred
	jumpsuit["dark red jumpsuit"] = /obj/item/clothing/under/darkred
	jumpsuit["rainbow jumpsuit"] = /obj/item/clothing/under/rainbow
	gear_tweaks += new/datum/gear_tweak/path(jumpsuit)

/datum/gear/uniform/skirt
	display_name = "skirt (selection, colourable)"
	description = "A selection of skirts."
	path = /obj/item/clothing/under/skirt
	flags = GEAR_HAS_NAME_SELECTION | GEAR_HAS_DESC_SELECTION | GEAR_HAS_COLOR_SELECTION

/datum/gear/uniform/skirt/New()
	..()
	var/skirts = list()
	skirts["casual skirt"] = /obj/item/clothing/under/skirt
	skirts["puffy skirt"] = /obj/item/clothing/under/skirt/puffy
	skirts["long skirt"] = /obj/item/clothing/under/skirt/long
	skirts["pencil skirt"] = /obj/item/clothing/under/skirt/pencil
	skirts["swept skirt"] = /obj/item/clothing/under/skirt/swept
	skirts["plaid skirt"] = /obj/item/clothing/under/skirt/plaid
	skirts["pleated skirt"] = /obj/item/clothing/under/skirt/pleated
	skirts["pleated skirt, alt"] = /obj/item/clothing/under/skirt/pleated/alt
	gear_tweaks += new/datum/gear_tweak/path(skirts)

/datum/gear/uniform/skirt/misc
	display_name = "skirt, misc (selection)"
	description = "A selection of non-colourable skirts."
	path = /obj/item/clothing/under/skirt/denim

/datum/gear/uniform/skirt/misc/New()
	..()
	var/misc_skirts = list()
	misc_skirts["denim skirt"] = /obj/item/clothing/under/skirt/denim
	misc_skirts["plaid skirt outfit, blue"] = /obj/item/clothing/under/skirt/outfit/plaid_blue
	misc_skirts["plaid skirt outfit, purple"] =/obj/item/clothing/under/skirt/outfit/plaid_purple
	misc_skirts["plaid skirt outfit, red"] = /obj/item/clothing/under/skirt/outfit/plaid_red
	gear_tweaks += new/datum/gear_tweak/path(misc_skirts)

/datum/gear/uniform/suit
	display_name = "suit (selection)"
	description = "A selection of formal suits."
	path = /obj/item/clothing/under/sl_suit

/datum/gear/uniform/suit/New()
	..()
	var/suits = list()
	suits["amish suit"] = /obj/item/clothing/under/sl_suit
	suits["black suit"] = /obj/item/clothing/under/suit_jacket
	suits["black suit with skirt"] = /obj/item/clothing/under/skirt/outfit
	suits["black suit, alt"] = /obj/item/clothing/under/suit_jacket/alt
	suits["black suit, alt skirt"] = /obj/item/clothing/under/suit_jacket/alt/skirt
	suits["black lawyer suit"] = /obj/item/clothing/under/lawyer/black
	suits["black lawyer skirt"] = /obj/item/clothing/under/lawyer/black/skirt
	suits["blue lawyer suit"] = /obj/item/clothing/under/lawyer/blue
	suits["blue lawyer skirt"] = /obj/item/clothing/under/lawyer/blue/skirt
	suits["burgundy suit"] = /obj/item/clothing/under/suit_jacket/burgundy
	suits["charcoal suit"] = /obj/item/clothing/under/suit_jacket/charcoal
	suits["checkered suit"] = /obj/item/clothing/under/suit_jacket/checkered
	suits["executive suit"] = /obj/item/clothing/under/suit_jacket/really_black
	suits["executive skirt"] = /obj/item/clothing/under/suit_jacket/really_black/skirt
	suits["gentleman suit"] = /obj/item/clothing/under/gentlesuit
	suits["lady suit"] = /obj/item/clothing/under/gentlesuit/skirt
	suits["navy suit"] = /obj/item/clothing/under/suit_jacket/navy
	suits["old man suit"] = /obj/item/clothing/under/oldman
	suits["old woman attire"] = /obj/item/clothing/under/oldwoman
	suits["purple suit"] = /obj/item/clothing/under/lawyer/purple
	suits["purple skirt"] = /obj/item/clothing/under/lawyer/purple/skirt
	suits["red suit"] = /obj/item/clothing/under/suit_jacket/red
	suits["red skirt"] = /obj/item/clothing/under/suit_jacket/red/skirt
	suits["red lawyer suit"] = /obj/item/clothing/under/lawyer/red
	suits["red lawyer skrit"] = /obj/item/clothing/under/lawyer/red/skirt
	suits["tan suit"] = /obj/item/clothing/under/suit_jacket/tan
	suits["vice suit"] = /obj/item/clothing/under/vice
	suits["white suit"] = /obj/item/clothing/under/suit_jacket/white
	suits["white skirt"] = /obj/item/clothing/under/suit_jacket/white/skirt
	gear_tweaks += new/datum/gear_tweak/path(suits)

/datum/gear/uniform/scrubs
	display_name = "scrubs (selection)"
	path = /obj/item/clothing/under/rank/medical/black
	allowed_roles = list("Scientist","Chief Medical Officer", "Physician", "Surgeon", "Pharmacist", "Geneticist", "Paramedic", "Medical Resident", "Xenobiologist", "Roboticist", "Research Director", "Forensic Technician")

/datum/gear/uniform/scrubs/New()
	..()
	var/scrubs = list()
	scrubs["scrubs, black"] = /obj/item/clothing/under/rank/medical/black
	scrubs["scrubs, blue"] = /obj/item/clothing/under/rank/medical/blue
	scrubs["scrubs, green"] = /obj/item/clothing/under/rank/medical/green
	scrubs["scrubs, purple"] = /obj/item/clothing/under/rank/medical/purple
	gear_tweaks += new/datum/gear_tweak/path(scrubs)

/datum/gear/uniform/dress
	display_name = "dress (selection)"
	description = "A selection of dresses."
	path = /obj/item/clothing/under/sundress

/datum/gear/uniform/dress/New()
	..()
	var/dress = list()
	dress["sundress"] = /obj/item/clothing/under/sundress
	dress["sundress, white"] = /obj/item/clothing/under/sundress_white
	dress["dress, flame"] = /obj/item/clothing/under/dress/dress_fire
	dress["dress, green"] = /obj/item/clothing/under/dress/dress_green
	dress["dress, orange"] = /obj/item/clothing/under/dress/dress_orange
	dress["dress, purple"] = /obj/item/clothing/under/dress/dress_purple
	dress["dress, pink"] = /obj/item/clothing/under/dress/dress_pink
	dress["dress, yellow"] = /obj/item/clothing/under/dress/dress_yellow
	dress["dress, white"] = /obj/item/clothing/under/dress/white
	dress["dress, stripped"] = /obj/item/clothing/under/dress/stripeddress
	dress["dress, sailor"] = /obj/item/clothing/under/dress/sailordress
	dress["dress, red swept"] = /obj/item/clothing/under/dress/red_swept_dress
	dress["dress, black tango"] = /obj/item/clothing/under/dress/blacktango
	dress["dress, black tango alternative"] = /obj/item/clothing/under/dress/blacktango/alt
	dress["dress, blue"] = /obj/item/clothing/under/dress/bluedress
	dress["dress, dark red"] = /obj/item/clothing/under/dress/darkreddress
	dress["dress, festive"] = /obj/item/clothing/under/dress/festivedress
	dress["dress, black and white"] = /obj/item/clothing/under/dress/blackwhite_short
	dress["dress, flamenco"] = /obj/item/clothing/under/dress/flamenco
	dress["dress, saloon"] = /obj/item/clothing/under/dress/saloon_dress
	dress["dress, western bustle"] = /obj/item/clothing/under/dress/westernbustle
	dress["dress, barmaid"] = /obj/item/clothing/under/dress/barmaid
	dress["dress, flower dress"] = /obj/item/clothing/under/dress/flower_dress
	dress["dress, lilac"] = /obj/item/clothing/under/dress/lilacdress
	dress["dress, little black"] = /obj/item/clothing/under/dress/littleblackdress
	dress["dress, nanny"] = /obj/item/clothing/under/dress/maid/janitor
	dress["dress, nanny and tie"] = /obj/item/clothing/under/dress/maid
	dress["dress, polka"] = /obj/item/clothing/under/dress/polka
	dress["dress, twist front"] = /obj/item/clothing/under/dress/twistfront
	dress["dress, v-neck"] = /obj/item/clothing/under/dress/vneck
	dress["corset, black"] = /obj/item/clothing/under/dress/black_corset
	dress["gown, white"] = /obj/item/clothing/under/dress/ballgown
	dress["gown, red"] = /obj/item/clothing/under/dress/ballgown/red
	dress["gown, red evening"] = /obj/item/clothing/under/dress/redeveninggown
	dress["gown, orange"] = /obj/item/clothing/under/dress/ballgown/orange
	dress["gown, purple"] = /obj/item/clothing/under/dress/ballgown/purple
	dress["gown, blue"] = /obj/item/clothing/under/dress/ballgown/blue
	gear_tweaks += new/datum/gear_tweak/path(dress)

/datum/gear/uniform/dress_colour
	display_name = "dress, misc (selection, colourable)"
	description = "A selection of colourable dresses."
	path = /obj/item/clothing/under/dress/white2
	flags = GEAR_HAS_NAME_SELECTION | GEAR_HAS_DESC_SELECTION | GEAR_HAS_COLOR_SELECTION

/datum/gear/uniform/dress_colour/New()
	..()
	var/whitedresses = list()
	whitedresses["short dress"] = /obj/item/clothing/under/dress/white3
	whitedresses["long dress"] = /obj/item/clothing/under/dress/white2
	whitedresses["long flared dress"] = /obj/item/clothing/under/dress/white4
	gear_tweaks += new/datum/gear_tweak/path(whitedresses)

/datum/gear/uniform/cheongsam
	display_name = "cheongsam (selection)"
	description = "A selection of cheongsam."
	path = /obj/item/clothing/under/cheongsam

/datum/gear/uniform/cheongsam/New()
	..()
	var/cheongsam = list()
	cheongsam["white cheongsam"] = /obj/item/clothing/under/cheongsam
	cheongsam["black cheongsam"] = /obj/item/clothing/under/cheongsam/black
	cheongsam["red cheongsam"] = /obj/item/clothing/under/cheongsam/red
	cheongsam["bright red cheongsam"] = /obj/item/clothing/under/cheongsam/brightred
	cheongsam["blue cheongsam"] = /obj/item/clothing/under/cheongsam/blue
	cheongsam["bright blue cheongsam"] = /obj/item/clothing/under/cheongsam/brightblue
	cheongsam["green cheongsam"] = /obj/item/clothing/under/cheongsam/green
	cheongsam["purple cheongsam"] = /obj/item/clothing/under/cheongsam/purple
	gear_tweaks += new/datum/gear_tweak/path(cheongsam)

/datum/gear/uniform/blazer
	display_name = "blue blazer (selection)"
	description = "Choose between trousers or skirt variation."
	path = /obj/item/clothing/under/blazer

/datum/gear/uniform/blazer/New()
	..()
	var/blueblazers = list()
	blueblazers["blue blazer, trousers"] = /obj/item/clothing/under/blazer
	blueblazers["blue blazer, skirt"] =/obj/item/clothing/under/blazer/skirt
	gear_tweaks += new/datum/gear_tweak/path(blueblazers)

/datum/gear/uniform/haltertop
	display_name = "halter top"
	path = /obj/item/clothing/under/haltertop

/datum/gear/uniform/pants
	display_name = "pants (selection)"
	description = "A selection of pants."
	path = /obj/item/clothing/under/pants

/datum/gear/uniform/pants/New()
	..()
	var/pants = list()
	pants["jeans"] = /obj/item/clothing/under/pants
	pants["jeans, baggy"] = /obj/item/clothing/under/pants/baggy
	pants["jeans, ripped"] = /obj/item/clothing/under/pants/ripped
	pants["jeans, classic"] = /obj/item/clothing/under/pants/classic
	pants["jeans, classic baggy"] = /obj/item/clothing/under/pants/classic/baggy
	pants["jeans, classic ripped"] = /obj/item/clothing/under/pants/classic/ripped
	pants["jeans, must hang"] = /obj/item/clothing/under/pants/musthang
	pants["jeans, must hang baggy"] = /obj/item/clothing/under/pants/musthang/baggy
	pants["jeans, must hang ripped"] = /obj/item/clothing/under/pants/musthang/ripped
	pants["jeans, designer"] = /obj/item/clothing/under/pants/designer
	pants["jeans, black"] = /obj/item/clothing/under/pants/jeansblack
	pants["jeans, black baggy"] = /obj/item/clothing/under/pants/jeansblack/baggy
	pants["jeans, black ripped"] = /obj/item/clothing/under/pants/jeansblack/ripped
	pants["jeans, grey"] = /obj/item/clothing/under/pants/jeansgrey
	pants["jeans, grey baggy"] = /obj/item/clothing/under/pants/jeansgrey/baggy
	pants["jeans, grey ripped"] = /obj/item/clothing/under/pants/jeansgrey/ripped
	pants["jeans, young folks"] = /obj/item/clothing/under/pants/youngfolksjeans
	pants["jeans, young folks baggy"] = /obj/item/clothing/under/pants/youngfolksjeans/baggy
	pants["pants, white"] = /obj/item/clothing/under/pants/white
	pants["pants, white baggy"] = /obj/item/clothing/under/pants/white/baggy
	pants["pants, black"] = /obj/item/clothing/under/pants/black
	pants["pants, black baggy"] = /obj/item/clothing/under/pants/black/baggy
	pants["pants, red"] = /obj/item/clothing/under/pants/red
	pants["pants, red baggy"] = /obj/item/clothing/under/pants/red/baggy
	pants["pants, tan"] = /obj/item/clothing/under/pants/tan
	pants["pants, tan baggy"] = /obj/item/clothing/under/pants/tan/baggy
	pants["pants, khaki"] = /obj/item/clothing/under/pants/khaki
	pants["pants, khaki baggy"] = /obj/item/clothing/under/pants/khaki/baggy
	pants["pants, camo"] = /obj/item/clothing/under/pants/camo
	pants["pants, camo baggy"] = /obj/item/clothing/under/pants/camo/baggy
	pants["pants, tacticool"] = /obj/item/clothing/under/pants/tacticool
	pants["track pants"] = /obj/item/clothing/under/pants/track
	pants["track pants, baggy"] = /obj/item/clothing/under/pants/track/baggy
	pants["track pants, blue"] = /obj/item/clothing/under/pants/track/blue
	pants["track pants, green"] = /obj/item/clothing/under/pants/track/green
	pants["track pants, white"] = /obj/item/clothing/under/pants/track/white
	pants["track pants, red"] = /obj/item/clothing/under/pants/track/red
	pants["utility, orange"] = /obj/item/clothing/under/pants/utility/orange
	pants["utility, blue"] = /obj/item/clothing/under/pants/utility/blue
	pants["utility, green"] = /obj/item/clothing/under/pants/utility
	pants["utility, white"] = /obj/item/clothing/under/pants/utility/white
	pants["utility, red"] = /obj/item/clothing/under/pants/utility/red
	gear_tweaks += new/datum/gear_tweak/path(pants)

/datum/gear/uniform/colorpants
	display_name = "pants (selection, colourable)"
	path = /obj/item/clothing/under/pants/dress
	flags = GEAR_HAS_NAME_SELECTION | GEAR_HAS_DESC_SELECTION | GEAR_HAS_COLOR_SELECTION

/datum/gear/uniform/colorpants/New()
	..()
	var/colorpants = list()
	colorpants["dress pants"] = /obj/item/clothing/under/pants/dress
	colorpants["dress pants, belt"] = /obj/item/clothing/under/pants/dress/belt
	colorpants["striped pants"] = /obj/item/clothing/under/pants/striped
	colorpants["yoga pants"] = /obj/item/clothing/under/pants/yogapants
	gear_tweaks += new/datum/gear_tweak/path(colorpants)

/datum/gear/uniform/shorts
	display_name = "shorts (selection)"
	description = "A selection of shorts."
	path = /obj/item/clothing/under/shorts

/datum/gear/uniform/shorts/New()
	..()
	var/shorts = list()
	shorts["athletic shorts, black"] = /obj/item/clothing/under/shorts
	shorts["athletic shorts, red"] = /obj/item/clothing/under/shorts/red
	shorts["athletic shorts, green"] = /obj/item/clothing/under/shorts/green
	shorts["athletic shorts, black"] = /obj/item/clothing/under/shorts/black
	shorts["athletic shorts, grey"] = /obj/item/clothing/under/shorts/grey
	shorts["jean shorts"] = /obj/item/clothing/under/shorts/jeans
	shorts["jean short shorts"] = /obj/item/clothing/under/shorts/jeans/female
	shorts["classic jeans shorts"] = /obj/item/clothing/under/shorts/jeans/classic
	shorts["classic jeans shorts shorts"] = /obj/item/clothing/under/shorts/jeans/classic/female
	shorts["mustang jeans shorts"] = /obj/item/clothing/under/shorts/jeans/mustang
	shorts["mustang jeans shorts shorts"] = /obj/item/clothing/under/shorts/jeans/mustang/female
	shorts["young folks jeans shorts"] = /obj/item/clothing/under/shorts/jeans/youngfolks
	shorts["young folks jeans shorts shorts"] = /obj/item/clothing/under/shorts/jeans/youngfolks/female
	shorts["black jeans shorts"] = /obj/item/clothing/under/shorts/jeans/black
	shorts["black jeans shorts shorts"] = /obj/item/clothing/under/shorts/jeans/black/female
	shorts["grey jeans shorts"] = /obj/item/clothing/under/shorts/jeans/grey
	shorts["grey jeans shorts shorts"] = /obj/item/clothing/under/shorts/jeans
	shorts["khaki shorts"] = /obj/item/clothing/under/shorts/khaki
	shorts["khaki shorts shorts"] = /obj/item/clothing/under/shorts/khaki/female
	gear_tweaks += new/datum/gear_tweak/path(shorts)

/datum/gear/uniform/turtleneck
	display_name = "tacticool turtleneck"
	path = /obj/item/clothing/under/syndicate/tacticool

/datum/gear/uniform/dominia
	display_name = "Dominia clothing (selection)"
	description = "A selection of Dominian clothing."
	path = /obj/item/clothing/under/dominia
	flags = GEAR_HAS_DESC_SELECTION

/datum/gear/uniform/dominia/New()
	..()
	var/suit = list()
	suit["Dominia suit, red"] = /obj/item/clothing/under/dominia
	suit["Dominia suit, black"] = /obj/item/clothing/under/dominia/black
	suit["Dominia sweater"] = /obj/item/clothing/under/dominia/sweater
	suit["lyodsuit"] = /obj/item/clothing/under/dominia/lyodsuit
	suit["hoodied lyodsuit"] = /obj/item/clothing/under/dominia/lyodsuit/hoodie
	gear_tweaks += new/datum/gear_tweak/path(suit)

/datum/gear/uniform/miscellaneous/kimono
	display_name = "kimono (colourable)"
	path = /obj/item/clothing/under/kimono
	flags = GEAR_HAS_NAME_SELECTION | GEAR_HAS_DESC_SELECTION | GEAR_HAS_COLOR_SELECTION

/datum/gear/uniform/miscellaneous/kimonomisc
	display_name = "kimono (selection)"
	path = /obj/item/clothing/under/kimono/ronin

/datum/gear/uniform/miscellaneous/kimonomisc/New()
	..()
	var/kimonomisc = list()
	kimonomisc["ronin kimono"] = /obj/item/clothing/under/kimono/ronin
	kimonomisc["fancy kimono"] = /obj/item/clothing/under/kimono/fancy

/datum/gear/uniform/miscellaneous/kamishimo
	display_name = "kamishimo"
	path = obj/item/clothing/under/kamishimo

/datum/gear/uniform/circuitry
	display_name = "jumpsuit, circuitry (empty)"
	path = /obj/item/clothing/under/circuitry

/datum/gear/uniform/pyjama
	display_name = "pyjamas (selection)"
	path = /obj/item/clothing/under/pj/blue

/datum/gear/uniform/pyjama/New()
	..()
	var/pyjamas = list()
	pyjamas["blue pyjamas"] = /obj/item/clothing/under/pj/blue
	pyjamas["red pyjamas"] = /obj/item/clothing/under/pj/red
	gear_tweaks += new/datum/gear_tweak/path(pyjamas)

/datum/gear/uniform/sari
	display_name = "sari (selection)"
	path = /obj/item/clothing/under/dress/sari

/datum/gear/uniform/sari/New()
	..()
	var/sari = list()
	sari["red sari"] = /obj/item/clothing/under/dress/sari
	sari["green sari"] = /obj/item/clothing/under/dress/sari/green
	gear_tweaks += new/datum/gear_tweak/path(sari)

/datum/gear/uniform/wrappedcoat
	display_name = "modern wrapped coat"
	path = /obj/item/clothing/under/moderncoat

/datum/gear/uniform/ascetic
	display_name = "plain ascetic garb"
	path = /obj/item/clothing/under/ascetic

/datum/gear/uniform/pinktutu
	display_name = "pink tutu"
	path = /obj/item/clothing/under/dress/pinktutu

/datum/gear/uniform/overalls_outfit
	display_name = "overalls (selection)"
	path = /obj/item/clothing/under/overalls

/datum/gear/uniform/overalls_outfit/New()
	..()
	var/overalls_outfits = list()
	overalls_outfits["overalls"] = /obj/item/clothing/under/overalls
	overalls_outfits["sleek overalls"] = /obj/item/clothing/under/overalls/sleek
	overalls_outfits["service overalls"] = /obj/item/clothing/under/serviceoveralls
	gear_tweaks += new/datum/gear_tweak/path(overalls_outfits)

/datum/gear/uniform/utility
	display_name = "utility jumpsuit (selection)"
	description = "A selection of comfortable utility jumpsuits."
	path = /obj/item/clothing/under/utility

/datum/gear/uniform/utility/New()
	..()
	var/utility_uniforms = list()
	utility_uniforms["black utility uniform"] = /obj/item/clothing/under/utility
	utility_uniforms["navy utility uniform"] = /obj/item/clothing/under/utility/blue
	utility_uniforms["grey utility uniform"] = /obj/item/clothing/under/utility/grey
	utility_uniforms["green utility uniform"] = /obj/item/clothing/under/utility/green
	utility_uniforms["tan utility uniform"] = /obj/item/clothing/under/utility/tan
	gear_tweaks += new/datum/gear_tweak/path(utility_uniforms)

//Uniform Alternatives
//Standard uniforms also included in the event someone wants a standard uniform in their bag after it's replaced by other clothes
/datum/gear/uniform/uniform_captain
	display_name = "uniform, Captain (selection)"
	description = "A selection of alternative outfits for the Captain."
	path = /obj/item/clothing/under/rank/captain
	allowed_roles = list("Captain")
	cost = 0

/datum/gear/uniform/uniform_captain/New()
	..()
	var/captain_uniforms = list()
	captain_uniforms["standard captain uniform"] = /obj/item/clothing/under/rank/captain
	captain_uniforms["standard captain dress"] = /obj/item/clothing/under/dress/dress_cap
	captain_uniforms["formal captain uniform"] = /obj/item/clothing/under/captainformal
	captain_uniforms["green suit"] = /obj/item/clothing/under/gimmick/rank/captain/suit
	captain_uniforms["green skirt"] = /obj/item/clothing/under/gimmick/rank/captain/suit/skirt
	gear_tweaks += new/datum/gear_tweak/path(captain_uniforms)

/datum/gear/uniform/uniform_hop
	display_name = "uniform, Head of Personnel (selection)"
	description = "A selection of alternative outfits for the Head of Personnel."
	path = /obj/item/clothing/under/rank/head_of_personnel
	allowed_roles = list("Head of Personnel")
	cost = 0

/datum/gear/uniform/uniform_hop/New()
	..()
	var/hop_uniforms = list()
	hop_uniforms["standard HoP uniform"] = /obj/item/clothing/under/rank/head_of_personnel
	hop_uniforms["standard HoP dress"] = /obj/item/clothing/under/dress/dress_hop
	hop_uniforms["whimsy HoP uniform"] = /obj/item/clothing/under/rank/head_of_personnel_whimsy
	hop_uniforms["alternative HoP uniform"] = /obj/item/clothing/under/rank/head_of_personnel/alt
	hop_uniforms["human resources skirt"] = /obj/item/clothing/under/dress/dress_hr
	hop_uniforms["teal suit"] = /obj/item/clothing/under/gimmick/rank/head_of_personnel/suit
	hop_uniforms["teal skirt"] = /obj/item/clothing/under/gimmick/rank/head_of_personnel/suit/skirt
	gear_tweaks += new/datum/gear_tweak/path(hop_uniforms)

/datum/gear/uniform/uniform_bartender
	display_name = "uniform, Bartender (selection)"
	description = "A selection of alternative outfits for the Bartender."
	path = /obj/item/clothing/under/rank/bartender
	allowed_roles = list("Head of Personnel", "Bartender")
	cost = 0

/datum/gear/uniform/uniform_bartender/New()
	..()
	var/bartender_uniforms = list()
	bartender_uniforms["standard bartender uniform"] = /obj/item/clothing/under/rank/bartender
	bartender_uniforms["standard bartender skirt"] = /obj/item/clothing/under/rank/bartender/skirt
	gear_tweaks += new/datum/gear_tweak/path(bartender_uniforms)

/datum/gear/uniform/uniform_chef
	display_name = "uniform, Chef (selection)"
	description = "A selection of alternative outfits for the Chef."
	path = /obj/item/clothing/under/rank/chef
	allowed_roles = list("Head of Personnel", "Chef")
	cost = 0

/datum/gear/uniform/uniform_chef/New()
	..()
	var/chef_uniforms = list()
	chef_uniforms["standard chef uniform"] = /obj/item/clothing/under/rank/chef
	chef_uniforms["waiter uniform"] = /obj/item/clothing/under/waiter
	gear_tweaks += new/datum/gear_tweak/path(chef_uniforms)

/datum/gear/uniform/uniform_gardener
	display_name = "uniform, Gardener"
	description = "The standard uniform for the Gardener."
	path = /obj/item/clothing/under/rank/hydroponics
	allowed_roles = list("Head of Personnel", "Gardener")
	cost = 0

/datum/gear/uniform/uniform_quartermaster
	display_name = "uniform, Quartermaster"
	description = "A selection of alternative outfits for the Quartermaster."
	path = /obj/item/clothing/under/rank/cargo/qm
	allowed_roles = list("Head of Personnel", "Quartermaster")
	cost = 0

/datum/gear/uniform/uniform_quartermaster/New()
	..()
	var/qm_uniforms = list()
	qm_uniforms["standard quartermaster uniform"] = /obj/item/clothing/under/rank/cargo/qm
	qm_uniforms["alt quartermaster uniform"] = /obj/item/clothing/under/rank/cargo/qm/alt
	qm_uniforms["alt quartermaster skirt"] = /obj/item/clothing/under/rank/cargo/qm/alt/skirt
	qm_uniforms["alt quartermaster jeans"] = /obj/item/clothing/under/rank/cargo/qm/alt/jeans
	qm_uniforms["alt quartermaster fem jeans"] = /obj/item/clothing/under/rank/cargo/qm/alt/jeans/female
	gear_tweaks += new/datum/gear_tweak/path(qm_uniforms)

/datum/gear/uniform/uniform_cargot
	display_name = "uniform, Cargo Technician (selection)"
	description = "For those that value leg-room."
	path = /obj/item/clothing/under/rank/cargo
	allowed_roles = list("Head of Personnel", "Quartermaster", "Cargo Technician")
	cost = 0

/datum/gear/uniform/uniform_cargot
	..()
	var/cargot_uniforms = list()
	cargot_uniforms["standard cargo technician uniform"] = /obj/item/clothing/under/rank/cargo
	cargot_uniforms["standard cargo technician shorts"] = /obj/item/clothing/under/rank/cargo/alt
	cargot_uniforms["alt cargo technician uniform"] = /obj/item/clothing/under/rank/cargo/old
	cargot_uniforms["alt cargo technician skirt"] = /obj/item/clothing/under/rank/cargo/old/skirt
	cargot_uniforms["alt cargo technician jeans"] = /obj/item/clothing/under/rank/cargo/old/jeans
	cargot_uniforms["alt cargo technician fem jeans"] = /obj/item/clothing/under/rank/cargo/old/jeans/female
	cargot_uniforms["old cargo technician uniform"] = /obj/item/clothing/under/rank/cargo/old/tech
	gear_tweaks += new/datum/gear_tweak/path(cargot_uniforms)

/datum/gear/uniform/science_alt
	display_name = "scientist, alt"
	path = /obj/item/clothing/under/rank/scientist/science_alt
	allowed_roles = list("Scientist", "Xenobiologist")
	cost = 0

/datum/gear/uniform/uniform_hos
	display_name = "uniform, Head of Security (selection)"
	description = "A selection of alternative outfits for the Head of Security."
	path = /obj/item/clothing/under/rank/head_of_security
	allowed_roles = list("Head of Security")
	cost = 0

/datum/gear/uniform/uniform_hos/New()
	..()
	var/hos_uniforms = list()
	hos_uniforms["standard HoS uniform"] = /obj/item/clothing/under/rank/head_of_security
	hos_uniforms["corporate HoS uniform"] = /obj/item/clothing/under/rank/head_of_security/corp
	hos_uniforms["navy HoS uniform"] = /obj/item/clothing/under/rank/head_of_security/navy
	hos_uniforms["dark navy HoS uniform"] = /obj/item/clothing/under/rank/head_of_security/darknavy
	hos_uniforms["tan HoS uniform"] = /obj/item/clothing/under/rank/head_of_security/tan
	hos_uniforms["formal HoS uniform"] = /obj/item/clothing/under/hosformalmale
	hos_uniforms["formal HoS dress"] = /obj/item/clothing/under/hosformalfem
	gear_tweaks += new/datum/gear_tweak/path(hos_uniforms)

/datum/gear/uniform/uniform_officer
	display_name = "uniform, Security Officer (selection)"
	description = "A selection of alternative uniforms for the Security Officer."
	path = /obj/item/clothing/under/rank/security
	allowed_roles = list("Security Officer")
	cost = 0

/datum/gear/uniform/uniform_officer/New()
	..()
	var/seco_uniforms = list()
	seco_uniforms["standard officer uniform"] = /obj/item/clothing/under/rank/security
	seco_uniforms["corporate officer uniform"] = /obj/item/clothing/under/rank/security/corp
	seco_uniforms["blue officer uniform"] = /obj/item/clothing/under/rank/security/blue
	seco_uniforms["blue officer uniform, alt"] = /obj/item/clothing/under/rank/security/blue/alt
	seco_uniforms["navy officer uniform"] = /obj/item/clothing/under/rank/security/navy
	seco_uniforms["dark navy officer uniform"] = /obj/item/clothing/under/rank/security/darknavy
	seco_uniforms["tan officer uniform"] = /obj/item/clothing/under/rank/security/tan
	gear_tweaks += new/datum/gear_tweak/path(seco_uniforms)

/datum/gear/uniform/uniform_detective
	display_name = "uniform, Investigations (selection)"
	description = "A selection of alternative uniforms for the Detective and the Forensic Technician."
	path = /obj/item/clothing/under/det
	allowed_roles = list("Detective", "Forensic Technician")
	cost = 0

/datum/gear/uniform/uniform_detective/New()
	..()
	var/inv_uniforms = list()
	inv_uniforms["tan investigator uniform"] = /obj/item/clothing/under/det
	inv_uniforms["grey investigator uniform"] = /obj/item/clothing/under/det/forensics
	inv_uniforms["black investigator uniform"] = /obj/item/clothing/under/det/black
	inv_uniforms["brown investigator uniform"] = /obj/item/clothing/under/det/classic
	inv_uniforms["dark grey investigator uniform"] = /obj/item/clothing/under/det/grey
	inv_uniforms["dark grey investigator waistcoat"] = /obj/item/clothing/under/det/grey/waistcoat
	inv_uniforms["muted investigator uniform"] = /obj/item/clothing/under/det/muted
	inv_uniforms["muted investigator waistcoat"] = /obj/item/clothing/under/det/muted/waistcoat
	inv_uniforms["blue investigator uniform"] = /obj/item/clothing/under/det/blue
	inv_uniforms["corporate investigator uniform"] = /obj/item/clothing/under/det/corporate
	gear_tweaks += new/datum/gear_tweak/path(inv_uniforms)

/datum/gear/uniform/uniform_warden
	display_name = "uniform, Warden (selection)"
	description = "A selection of alternative uniforms for the Warden."
	path = /obj/item/clothing/under/rank/warden
	allowed_roles = list("Warden")
	cost = 0

/datum/gear/uniform/uniform_warden/New()
	..()
	var/warden_uniforms = list()
	warden_uniforms["standard warden uniform"] = /obj/item/clothing/under/rank/warden
	warden_uniforms["corporate warden uniform"] = /obj/item/clothing/under/rank/warden/corp
	warden_uniforms["dark blue warden uniform"] = /obj/item/clothing/under/rank/warden/dark_blue
	warden_uniforms["blue warden uniform"] = /obj/item/clothing/under/rank/warden/blue
	warden_uniforms["tan warden uniform"] = /obj/item/clothing/under/rank/warden/tan
	warden_uniforms["navy warden uniform"] = /obj/item/clothing/under/rank/warden/navy
	gear_tweaks += new/datum/gear_tweak/path(warden_uniforms)

/datum/gear/uniform/uniform_securitycadet
	display_name = "uniform, Security Cadet (selection)"
	description = "A selection of alternative uniforms for the Security Cadet."
	path = /obj/item/clothing/under/rank/cadet
	allowed_roles = list("Security Cadet")
	cost = 0

/datum/gear/uniform/uniform_securitycadet/New()
	..()
	var/cadet_uniforms = list()
	cadet_uniforms["standard cadet uniform"] = /obj/item/clothing/under/rank/cadet
	cadet_uniforms["navy cadet uniform"] = /obj/item/clothing/under/rank/cadet/navy
	gear_tweaks += new/datum/gear_tweak/path(cadet_uniforms)