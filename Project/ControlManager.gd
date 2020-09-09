class_name ControlManager
extends Node2D

onready var Controller = get_child(0) as CharacterController

func _on_DetectionRange_body_entered(body):
	print("A")
	Controller.character_entered_range(body)

func _on_DetectionRange_body_exited(body):
	Controller.character_left_range(body)
