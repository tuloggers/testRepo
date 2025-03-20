extends Camera2D

class_name panCam

func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	pass
	


func _on_far_left_mouse_shape_entered(shape_idx: int) -> void:
	print("entered")
	$".".position.x -= 150
	


func _on_near_left_mouse_shape_entered(shape_idx: int) -> void:
	print("enteredNL")
	$".".position.x -= 75


func _on_far_right_mouse_shape_entered(shape_idx: int) -> void:
	print("enteredFR")
	$".".position.x += 150


func _on_near_right_mouse_shape_entered(shape_idx: int) -> void:
	print("enteredNR")
	$".".position.x += 75


func _on_button_pressed() -> void:
	print("I am Clicked boom")
	get_tree().change_scene_to_file("res://Scenes/quizui.tscn")


func _on_left_help_pressed() -> void:
	print("I got Clicked")
	


func _on_right_help_pressed() -> void:
	print("I got Clicked")
	


func _on_platform_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/platformer.tscn")
