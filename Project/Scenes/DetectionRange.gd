extends Area2D

func _on_body_entered(body):
	if body.name == "Player":
		get_parent().enemy_detected(body)


func _on_body_exited(body):
	if body.name == "Player":
		get_parent().enemy_left_range()
