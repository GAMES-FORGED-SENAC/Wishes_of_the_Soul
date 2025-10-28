extends Node2D
var contador = 0


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://cenas/fase1.tscn")


func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://cenas/credits.tscn")


func _on_voltarcreditos_pressed() -> void:
	get_tree().change_scene_to_file("res://node_2d.tscn")


func _on_button_3_pressed() -> void:
	get_tree().quit()
