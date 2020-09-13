extends Node2D
class_name ColliderUpdater

var colliders = []
onready var root = get_parent()

func _ready():
	colliders.append(root.get_node("DefaultCollider"))

func update_colliders(appearance_collider_list):
	var new_colliders = []
	for appearance_col in appearance_collider_list:
		var new_col = appearance_col.duplicate()
		new_colliders.append(new_col)
		root.add_child_below_node(self, new_col)
	for old_col in colliders:
		old_col.queue_free()
	colliders = new_colliders
	
