extends Sprite2D

var MouseInside: bool
var Attached: bool


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Attached:
		global_position = get_global_mouse_position()
	pass


func _input(event):
	if event.is_action_pressed("Click"):
		if MouseInside:
			if Attached==false:
				Attached = true
			else:
				Attached=false

func _on_area_2d_mouse_entered() -> void:
	MouseInside = true
	pass # Replace with function body.


func _on_area_2d_mouse_exited() -> void:
	MouseInside = false
	pass # Replace with function body.
