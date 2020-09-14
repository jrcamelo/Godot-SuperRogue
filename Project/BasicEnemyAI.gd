extends CharacterController

onready var whiskers := get_node("Whiskers") as Node2D
onready var character_detection := get_node("CharacterDetection") as Area2D
onready var shooting_range := get_node("ShootingRange") as Area2D

var collision_to_avoid # Vector2 but can be null
var direction_to_avoid_collision := Vector2.ZERO
export var whisker_dodge_duration := 0.25
var whisker_dodging := 0.0

var target: Node2D = null
var target_direction := Vector2.ZERO

func process():
	.process()
	
	update_whiskers_closest_collision()
	update_direction_to_avoid_collision()
	
	if target:
		update_target_direction()
		aim_at_target()
		shoot_all_weapons()
	
	
	equipment.movement.move_towards_input(direction_to_avoid_collision, delta * (direction_to_avoid_collision.length() + 1))
		

func update_whiskers_closest_collision():	
	if whisker_dodging > 0:
		return
		
	whiskers.rotation += delta * 11 * PI
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

func update_target_direction():
	target_direction = (target.global_position - global_position).normalized()

func aim_at_target():
	equipment.weapons.look_at_direction(target_direction)

func shoot_all_weapons():
	equipment.weapons.shoot_all_weapons(target.global_position)

func _on_CharacterDetection_body_entered(body):
	if body.name == "Player":
		on_target_found(body)

func _on_CharacterDetection_body_exited(body):
	if body == target:
		on_target_lost(body)
		
func on_target_found(body):
	target = body
	character_detection.scale = Vector2(1.75, 1.5)
		
func on_target_lost(body):
	target = null
	character_detection.scale = Vector2(1.5, 1.0)
		
