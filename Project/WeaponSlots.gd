class_name WeaponSlots
extends Node2D

export var slots_dict: Dictionary = {}

func _ready():
	save_slots_on_dict()
		
func save_slots_on_dict():
	slots_dict.clear()
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

func add_slots_from_appearance(appearance_slots):
	for node in appearance_slots:
		var new_slot = WeaponSlot.new()
		new_slot.position = node.position
		new_slot.name = node.name
		add_child(new_slot)
	save_slots_on_dict()
	print(slots_dict)
	




