extends Node2D

class_name Item

var MouseInside: bool
var Attached: bool
@export var ItemID: int
var JustDesattached: bool =false
@export var ItemImage: Texture
@export var Texto: String

#Referencias
@export var MySprite: Sprite2D
@export var MyLabel: Label
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	MyLabel.text = Texto
	MySprite.texture = ItemImage
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Attached:
		global_position = get_global_mouse_position()
	JustDesattached=false



#Detecta el ratón para 'activar' el input
func _on_area_2d_mouse_entered() -> void:
	MouseInside = true
	pass
func _on_area_2d_mouse_exited() -> void:
	MouseInside = false
	pass 
#Evento click
func _input(event):
	if event.is_action_pressed("Click"):
		if MouseInside and !GameInstance.ItemDrag:
			if Attached==false:
				Attached = true
				GameInstance.ItemDrag=true
			else:
				Attached=false
				GameInstance.ItemDrag=false
	if event.is_action_released("Click"):
		if Attached:
			Attached= false
			GameInstance.ItemDrag=false
			JustDesattached=true


func positionate(givenPosition):
	global_position = givenPosition
	pass
