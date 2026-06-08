extends VBoxContainer

class_name MyScrollBar

@export var MainScene: Node2D
@export var SpawnPos: Node2D

@export var scrollItems: Array[ScrollItem]


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	scrollItems.get(0).activar()
	scrollItems.get(1).activar()
	scrollItems.get(2).activar()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func activarScrollItem(itemID:int):
	scrollItems.get(itemID).activar()
