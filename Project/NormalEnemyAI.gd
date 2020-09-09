extends CharacterController

onready var Body = get_parent().get_parent() as KinematicBody2D
onready var Equipment = get_parent().get_parent().get_node("Equipment") as EquipmentManager
onready var Status = get_parent().get_parent().get_node("Status") as StatusManager
onready var Colliders = get_parent().get_parent().get_node("Colliders")
onready var DetectionRange = Colliders.get_node("DetectionRange") as Area2D
onready var DetectionShape = DetectionRange.get_child(0) as CollisionShape2D
onready var Weapons = Equipment.Weapons as WeaponManager
onready var Movement = Equipment.Movement as MovementManager

var delta: float = 0.0

var target: KinematicBody2D = null
var distance_to_target: float = 0
var direction_to_target: Vector2

export var keep_distance = 500
export var maximum_shoot_distance = 1000

func _physics_process(_delta):
	delta = _delta
	if not Status.alive:
		return
		
	if target != null:
		update_distance_to_target()
		follow_target()
		look_at_target()
		shoot_at_target()
	else:
		stop_moving()
		
func update_distance_to_target():
	var to_target = compare_positions_to_vector(target)
	distance_to_target = to_target.length()
	direction_to_target = to_target.normalized()
	
func compare_positions_to_vector(vector) -> Vector2:
	return vector.global_position - Body.global_position

func look_at_target():
	Weapons.look_at_direction(direction_to_target)

func follow_target():
	var input = direction_to_target
	if distance_to_target <= keep_distance:
		input = -direction_to_target
	Movement.move_towards_input(input, delta)
	
func shoot_at_target():
	if distance_to_target <= maximum_shoot_distance:
		Weapons.shoot_all_weapons(target.global_position)
	
func stop_moving():
	Movement.move_towards_input(Vector2.ZERO, delta)
	
func character_entered_range(character):
	if character.name == "Player":
		target = character
		
func character_left_range(_character):
	target = null
	

	
