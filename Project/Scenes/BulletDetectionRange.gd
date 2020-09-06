extends Area2D

func _on_body_entered(body):
	if body is Arrow:
		if body.shooter != null and body.shooter != get_parent():
			get_parent().bullet_detected(body)
