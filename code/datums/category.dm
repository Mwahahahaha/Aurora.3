/**********************
* Category Collection *
**********************/
/datum/category_collection
	var/category_group_type						// The type of categories to initialize
	var/list/datum/category_group/categories	// The list of initialized categories
	var/list/datum/category_group/categories_by_name //Associative list of initialised categories, by name

/datum/category_collection/New()
	..()
	categories = new()
	categories_by_name = new()
	for(var/category_type in typesof(category_group_type))
		var/datum/category_group/category = category_type
		if(initial(category.name))
			category = new category(src)
			categories += category
			categories_by_name[category.name] = category
	sortTim(categories, /proc/cmp_name_asc, FALSE)

/datum/category_collection/Destroy()
	for(var/category in categories)
		qdel(category)
	categories.Cut()
	return ..()

/******************
* Category Groups *
******************/
/datum/category_group
	var/name = ""
	var/category_item_type						// The type of items to initialize
	var/list/datum/category_item/items			// The list of initialized items
	var/list/datum/category_item/items_by_name  // Associative list of initialised items, by name
	var/datum/category_collection/collection	// The collection this group belongs to

/datum/category_group/New(var/datum/category_collection/cc)
	..()
	collection = cc
	items = new()
	items_by_name = new()

	for(var/item_type in typesof(category_item_type))
		var/datum/category_item/item = item_type
		if(initial(item.name))
			item = new item(src)
			items += item
			items_by_name[item.name] = item

	// If you change this, confirm that character setup doesn't become completely unordered.
	sortTim(items, /proc/cmp_player_setup_group)

/datum/category_group/Destroy()
	for(var/item in items)
		qdel(item)
	items.Cut()
	collection = null
	return ..()

/*****************
* Category Items *
*****************/
/datum/category_item
	var/name = ""
	var/list/datum/category_group/category		// The group this item belongs to

/datum/category_item/New(var/datum/category_group/cg)
	..()
	category = cg

/datum/category_item/Destroy()
	category = null
	return ..()
