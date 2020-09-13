class_name Arrow
extends RigidBody2D

var shooter = null
export var SPEED = 750
export var DAMAGE = 1.0
export var LIFETIME = 30

func _ready():
	apply_impulse(Vector2(), Vector2(SPEED, 0).rotated(rotation))
	mass *= DAMAGE

func _physics_process(delta):
	LIFETIME -= delta
	if (LIFETIME <= 0):
		queue_free()

func _on_body_entered(body):
	if body != shooter:
		if body is Character:
				body.was_hit(DAMAGE)
				if body.alive == true:
					queue_free()
		else:
			queue_free()
