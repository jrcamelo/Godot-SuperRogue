class_name AppearanceManager
extends Node2D

onready var sprite = get_node("Sprite")
onready var collider = get_node("Collider")
onready var slots = get_node("Slots")

func get_sprite_children():
	return sprite.get_children()

func get_collider_children():
	return collider.get_children()

func get_slots_children():
	return slots.get_children()

