class_name Propulsion
extends Node2D

export var accel = 300
export var max_speed = 100
export var friction = 500

func get_move_towards_input(movement: Vector2, input: Vector2, delta):
	if input == Vector2.ZERO:
		return get_brake(movement, delta)
	return movement.move_toward(input * max_speed, accel * delta)

func get_brake(movement: Vector2, delta):
	return movement.move_toward(Vector2.ZERO, friction * delta)
