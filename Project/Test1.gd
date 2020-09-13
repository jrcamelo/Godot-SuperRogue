extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var meteor = preload("res://Meteor.tscn")
	var meteor_count = 0
	while meteor_count < 36:
		var spawn_position := (Vector2.UP.rotated(rand_range(0, PI * 2)) * rand_range(500, 10000))
		for child in get_children():
			if (spawn_position.distance_squared_to(child.position) < pow(50, 2)):
				continue
			var m = meteor.instance()
			m.global_position = spawn_position
			m.angular_velocity = randf() * 10
			var randsize = rand_range(0.5, 1)
			m.scale = Vector2(randsize, randsize)
			m.mass *= randsize
			add_child(m)
			break
		meteor_count += 1
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
