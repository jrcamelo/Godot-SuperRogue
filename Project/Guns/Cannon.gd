extends "res://Guns/Gun.gd"

onready var bullet = preload("res://Bullets/Arrow.tscn")

func setup():
	# firerate = 10
	pass
	
func create_bullet_instance():
	var b = Bullet.instance()
	b.SPEED = 1200
	b.DAMAGE = 2
	return b

func _on_Cooldown():
	can_shoot = true

func shoot_bullet(target):
	$RandomSFX.play_random()
	.shoot_bullet(target)
