class_name Characterr
extends KinematicBody2D

var appearance: AppearanceManager = null
# var detection = null
var equipment: EquipmentManager = null
# var weapons: WeaponManager = null
# var movement: MovementManager = null
var control: ControlManager = null

export (PackedScene) var appearance_path
export (PackedScene) var controller_path
export (Array, PackedScene) var weapon_paths
export (PackedScene) var propulsion_path

export var health = 5

onready var collider_updater: ColliderUpdater = get_node("ColliderUpdater")

signal was_hit()

func _ready():
	create()
		
func create():
	set_appearance_scene(appearance_path)
	create_equipment_manager()
	set_weapon_slots()
	set_weapons(weapon_paths)
	set_propulsion(propulsion_path)
	
	create_control_manager()
	set_controller_scene(controller_path)
	
	# detection = preload("res://CollidersBasic.tscn").instance()
	#set_detection(preload("res://CollidersBasic.tscn").instance())
	

	
func set_appearance_scene(appearance_scene: PackedScene):
	appearance = appearance_scene.instance()
	appearance.name = "Appearance"
	add_child(appearance, true)
	collider_updater.update_colliders(appearance.get_collider_children())	
	
func create_equipment_manager():
	equipment = EquipmentManager.new(self)
	equipment.name = "Equipment"
	add_child(equipment)

func set_weapon_slots():
	var appearance_slots = appearance.get_slots_children()
	equipment.weapons.slots.add_slots_from_appearance(appearance_slots)

func set_weapons(_weapon_paths):
	var i = 0
	for w_path in _weapon_paths:
		if w_path == null:
			i += 1
			continue
		var weapon = w_path.instance()
		var slot = equipment.weapons.slots.slot(i)
		if slot != null:
			slot.add_weapon(weapon)
		i += 1

func set_propulsion(_propulsion_path):
	var propulsion = propulsion_path.instance()
	equipment.movement.add_new_propulsion(propulsion)
	
func create_control_manager():
	control = ControlManager.new(self, equipment)
	control.name = "Control"
	add_child(control)
	connect("was_hit", control, "_on_was_hit")
	
func set_controller_scene(controller_scene: PackedScene):
	var controller = controller_scene.instance()
	control.add_controller(controller_scene.instance())
	
func was_hit(damage):
	emit_signal("was_hit", damage)
	$RandomHurtSFX.play_random()
	health -= damage
	if health <= 0:
		queue_free()

	
	
	
