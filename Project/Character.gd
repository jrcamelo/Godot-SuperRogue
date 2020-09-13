class_name Characterr
extends KinematicBody2D

var appearance: AppearanceManager = null
var detection = null
var equipment: EquipmentManager = null
var weapons: WeaponManager = null
var movement: MovementManager = null
var control: ControlManager = null
onready var collider_updater: ColliderUpdater = get_node("ColliderUpdater")

func _ready():
	create()
		
func create():
	appearance = preload("res://AppearanceBasic.tscn").instance()
	appearance.name = "Appearance"
	add_child(appearance, true)
	
	collider_updater.update_colliders(appearance.get_collider_children())
	
	detection = preload("res://CollidersBasic.tscn").instance()
	
	#equipment = Node2D.new()
	#equipment.set_script(EquipmentManager)
	
	
