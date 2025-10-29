extends CanvasLayer

@onready var pause: CanvasLayer = $"."
@onready var color_rect: ColorRect = $ColorRect
@onready var label: Label = $Label
@onready var button: Button = $Button
@onready var button_2: Button = $Button2
var is_paused: bool = false 


func _ready() -> void:
	pause.visible = false 
	get_tree().paused = false 
	process_mode = Node.PROCESS_MODE_ALWAYS


func _process(delta: float) -> void:
	if Input.is_action_just_pressed ("ui_cancel"):
		nome()

func nome():
	is_paused = !is_paused
	
func _on_Sair_pressed() -> void:
	get_tree().paused = false
	get_tree().change_to_scene_to_file("res://cenas/Menu.tscn")
	
func _on_Voltar_pressed() -> void:
	nome()
