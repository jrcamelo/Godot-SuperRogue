extends Character

signal camera_shaken(force)

var movement = Vector2.ZERO

onready var Body = get_node("Body")

onready var Weapons = get_node("Weapons")
onready var WeaponSlotLeft = get_node("Weapons/WeaponLeft")
onready var WeaponSlotRight = get_node("Weapons/WeaponRight")
onready var WeaponLeft = WeaponSlotLeft.get_child(0) as Gun
onready var WeaponRight = WeaponSlotRight.get_child(0) as Gun

onready var MachineGun = preload("res://Guns/MachineGun.tscn")
onready var Cannon = preload("res://Guns/Cannon.tscn")
onready var Shield = preload("res://Guns/Shield.tscn")

onready var list_weapons_left = [[Cannon, 0], [MachineGun, 0], [Shield, deg2rad(-90)]]
onready var list_weapons_right = [[Cannon, 0], [MachineGun, 0], [Shield, deg2rad(90)]]

var current_weapon_left = 0
var current_weapon_right = 0

func _physics_process(delta):
	move(delta)
	weapons(delta)
	
	if Input.is_action_pressed("space"):
		Engine.time_scale = 0.2
	else:
		Engine.time_scale = 1
	

func move(delta):	
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	input_vector.y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	
	movement = Body.move(movement, input_vector, delta)	
	movement = move_and_slide(movement)	

func weapons(delta):	
	rotate_weapons()
	control_left_weapon()
	control_right_weapon()
		
	if Input.is_action_just_pressed("z"):
		current_weapon_left = (current_weapon_left + 1) % list_weapons_left.size()
		var new_weapon = list_weapons_left[current_weapon_left]
		switch_weapon_left(new_weapon[0].instance(), new_weapon[1])
	if Input.is_action_just_pressed("x"):
		current_weapon_right = (current_weapon_right + 1) % list_weapons_right.size()
		var new_weapon = list_weapons_right[current_weapon_right]
		switch_weapon_right(new_weapon[0].instance(), new_weapon[1])

func rotate_weapons():
	Weapons.look_at(get_global_mouse_position())
	Weapons.rotate(-1.5708)
	
func control_left_weapon():	
	if WeaponLeft != null:
		if Input.is_action_pressed("left_click"):
			shoot(WeaponLeft)	

func control_right_weapon():	
	if WeaponRight != null:
		if Input.is_action_pressed("right_click"):
			shoot(WeaponRight)	

func shoot(weapon):
	var force = weapon.shoot(get_global_mouse_position())
	if force > 0:
		emit_signal("camera_shaken", force)
	
func switch_weapon_left(new_weapon, rotate = 0):
	WeaponSlotLeft.add_child(new_weapon)
	new_weapon.rotation = rotate
	if WeaponLeft != null:
		WeaponLeft.queue_free()
	WeaponLeft = new_weapon
	
func switch_weapon_right(new_weapon, rotate = 0):
	WeaponSlotRight.add_child(new_weapon)
	new_weapon.rotation = rotate
	if WeaponRight != null:
		WeaponRight.queue_free()
	WeaponRight = new_weapon
	
func was_hit(damage):
	get_tree().reload_current_scene()
	
