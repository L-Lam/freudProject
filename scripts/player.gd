extends Node2D


func _process(float) -> void:
	if Input.is_action_pressed("ui_left"):
		$AnimatedSprite2D.flip_h = true
		$AnimatedSprite2D.play("move")
		position.x -= 3
		
		
	elif Input.is_action_pressed("ui_right"):
		$AnimatedSprite2D.flip_h = false
		$AnimatedSprite2D.play("move")
		position.x += 3
		
		
	else:
		$AnimatedSprite2D.play("idle")
