extends Camera2D

onready var Player = get_parent().get_node("Player")
const MOVE_SPEED = 0.05

var is_shaking = false
export var shake_power = 0.0
export var shake_time = 0.0

var current_position
var elapsed_time = 0

func _ready():
	visible = true
	current_position = offset

func _physics_process(delta):
	var dir = (Player.global_position - global_position)
	global_position += (dir.move_toward(Player.global_position, delta)) * MOVE_SPEED
	
	if is_shaking:
		shake(delta)  

func shake(delta):
	if elapsed_time < shake_time:
		offset =  Vector2(randf(), randf()) * shake_power
		elapsed_time += delta
	else:
		is_shaking = false
		elapsed_time = 0
		shake_power = 0
		shake_time = 0
		offset = current_position
		
func _on_shake(force):
	is_shaking = true
	shake_power = max(force, shake_power) + shake_power / 10
	shake_time = max(force / 15, shake_time)
