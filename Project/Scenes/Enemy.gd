extends Character

onready var Weapons = get_node("Weapons")
onready var WeaponSlot = get_node("Weapons/Weapon")
onready var Weapon = WeaponSlot.get_child(0) as Gun
onready var Body = get_node("Body")
onready var DetectionRange = get_node("DetectionRange/DetectionCollider")

export var keep_distance = 100
export var shooting_distance = 500
export var detection_increase_when_hit = 0.25
export var kite_distance = 200
export var kite_direction = Vector2(2, 0)
var current_distance = 0
var direction: Vector2

var dodge_direction: Vector2
var dodge_time = 0.02
var dodge_speed = 50
var dodging = 0

var target: KinematicBody2D = null
var target_point: Vector2
var last_prediction: Vector2
var aim_speed = 20
var guess_min_speed = 80
var guess_max_speed = 100
var guess_speed = 0
var chance_to_not_guess = 0.1

func _physics_process(delta):
	if not alive:
		stop_moving(delta)
		return
		
	if target != null:		
		update_distance_to_player()
		if target != null:
			deal_with_target(delta)
	if dodging > 0:
		try_dodge(delta)
	elif target == null:
		stop_moving(delta)
		
func deal_with_target(delta):
	predict_target_location()
	update_target_location()
	look_at_target()
	if dodging <= 0:
		follow_player_at_distance(delta)
	if shoot(delta):
		update_guess_speed()

func update_distance_to_player():
	var to_player = compare_positions_to_vector(target)
	current_distance = to_player.length()
	direction = to_player.normalized()
	
func compare_positions_to_vector(vector) -> Vector2:
	return vector.global_position - global_position
	
func update_guess_speed():
	guess_speed = rand_range(guess_min_speed, guess_max_speed)
	if randf() > 1 - chance_to_not_guess:
		guess_speed = 0
	
func predict_target_location():
	if !(target is Character):
		print("not")
		last_prediction = target.global_position
		return
		
	var guess_position = target.movement.normalized() * guess_speed
	last_prediction = target.global_position + guess_position	
	
func update_target_location():
	if target_point == Vector2():
		target_point = last_prediction
	target_point = target_point.move_toward(last_prediction, aim_speed)

func look_at_target():
	Weapons.look_at(target_point)
	
func follow_player_at_distance(delta):
	if current_distance - kite_distance < keep_distance:
		movement = Body.move(movement, kite_direction - direction, delta)
		movement = move_and_slide(movement)
	elif current_distance > keep_distance:
		movement = Body.move(movement, direction, delta)
		movement = move_and_slide(movement)
	else:
		stop_moving(delta)
	
func stop_moving(delta):
	if movement == Vector2.ZERO:
		return
	movement = Body.move(movement, Vector2.ZERO, delta)
	movement = move_and_slide(movement)

func try_dodge(delta):
	dodging -= delta
	movement = Body.move(movement, dodge_direction.normalized(), delta * dodge_speed)
	movement = move_and_slide(movement)	

func shoot(delta):
	if current_distance < shooting_distance:
		return Weapon.shoot(target_point) > 0
	return false

func enemy_detected(enemy):
	if not alive:
		return
	target = enemy
	increase_detection_range()
	if $FirstShot != null:
		can_shoot(false)
		$FirstShot.start()
	else:
		can_shoot(true)
	
func enemy_left_range():
	if not alive:
		return
	target = null
	can_shoot(false)
	
func was_hit(damage):
	if not alive:
		return
	$Particles2D.restart()
	increase_detection_range()
	health -= damage
	if health <= 0:
		alive = false
		Weapon.queue_free()
	#.was_hit(damage)
	
func increase_detection_range():
	DetectionRange.transform.x *= 1 + detection_increase_when_hit
	DetectionRange.transform.y *= 1 + detection_increase_when_hit

func estimate_position(vector, angle, length):
	return Vector2(length * cos(angle) + vector.x, length * sin(angle) + vector.y)

func bullet_detected(bullet: RigidBody2D):
	if alive and dodging <= 0:
		set_dodge_direction(bullet)

func geometry(a: Vector2, b: Vector2, direction):
	var c = Vector2.ZERO
	c.x = a.x + (b.x - a.x) * cos(deg2rad(52 * direction)) - (b.y - a.y) * sin(deg2rad(52 * direction))
	c.y = a.y + (b.x - a.x) * sin(deg2rad(52 * direction)) + (b.y - a.y) * cos(deg2rad(52 * direction))
	return c
	

func set_dodge_direction(bullet: RigidBody2D):
	dodging = dodge_time
	
	var bullet_future = bullet.global_position + (bullet.linear_velocity.normalized() * 200)
	var bullet_future_angle = global_position.angle_to_point(bullet_future)
	
	var safe_right = geometry(bullet.global_position, bullet_future, 1)
	var safe_left = geometry(bullet.global_position, bullet_future, -1)
	
	var guess_safe = safe_right
	if (global_position - safe_right).length() < (global_position - safe_left).length():
		guess_safe = safe_left
		
	dodge_direction = (global_position - guess_safe).normalized() * 300
	#add_test(global_position + dodge_direction)
	
	
func add_test(pos):
	var test = preload("res://TestSquare.tscn").instance() as Node2D
	test.global_position = pos
	get_parent().add_child(test)
	
	
func random_positive_or_negative():
	if (randf() > 0.5):
		return 1
	return -1


func _on_FirstShot_timeout():
	can_shoot(true)

func can_shoot(can: bool = true):
	if Weapon == null:
		return
	Weapon.can_shoot = can
	if can:
		Weapon.Cooldown.start()
	else:
		Weapon.Cooldown.stop()
		
	
