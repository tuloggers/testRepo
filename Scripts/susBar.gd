extends TextureProgressBar

func _ready() -> void:
	update()

func _on_right_help_pressed() -> void:
	update()
	SusMeter.Meter += 10

func _on_left_help_pressed() -> void:
	update()
	SusMeter.Meter += 10
	

func _on_timer_timeout() -> void:
	update()
	SusMeter.Meter -= 1
	print(SusMeter.Meter)

func update():
	value = SusMeter.Meter
	if SusMeter.Meter > SusMeter.maxMeter:
		SusMeter.Meter = 50
	elif SusMeter.Meter < SusMeter.minMeter:
		SusMeter.Meter = 0
