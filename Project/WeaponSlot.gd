class_name WeaponSlot
extends Node2D

var root = null
export var enabled = false
var weapon: Gun = null

func _ready():
	if get_child_count() > 0:
		if get_child(0) is Gun:
			weapon = get_child(0)
	if weapon != null:
		enabled = true
		weapon.parent = get_parent().get_parent().get_parent().get_parent()

func add_weapon(new_weapon: Gun):
	if weapon != null:
		remove_weapon()
	weapon = new_weapon
	weapon.parent = root
	add_child(new_weapon)
	enabled = true
	# TODO: Remove
	weapon.parent = root
		
func remove_weapon():
	if weapon != null:
		weapon.queue_free()
		enabled = false
	
