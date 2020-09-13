class_name WeaponSlot
extends Node2D

export var enabled = false
var Weapon: Gun = null

func _ready():
	if get_child_count() > 0:
		if get_child(0) is Gun:
			Weapon = get_child(0)
	if Weapon != null:
		enabled = true
		Weapon.parent = get_parent().get_parent().get_parent().get_parent()

func add_weapon(new_weapon: Gun):
	if Weapon != null:
		remove_weapon()
	Weapon = new_weapon
	Weapon.parent = get_parent().get_parent().get_parent().get_parent()
	add_child(new_weapon)
	enabled = true
		
func remove_weapon():
	if Weapon != null:
		Weapon.queue_free()
		enabled = false
	
