class_name WeaponManager
extends Node2D

var root = null
var slots: WeaponSlots = null
var tween: Tween = null

export var look_speed: float = 0.1

func _ready():
	if get_child_count() >= 2:
		slots = get_node("Slots") as WeaponSlots
		tween = get_node("Tween") as Tween
	else:
		create_slots()
		create_tween()
		
func create_slots():
	slots = WeaponSlots.new()
	slots.name = "Slots"
	slots.root = root
	add_child(slots)
	
func create_tween():
	tween = Tween.new()
	tween.name = "Tween"
	add_child(tween)

func look_at_direction(direction: Vector2):
	if tween.is_active():
		return
	var start = rotation
	var angle_to_direction = Vector2(1, 0).rotated(start).angle_to(direction)
	var end = start + angle_to_direction
	tween.interpolate_property(self, 'rotation', start, end, look_speed, Tween.TRANS_QUAD, Tween.EASE_OUT)
	tween.start()

func shoot_all_weapons(target: Vector2):
	if slots == null:
		return
	for slot in slots.enabled_slots():
		(slot as WeaponSlot).weapon.shoot(target)
		
	
