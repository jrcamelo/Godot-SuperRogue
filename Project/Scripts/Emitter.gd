extends Node2D

func _ready():
	$Player.connect("camera_shaken", $Camera2D, "_on_shake")
