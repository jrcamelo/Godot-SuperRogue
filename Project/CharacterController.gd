class_name CharacterController
extends Node2D

# onready var Body = get_parent().get_parent() as KinematicBody2D
# onready var Equipment = get_parent().get_parent().get_node("Equipment") as EquipmentManager
# onready var Status = get_parent().get_parent().get_node("Status") as StatusManager
# onready var Colliders = get_parent().get_parent().get_node("Colliders")
# onready var DetectionRange = Colliders.get_node("DetectionRange") as Area2D
# onready var DetectionShape = DetectionRange.get_child(0) as CollisionShape2D
# onready var Weapons = Equipment.Weapons as WeaponManager
# onready var Movement = Equipment.Movement as MovementManager

func character_entered_range(character):
	pass

func character_left_range(character):
	pass
