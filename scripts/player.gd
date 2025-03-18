extends Node2D


func _process(float) -> void:
	if Input.is_action_pressed("ui_left") and -9600 <= position.x:
		$AnimatedSprite2D.flip_h = true
		$AnimatedSprite2D.play("move")
		position.x -= 7
		
	elif Input.is_action_pressed("ui_right") and position.x <= 11520:
		$AnimatedSprite2D.flip_h = false
		$AnimatedSprite2D.play("move")
		position.x += 7
		
	elif Input.is_action_just_pressed("right_dash") and position.x <= 11520:
		$AnimatedSprite2D.flip_h = false
		position.x += 960
	
	elif Input.is_action_just_pressed("left_dash") and -9600 <= position.x:
		$AnimatedSprite2D.flip_h = true
		position.x -= 960

	else:
		$AnimatedSprite2D.play("idle")
		
	if position.x < 0:
		$PointLight2D.visible = true
	else:
		$PointLight2D.visible = false
