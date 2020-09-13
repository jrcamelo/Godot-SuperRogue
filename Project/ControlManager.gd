class_name ControlManager
extends Node2D

var root = null
var controller: CharacterController

func _init(_root):
	root = _root

func _ready():
	if get_child_count() > 0:
		controller = get_child(0) as CharacterController

func add_controller(_controller: CharacterController):
	controller = _controller
	controller.root = root
	add_child(controller)

func _on_DetectionRange_body_entered(body):
	controller.character_entered_range(body)

func _on_DetectionRange_body_exited(body):
	controller.character_left_range(body)
