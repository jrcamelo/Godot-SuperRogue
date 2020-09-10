class_name Propulsion
extends Node2D

export var accel = 300
export var max_speed = 100
export var friction = 500

var movement: Vector2
var input: Vector2
var delta: float

func get_move_towards_input(_movement: Vector2, _input: Vector2, _delta):
	movement = _movement
	input = _input.normalized()
	delta = _delta
	
	if input == Vector2.ZERO:
		brake()
	else:
		accelerate()
		limit_to_max_speed()
	return movement

func accelerate():
	movement = movement.move_toward(input.normalized() * max_speed, delta * accel)
	print(movement)

func brake():
	movement = movement.move_toward(Vector2.ZERO, friction * delta)
	
func limit_to_max_speed():	
	if movement.length() > max_speed:
		movement = movement.normalized() * max_speed
