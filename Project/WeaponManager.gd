class_name WeaponManager
extends Node2D

export var look_speed: float = 0.1

func look_at_direction(direction: Vector2):
	var start = rotation
	var angle_to_direction = Vector2(1, 0).rotated(start).angle_to(direction)
	var end = start + angle_to_direction
	$Tween.interpolate_property(self, 'rotation', start, end, look_speed, Tween.TRANS_QUAD, Tween.EASE_OUT)
	$Tween.start()

func shoot_all_weapons(target: Vector2):
	for slot in $Slots.enabled_slots():
		(slot as WeaponSlot).Weapon.shoot(target)
	
