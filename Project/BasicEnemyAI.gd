extends CharacterController

onready var whiskers := get_node("Whiskers") as Node2D
onready var character_detection := get_node("CharacterDetection") as Area2D
onready var shooting_range := get_node("ShootingRange") as Area2D

export var whisker_dodge_duration := 0.25
var whisker_dodging := 0.0
var collision_to_avoid
var direction_to_avoid_collision := Vector2.ZERO


func process():
	.process()
	
	update_whiskers_closest_collision()
	update_direction_to_avoid_collision()
	equipment.movement.move_towards_input(direction_to_avoid_collision, delta * (direction_to_avoid_collision.length() + 1))
		

func update_whiskers_closest_collision():	
	if whisker_dodging > 0:
		return
		
	whiskers.rotation += delta *11 * PI
	collision_to_avoid = check_whiskers()
	
func check_whiskers():
	var closest_collision = null
	for ray in whiskers.get_children():
		ray = ray as RayCast2D
		if ray.is_colliding():
			var collision_point = ray.get_collision_point() - global_position
			if closest_collision == null:
				closest_collision = collision_point
			elif collision_point.length() < closest_collision.length():
					closest_collision = collision_point
	return closest_collision
	
func update_direction_to_avoid_collision():
	if whisker_dodging > 0:
		whisker_dodging -= delta
		return

	if collision_to_avoid == null:
		direction_to_avoid_collision = Vector2.ZERO
		return
	
	var random_angle = deg2rad(45)
	if randf() < 0.5:
		random_angle = deg2rad(-45)
	direction_to_avoid_collision = -collision_to_avoid.normalized().rotated(random_angle)
	whisker_dodging = whisker_dodge_duration

