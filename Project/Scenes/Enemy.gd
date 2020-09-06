extends Character

onready var Weapons = get_node("Weapons")
onready var WeaponSlot = get_node("Weapons/Weapon")
onready var Weapon = WeaponSlot.get_child(0) as Gun
onready var Body = get_node("Body")
onready var DetectionRange = get_node("DetectionRange/DetectionCollider")

var movement = Vector2.ZERO
export var keep_distance = 100
export var maximum_distance = 600
export var shooting_distance = 500
export var kite_distance = 200
export var kite_direction = Vector2(2, 0)
var current_distance = 0
var direction: Vector2

var dodge_direction: Vector2
var dodge_amount = 5
var dodge_speed = 10
var dodging = 0

var target: KinematicBody2D = null
var target_point: Vector2
var last_prediction: Vector2
var aim_speed = 25
var guess_min_speed = 75
var guess_max_speed = 125

func _physics_process(delta):
	if target != null:		
		calculate_distance()
		if target != null:
			deal_with_target(delta)
	if dodging > 0:
		try_dodge(delta)
	elif target == null:
		stop_moving(delta)
		
func deal_with_target(delta):
	calculate_distance()
	predict_target_location()
	update_target_location()
	look_at_target()
	if dodging == 0:
		follow_player_at_distance(delta)
	shoot(delta)

func calculate_distance():
	var to_player: Vector2 = target.global_position - global_position
	current_distance = to_player.length()
	direction = to_player.normalized()
	
func predict_target_location():
	if (target.name != "Player"):
		last_prediction = target.global_position
		return
	var guess_speed = rand_range(guess_min_speed, guess_max_speed)
	var guess_position = target.movement.normalized() * guess_speed
	last_prediction = target.global_position + guess_position
	
func update_target_location():
	if target_point == Vector2():
		target_point = last_prediction
	target_point = target_point.move_toward(last_prediction, aim_speed)

func look_at_target():
	Weapons.look_at(target_point)
	Weapons.rotate(-190)
	
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
	movement = Body.move(movement, Vector2.ZERO, delta)
	movement = move_and_slide(movement)

func try_dodge(delta):
	dodging -= 1
	movement = Body.move(movement, dodge_direction, delta * dodge_speed)
	movement = move_and_slide(movement)	

func shoot(delta):
	if current_distance < shooting_distance:
		Weapon.shoot(target_point)

func forget_target_if_too_far():
	if (current_distance > maximum_distance):
		target = null
		Weapon.Cooldown.stop()

func enemy_detected(enemy):
	target = enemy
	Weapon.can_shoot = false
	Weapon.Cooldown.start()
	
func was_hit(damage):
	$Particles2D.restart()
	DetectionRange.transform.x *= 1.5
	DetectionRange.transform.y *= 1.5
	maximum_distance *= 1.5
	.was_hit(damage)

func bullet_detected(bullet):
	dodging = dodge_amount
	var incoming = bullet.global_position - global_position
	var incoming_angle = bullet.global_position.angle_to_point(global_position)
	dodge_direction = incoming.normalized().rotated(deg2rad(rand_range(-60, -120)))
	
	

	
