extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_button_pressed() -> void:
	print("I am Clicked")
	get_tree().change_scene_to_file("res://Scenes/class_pov.tscn")


func _on_line_edit_text_submitted(new_text: String) -> void:
	print(new_text)
