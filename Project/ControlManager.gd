class_name ControlManager
extends Node2D

var root = null
var equipment: EquipmentManager

var controller: CharacterController

func _init(_root, _equipment):
	root = _root
	equipment = _equipment

func _ready():	
	if get_child_count() > 0:
		controller = get_child(0) as CharacterController
		controller.initialize(equipment)
		

func add_controller(_controller: CharacterController):
	controller = _controller
	controller.root = root
	controller.initialize(equipment)
	print(equipment)
	add_child(controller)

func _on_DetectionRange_body_entered(body):
	controller.character_entered_range(body)

func _on_DetectionRange_body_exited(body):
	controller.character_left_range(body)
	
func _on_was_hit(damage):
	controller.was_hit(damage)
