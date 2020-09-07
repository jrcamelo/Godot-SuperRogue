class_name Character
extends KinematicBody2D

export var health = 5
export var alive = true

func was_hit(damage):
	health -= damage
	if health <= 0:
		alive = false
		queue_free()
