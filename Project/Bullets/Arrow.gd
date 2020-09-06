class_name Arrow
extends RigidBody2D

var shooter = null
export var SPEED = 750
export var DAMAGE = 1.0
func _ready():
	apply_impulse(Vector2(), Vector2(SPEED, 0).rotated(rotation))

func _on_body_entered(body):
	if (body != shooter):
		if (body is Character):
				body.was_hit(DAMAGE)
		queue_free()
