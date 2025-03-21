extends Camera2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var player = $"../Player"
	
	if player.position.x < 0:
		position.x = player.position.x - 1620
	elif 0 <= player.position.x and player.position.x < 1920:
		position.x = 0
	else:
		position.x = player.position.x - 300
