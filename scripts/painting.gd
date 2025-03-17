extends Node2D

const click = preload("res://assets/cursor.png")

func _ready() -> void:
	$Window.hide()

	
func _on_window_close_requested() -> void:
	$Window.hide()


func _on_button_pressed() -> void:
	$Window.hide()
	$Window.show()


func _on_button_mouse_exited() -> void:
	Input.set_custom_mouse_cursor(null)


func _on_button_mouse_entered() -> void:
	Input.set_custom_mouse_cursor(click)
