extends RigidBody2D

const SPEED = 80
func _ready():
	apply_impulse(Vector2(), Vector2(SPEED, 0).rotated(rotation))
