class_name Character
extends KinematicBody2D

export var health = 5
export var alive: bool = true

export var movement: Vector2 = Vector2.ZERO

func was_hit(damage):
	health -= damage
	if health <= 0:
		alive = false
		queue_free()
