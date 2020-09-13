class_name WeaponManager
extends Node2D

var slots: WeaponSlots = null

export var look_speed: float = 0.1

func _ready():
	if get_child_count() > 0:
		slots = get_child(0) as WeaponSlots
	else:
		create_slots()
		
func create_slots():
	slots = WeaponSlots.new()
	slots.name = "Slots"
	add_child(slots)

func look_at_direction(direction: Vector2):
	var start = rotation
	var angle_to_direction = Vector2(1, 0).rotated(start).angle_to(direction)
	var end = start + angle_to_direction
	$Tween.interpolate_property(self, 'rotation', start, end, look_speed, Tween.TRANS_QUAD, Tween.EASE_OUT)
	$Tween.start()

func shoot_all_weapons(target: Vector2):
	if slots == null:
		return
	for slot in slots.enabled_slots():
		(slot as WeaponSlot).Weapon.shoot(target)
		
	
