extends Area2D

var showLabel = false
var Mainscene = load("res://Scenes/class_pov.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Label.visible = showLabel
	
	if showLabel && Input.is_action_just_pressed("interact"):
		#queue_free()
		get_tree().change_scene_to_packed(Mainscene)


func _on_body_entered(body: Node2D) -> void:
	if body is Player: showLabel = true


func _on_body_exited(body: Node2D) -> void:
	if body is Player: showLabel = false
