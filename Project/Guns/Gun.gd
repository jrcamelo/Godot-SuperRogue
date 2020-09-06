class_name Gun
extends Sprite

export onready var parent = get_parent().get_parent().get_parent()
export onready var ShootingPoint = get_node("ShootingPoint")
export onready var Cooldown: Timer = get_node("Cooldown")
export var Bullet = preload("res://Bullets/Arrow.tscn")
export var camera_force = 0.1
var can_shoot = false

func _init():
	setup()

func setup():
	pass
	
func shoot(target):
	if can_shoot:
		can_shoot = false
		Cooldown.start()
		shoot_bullet(target)
		return camera_force
	return 0
		
func shoot_bullet(target):
	var bullet = create_bullet_instance()
	bullet.shooter = parent
	bullet.position = ShootingPoint.get_global_transform().origin
	bullet.rotation = parent.get_angle_to(target)
	parent.get_parent().add_child(bullet)

func create_bullet_instance():
	return Bullet.instance()
