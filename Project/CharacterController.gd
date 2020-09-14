class_name CharacterController
extends Node2D

var delta := 0.0
var active = false

var root = null
var equipment: EquipmentManager = null

func initialize(_equipment: EquipmentManager, _active = true):
	equipment = _equipment	
	active = _active

func _physics_process(_delta):
	if equipment == null:
		return
	if equipment.weapons == null or equipment.movement == null:
		return
	if not active:
		return inactive()
	
	delta = _delta	
	process()
	
func inactive():
	return
	
func process():
	return
