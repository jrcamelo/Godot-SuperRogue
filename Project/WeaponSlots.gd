class_name WeaponSlots
extends Node2D

export var slots_dict: Dictionary = {}

func _ready():
	save_slots_on_dict()
		
func save_slots_on_dict():	
	for child in get_children():
		if child is WeaponSlot:
			slots_dict[child.name] = child

func all_slots() -> Array:
	return slots_dict.values()
	
func enabled_slots() -> Array:
	var slots_enabled = []
	for s in all_slots():
		if (s as WeaponSlot).enabled == true:
			slots_enabled.append(s)
	return slots_enabled

func named_slot(name: String) -> WeaponSlot:
	return slots_dict.get(name)

func slot(n: int) -> WeaponSlot:
	if n <= slots_dict.size():
		return slots_dict.values()[n]
	return null





