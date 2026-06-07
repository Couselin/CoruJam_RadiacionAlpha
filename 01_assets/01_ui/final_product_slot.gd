extends Node2D

class_name ResultSlot

@export var Slot01: BasicSlot
@export var Slot02: BasicSlot
@export var result: Item 
@export var mainScene: Node2D

signal nuevoItem
# BEGIN PLAY
func _ready() -> void:
	Slot01.itemOnSlot.connect(checkForCombine)
	Slot02.itemOnSlot.connect(checkForCombine)
	pass # Replace with function body.


# EVENT TICK
func _process(_delta: float) -> void:
	pass

func checkForCombine():
	if Slot01.SlotEmpty==true or Slot02.SlotEmpty==true:
		print("not checked")
		pass
	else:
		print("checking")
		if (Slot01.ItemReference.ItemID == 1 and Slot02.ItemReference.ItemID == 2)or(Slot01.ItemReference.ItemID == 2 and Slot02.ItemReference.ItemID == 1):
			print("naranja")
			result= preload("res://01_assets/00_items/itemsPrueba/itemNaranja.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
