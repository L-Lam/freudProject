extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_key_pressed(KEY_ESCAPE):
		get_tree().quit()
		
	if $Player.position.x < 0 and $DirectionalLight2D.energy > 1:
		for i in range(20):
			$DirectionalLight2D.energy -= 0.1
	elif $Player.position.x >= 0 and $DirectionalLight2D.energy < 3:
		for i in range(20):
			$DirectionalLight2D.energy += 0.1


func _on_window_close_requested() -> void:
	pass # Replace with function body.
