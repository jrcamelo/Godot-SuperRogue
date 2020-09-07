#NormalBody
extends Sprite

export var MAX_SPEED = 350
export var ACCEL = 3500
export var FRICTION = 5000

func move(movement, input_vector, delta):
	# print(movement.length())
	if input_vector != Vector2.ZERO:
		return movement.move_toward(input_vector * MAX_SPEED, ACCEL * delta)
	return  movement.move_toward(Vector2.ZERO, FRICTION * delta)
