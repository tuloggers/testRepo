extends Label

func _ready() -> void:
	connect("mouse_entered", mouseEntered)

func mouseEntered() -> void:
	$"../arrow".position.y = position.y
