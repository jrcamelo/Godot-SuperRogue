class_name EquipmentManager
extends Node2D

var root = null
var weapons: WeaponManager = null
var movement: MovementManager = null

func _init(_root):
	root = _root

func _ready():
	weapons = WeaponManager.new()
	weapons.name = "Weapons"
	weapons.root = root
	add_child(weapons)
	
	movement = MovementManager.new()
	movement.name = "Movement"
	movement.body = root as KinematicBody2D
	add_child(movement)
	
	
