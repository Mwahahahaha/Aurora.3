/datum/category_item/player_setup_item/general/equipment
	name = "Equipment"
	sort_order = 4

/datum/category_item/player_setup_item/general/equipment/load_character(var/savefile/S)
	S["underwear"]     >> pref.underwear
	S["undershirt"]    >> pref.undershirt
	S["socks"]         >> pref.socks
	S["backbag"]       >> pref.backbag
	S["backbag_style"] >> pref.backbag_style
	S["pdachoice"]     >> pref.pdachoice
	S["pdaringer"]     >> pref.pdaringer
	S["pdatone"]       >> pref.pdatone
	S["pdanews"]       >> pref.pdanews
	S["pdanewstone"]   >> pref.pdanewstone

/datum/category_item/player_setup_item/general/equipment/save_character(var/savefile/S)
	S["underwear"]     << pref.underwear
	S["undershirt"]    << pref.undershirt
	S["socks"]         << pref.socks
	S["backbag"]       << pref.backbag
	S["backbag_style"] << pref.backbag_style
	S["pdachoice"]     << pref.pdachoice
	S["pdaringer"]     << pref.pdaringer
	S["pdatone"]       << pref.pdatone
	S["pdanews"]       << pref.pdanews
	S["pdanewstone"]   << pref.pdanewstone

/datum/category_item/player_setup_item/general/equipment/gather_load_query()
	return list(
		"ss13_characters" = list(
			"vars" = list(
				"underwear",
				"undershirt",
				"socks",
				"backbag",
				"backbag_style",
				"pdachoice",
				"pdaringer",
				"pdatone",
				"pdanews",
				"pdanewstone"
			),
			"args" = list("id")
		)
	)

/datum/category_item/player_setup_item/general/equipment/gather_load_parameters()
	return list("id" = pref.current_character)

/datum/category_item/player_setup_item/general/equipment/gather_save_query()
	return list(
		"ss13_characters" = list(
			"underwear",
			"undershirt",
			"socks",
			"backbag",
			"backbag_style",
			"pdachoice",
			"pdaringer",
			"pdatone",
			"pdanews",
			"pdanewstone",
			"id" = 1,
			"ckey" = 1
		)
	)

/datum/category_item/player_setup_item/general/equipment/gather_save_parameters()
	return list(
		"underwear" = pref.underwear,
		"undershirt" = pref.undershirt,
		"socks" = pref.socks,
		"backbag" = pref.backbag,
		"backbag_style" = pref.backbag_style,
		"pdachoice" = pref.pdachoice,
		"pdaringer" = pref.pdaringer,
		"pdatone" = pref.pdatone,
		"pdanews" = pref.pdanews,
		"pdanewstone" = pref.pdanewstone,
		"id" = pref.current_character,
		"ckey" = PREF_CLIENT_CKEY
	)

/datum/category_item/player_setup_item/general/equipment/sanitize_character(var/sql_load = 0)
	if (sql_load)
		pref.backbag = text2num(pref.backbag)

	pref.backbag	= sanitize_integer(pref.backbag, 1, backbaglist.len, initial(pref.backbag))
	pref.backbag_style = sanitize_integer(pref.backbag_style, 1, backbagstyles.len, initial(pref.backbag_style))
	pref.pdachoice = sanitize_integer(pref.pdachoice, 1, pdachoicelist.len, initial(pref.pdachoice))
	pref.pdaringer = sanitize_integer(pref.pdaringer, 0, 1, initial(pref.pdaringer))
	pref.pdatone = sanitize(pref.pdatone, 20)
	pref.pdanews = sanitize_integer(pref.pdanews, 0, 1, initial(pref.pdanews))
	pref.pdanewstone = sanitize(pref.pdanewstone, 20)

	var/undies = get_undies()
	var/gender_socks = get_gender_socks()
	if(!get_key_by_value(undies, pref.underwear))
		pref.underwear = null
	if(!get_key_by_value(undershirt_t, pref.undershirt))
		pref.undershirt = undershirt_t[undershirt_t[1]]
	if(!get_key_by_value(gender_socks, pref.socks))
		pref.socks = null

/datum/category_item/player_setup_item/general/equipment/content()
	var/list/dat = list()
	dat += "<b>Equipment:</b><br>"
	dat += "Underwear: <a href='?src=\ref[src];change_underwear=1'><b>[get_key_by_value(get_undies(),pref.underwear)]</b></a><br>"
	dat += "Undershirt: <a href='?src=\ref[src];change_undershirt=1'><b>[get_key_by_value(undershirt_t,pref.undershirt)]</b></a><br>"
	dat += "Socks: <a href='?src=\ref[src];change_socks=1'><b>[get_key_by_value(get_gender_socks(),pref.socks)]</b></a><br>"
	dat += "Backpack Type: <a href='?src=\ref[src];change_backpack=1'><b>[backbaglist[pref.backbag]]</b></a><br>"
	dat += "Backpack Style: <a href='?src=\ref[src];change_backpack_style=1'><b>[backbagstyles[pref.backbag_style]]</b></a><br>"
	dat += "PDA Type: <a href='?src=\ref[src];change_pda=1'><b>[pdachoicelist[pref.pdachoice]]</b></a><br>"
	dat += "PDA Ringer: <a href='?src=\ref[src];toggle_pda_mute=1'><b>[(pref.pdaringer) ? "Off" : "On"]</b></a><br>"
	dat += "PDA Ringtone: <a href='?src=\ref[src];change_pda_ringtone=1'><b>[pref.pdatone]</b></a><br>"
	dat += "PDA News Ringer: <a href='?src=\ref[src];toggle_pda_news_mute=1'><b>[(pref.pdanews) ? "Off" : "On"]</b></a><br>"
	dat += "PDA News Ringtone: <a href='?src=\ref[src];change_pda_news_ringtone=1'><b>[pref.pdanewstone]</b></a><br>"

	. = dat.Join()

/datum/category_item/player_setup_item/general/equipment/proc/get_undies()
	return pref.gender == MALE ? underwear_m : underwear_f

/datum/category_item/player_setup_item/general/equipment/proc/get_gender_socks()
	return pref.gender == MALE ? socks_m : socks_f

/datum/category_item/player_setup_item/general/equipment/OnTopic(var/href,var/list/href_list, var/mob/user)
	if(href_list["change_underwear"])
		var/underwear_options = get_undies()
		var/new_underwear = input(user, "Choose your character's underwear:", "Character Preference", get_key_by_value(get_undies(),pref.underwear)) as null|anything in underwear_options
		if(!isnull(new_underwear) && CanUseTopic(user))
			pref.underwear = underwear_options[new_underwear]
			return TOPIC_REFRESH

	else if(href_list["change_undershirt"])
		var/new_undershirt = input(user, "Choose your character's undershirt:", "Character Preference", get_key_by_value(undershirt_t,pref.undershirt)) as null|anything in undershirt_t
		if(!isnull(new_undershirt) && CanUseTopic(user))
			pref.undershirt = undershirt_t[new_undershirt]
			return TOPIC_REFRESH

	else if(href_list["change_socks"])
		var/socks_options = get_gender_socks()
		var/new_socks = input(user, "Choose your character's socks:", "Character Preference", get_key_by_value(get_gender_socks(),pref.socks)) as null|anything in socks_options
		if(!isnull(new_socks) && CanUseTopic(user))
			pref.socks = socks_options[new_socks]
			return TOPIC_REFRESH

	else if(href_list["change_backpack"])
		var/new_backbag = input(user, "Choose your character's bag type:", "Character Preference", backbaglist[pref.backbag]) as null|anything in backbaglist
		if(!isnull(new_backbag) && CanUseTopic(user))
			pref.backbag = backbaglist.Find(new_backbag)
			return TOPIC_REFRESH

	else if(href_list["change_backpack_style"])
		var/new_backbag = input(user, "Choose your character's style of bag:", "Character Preference", backbagstyles[pref.backbag_style]) as null|anything in backbagstyles
		if(!isnull(new_backbag) && CanUseTopic(user))
			pref.backbag_style = backbagstyles.Find(new_backbag)
			return TOPIC_REFRESH

	else if(href_list["change_pda"])
		var/new_pdachoice = input(user, "Choose your character's style of PDA:", "Character Preference", pdachoicelist[pref.pdachoice]) as null|anything in pdachoicelist
		if(!isnull(new_pdachoice) && CanUseTopic(user))
			pref.pdachoice = pdachoicelist.Find(new_pdachoice)
			return TOPIC_REFRESH

	else if(href_list["toggle_pda_mute"])
		if(CanUseTopic(user))
			pref.pdaringer = !pref.pdaringer
			return TOPIC_REFRESH

	else if(href_list["change_pda_ringtone"])
		var/raw_ringtone = sanitize(input(user, "Please enter new ringtone. 20 characters maximum.", "Ringtone", html_decode(pref.pdatone)) as text|null, 20)
		if(!isnull(raw_ringtone) && CanUseTopic(user))
			pref.pdatone = html(_decode(raw_ringtone)
			return TOPIC_REFRESH

	else if(href_list["toggle_pda_news_mute"])
		if(CanUseTopic(user))
			pref.pdanews = !pref.pdanews
			return TOPIC_REFRESH

	else if(href_list["change_pda_news_ringtone"])
		var/raw_newsringtone = sanitize(input(user, "Please enter new news ringtone. 20 characters maximum.", "News Ringtone", html_decode(pref.pdanewstone)) as text|null, 20)
		if(!isnull(raw_newsringtone) && CanUseTopic(user))
			pref.pdanewstone = html_decode(raw_newsringtone)
			return TOPIC_REFRESH

	return ..()
