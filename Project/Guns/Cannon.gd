extends "res://Guns/Gun.gd"

func setup():
	Bullet = preload("res://Bullets/Arrow.tscn")
	# firerate = 10
	pass
	
func create_bullet_instance():
	var bullet = Bullet.instance()
	bullet.SPEED = 1000
	bullet.DAMAGE = 1
	return bullet

func _on_Cooldown():
	can_shoot = true