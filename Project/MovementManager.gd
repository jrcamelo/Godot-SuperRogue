class_name MovementManager
extends Node2D

var propulsor: Propulsion = null
var body: KinematicBody2D = null
export var movement: Vector2 = Vector2.ZERO

func _ready():
	propulsor = find_propulsor_in_children()

func find_propulsor_in_children():
	if get_child_count() > 0:
		return get_child(0)
	return null

func add_new_propulsion(new_propulsion: Propulsion):	
	if propulsor != null:
		propulsor.queue_free()
	propulsor = new_propulsion
	add_child(propulsor)
	
func move_towards_input(input: Vector2, delta):
	if propulsor == null or body == null:
		return
	movement = propulsor.get_move_towards_input(movement, input, delta)
	movement = body.move_and_slide(movement)


