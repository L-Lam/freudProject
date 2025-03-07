extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print($AnimatedSprite2D.get_children())

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if Input.is_action_pressed("left"):
		$AnimatedSprite2D.flip_h = true
		$AnimatedSprite2D.play("move")
	elif Input.is_action_pressed("right"):
		$AnimatedSprite2D.flip_h = false
		$AnimatedSprite2D.play("move")
	else:
		$AnimatedSprite2D.play("idle")
