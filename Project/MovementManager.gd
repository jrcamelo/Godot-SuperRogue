class_name MovementManager
extends Node2D

var Propulsor: Propulsion = null
var Body: KinematicBody2D = null
export var movement: Vector2 = Vector2.ZERO

func _ready():
	Propulsor = find_propulsor_in_children()
	Body = find_kinematic_body_in_parent()
	
func find_propulsor_in_children():
	if get_child_count() > 0:
		return get_child(0)
	return null
	
func find_kinematic_body_in_parent():
	var equipments = get_parent()
	var root = equipments.get_parent()
	return root
		
func add_new_propulsion(new_propulsion: Propulsion):	
	if Propulsor != null:
		Propulsor.queue_free()
	Propulsor = new_propulsion
	add_child(Propulsor)
	
func move_towards_input(input: Vector2, delta):
	if Propulsor == null or Body == null:
		return
	movement = Propulsor.get_move_towards_input(movement, input, delta)
	movement = Body.move_and_slide(movement)


