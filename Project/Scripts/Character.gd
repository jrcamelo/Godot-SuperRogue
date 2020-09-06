class_name Character
extends KinematicBody2D

var health = 5
func was_hit(damage):
	health -= damage
	if health <= 0:
		queue_free()
