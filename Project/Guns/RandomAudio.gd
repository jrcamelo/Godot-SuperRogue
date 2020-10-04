extends AudioStreamPlayer2D

export (Array, Resource) var sounds
export var sound_offset := 0.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func play_random():
	var random = rand_range(0, sounds.size())
	stream = sounds[random]
	play(0.01)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
