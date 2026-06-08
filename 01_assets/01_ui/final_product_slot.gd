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
		if (Slot01.ItemReference.ItemID == 0 and Slot02.ItemReference.ItemID == 1)or(Slot01.ItemReference.ItemID == 1 and Slot02.ItemReference.ItemID == 0):
			result= preload("res://01_assets/00_items/ITEMSFINALES/ash.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 1 and Slot02.ItemReference.ItemID == 2)or(Slot01.ItemReference.ItemID == 2 and Slot02.ItemReference.ItemID == 1):
			result= preload("res://01_assets/00_items/ITEMSFINALES/stone.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 0 and Slot02.ItemReference.ItemID == 3)or(Slot01.ItemReference.ItemID == 3 and Slot02.ItemReference.ItemID == 0):
			result= preload("res://01_assets/00_items/ITEMSFINALES/hammer.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 0 and Slot02.ItemReference.ItemID == 4)or(Slot01.ItemReference.ItemID == 4 and Slot02.ItemReference.ItemID == 0):
			result= preload("res://01_assets/00_items/ITEMSFINALES/paper.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 0 and Slot02.ItemReference.ItemID == 7)or(Slot01.ItemReference.ItemID == 7 and Slot02.ItemReference.ItemID == 0):
			result= preload("res://01_assets/00_items/ITEMSFINALES/pencil.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 0 and Slot02.ItemReference.ItemID == 11)or(Slot01.ItemReference.ItemID == 11 and Slot02.ItemReference.ItemID == 0):
			result= preload("res://01_assets/00_items/ITEMSFINALES/window.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 1 and Slot02.ItemReference.ItemID == 4)or(Slot01.ItemReference.ItemID == 4 and Slot02.ItemReference.ItemID == 1):
			result= preload("res://01_assets/00_items/ITEMSFINALES/knife.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 1 and Slot02.ItemReference.ItemID == 5)or(Slot01.ItemReference.ItemID == 5 and Slot02.ItemReference.ItemID == 1):
			result= preload("res://01_assets/00_items/ITEMSFINALES/coal.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 7 and Slot02.ItemReference.ItemID == 1)or(Slot01.ItemReference.ItemID == 1 and Slot02.ItemReference.ItemID == 7):
			result= preload("res://01_assets/00_items/ITEMSFINALES/fire.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 8 and Slot02.ItemReference.ItemID == 1)or(Slot01.ItemReference.ItemID == 1 and Slot02.ItemReference.ItemID == 8):
			result= preload("res://01_assets/00_items/ITEMSFINALES/ash.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 9 and Slot02.ItemReference.ItemID == 1)or(Slot01.ItemReference.ItemID == 1 and Slot02.ItemReference.ItemID == 9):
			result= preload("res://01_assets/00_items/ITEMSFINALES/ash.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 10 and Slot02.ItemReference.ItemID == 1)or(Slot01.ItemReference.ItemID == 1 and Slot02.ItemReference.ItemID == 10):
			result= preload("res://01_assets/00_items/ITEMSFINALES/glass.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 11 and Slot02.ItemReference.ItemID == 1)or(Slot01.ItemReference.ItemID == 1 and Slot02.ItemReference.ItemID == 11):
			result= preload("res://01_assets/00_items/ITEMSFINALES/cup.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 12 and Slot02.ItemReference.ItemID == 1)or(Slot01.ItemReference.ItemID == 1 and Slot02.ItemReference.ItemID == 12):
			result= preload("res://01_assets/00_items/ITEMSFINALES/vase.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 14 and Slot02.ItemReference.ItemID == 1)or(Slot01.ItemReference.ItemID == 1 and Slot02.ItemReference.ItemID == 14):
			result= preload("res://01_assets/00_items/ITEMSFINALES/steel.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 15 and Slot02.ItemReference.ItemID == 1)or(Slot01.ItemReference.ItemID == 1 and Slot02.ItemReference.ItemID == 15):
			result= preload("res://01_assets/00_items/ITEMSFINALES/ash.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 16 and Slot02.ItemReference.ItemID == 1)or(Slot01.ItemReference.ItemID == 1 and Slot02.ItemReference.ItemID == 16):
			result= preload("res://01_assets/00_items/ITEMSFINALES/ash.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 17 and Slot02.ItemReference.ItemID == 1)or(Slot01.ItemReference.ItemID == 1 and Slot02.ItemReference.ItemID == 17):
			result= preload("res://01_assets/00_items/ITEMSFINALES/steelBar.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 18 and Slot02.ItemReference.ItemID == 1)or(Slot01.ItemReference.ItemID == 1 and Slot02.ItemReference.ItemID == 18):
			result= preload("res://04_VFX/explosion.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
		elif (Slot01.ItemReference.ItemID == 19 and Slot02.ItemReference.ItemID == 1)or(Slot01.ItemReference.ItemID == 1 and Slot02.ItemReference.ItemID == 19):
			result= preload("res://01_assets/00_items/ITEMSFINALES/ash.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 0 and Slot02.ItemReference.ItemID == 1)or(Slot01.ItemReference.ItemID == 1 and Slot02.ItemReference.ItemID == 0):
			result= preload("res://04_VFX/explosion.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
		elif (Slot01.ItemReference.ItemID == 5 and Slot02.ItemReference.ItemID == 2)or(Slot01.ItemReference.ItemID == 2 and Slot02.ItemReference.ItemID == 5):
			result= preload("res://01_assets/00_items/ITEMSFINALES/concrete.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 10 and Slot02.ItemReference.ItemID == 2)or(Slot01.ItemReference.ItemID == 2 and Slot02.ItemReference.ItemID == 10):
			result= preload("res://01_assets/00_items/ITEMSFINALES/concrete.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 12 and Slot02.ItemReference.ItemID == 2)or(Slot01.ItemReference.ItemID == 2 and Slot02.ItemReference.ItemID == 12):
			result= preload("res://01_assets/00_items/ITEMSFINALES/waterglass.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 18 and Slot02.ItemReference.ItemID == 2)or(Slot01.ItemReference.ItemID == 2 and Slot02.ItemReference.ItemID == 18):
			result= preload("res://01_assets/00_items/ITEMSFINALES/concrete.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 4 and Slot02.ItemReference.ItemID == 3)or(Slot01.ItemReference.ItemID == 3 and Slot02.ItemReference.ItemID == 4):
			result= preload("res://01_assets/00_items/ITEMSFINALES/arena.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 11 and Slot02.ItemReference.ItemID == 3)or(Slot01.ItemReference.ItemID == 3 and Slot02.ItemReference.ItemID == 11):
			result= preload("res://01_assets/00_items/ITEMSFINALES/arena.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 12 and Slot02.ItemReference.ItemID == 3)or(Slot01.ItemReference.ItemID == 3 and Slot02.ItemReference.ItemID == 12):
			result= preload("res://01_assets/00_items/ITEMSFINALES/glass.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 18 and Slot02.ItemReference.ItemID == 3)or(Slot01.ItemReference.ItemID == 3 and Slot02.ItemReference.ItemID == 18):
			result= preload("res://04_VFX/explosion.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
		elif (Slot01.ItemReference.ItemID == 20 and Slot02.ItemReference.ItemID == 3)or(Slot01.ItemReference.ItemID == 3 and Slot02.ItemReference.ItemID == 20):
			result= preload("res://04_VFX/explosion.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
		elif (Slot01.ItemReference.ItemID == 10 and Slot02.ItemReference.ItemID == 4)or(Slot01.ItemReference.ItemID == 4 and Slot02.ItemReference.ItemID == 10):
			result= preload("res://01_assets/00_items/ITEMSFINALES/stone.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 11 and Slot02.ItemReference.ItemID == 4)or(Slot01.ItemReference.ItemID == 4 and Slot02.ItemReference.ItemID == 11):
			result= preload("res://01_assets/00_items/ITEMSFINALES/arena.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 12 and Slot02.ItemReference.ItemID == 4)or(Slot01.ItemReference.ItemID == 4 and Slot02.ItemReference.ItemID == 12):
			result= preload("res://01_assets/00_items/ITEMSFINALES/glass.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 14 and Slot02.ItemReference.ItemID == 4)or(Slot01.ItemReference.ItemID == 4 and Slot02.ItemReference.ItemID == 14):
			result= preload("res://01_assets/00_items/ITEMSFINALES/steel.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 17 and Slot02.ItemReference.ItemID == 4)or(Slot01.ItemReference.ItemID == 4 and Slot02.ItemReference.ItemID == 17):
			result= preload("res://01_assets/00_items/ITEMSFINALES/steelBar.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 18 and Slot02.ItemReference.ItemID == 4)or(Slot01.ItemReference.ItemID == 4 and Slot02.ItemReference.ItemID == 18):
			result= preload("res://04_VFX/explosion.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
		elif (Slot01.ItemReference.ItemID == 20 and Slot02.ItemReference.ItemID == 4)or(Slot01.ItemReference.ItemID == 4 and Slot02.ItemReference.ItemID == 20):
			result= preload("res://04_VFX/explosion.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 9 and Slot02.ItemReference.ItemID == 5)or(Slot01.ItemReference.ItemID == 5 and Slot02.ItemReference.ItemID == 9):
			result= preload("res://01_assets/00_items/ITEMSFINALES/drawing.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 12 and Slot02.ItemReference.ItemID == 5)or(Slot01.ItemReference.ItemID == 5 and Slot02.ItemReference.ItemID == 12):
			result= preload("res://01_assets/00_items/ITEMSFINALES/urn.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 16 and Slot02.ItemReference.ItemID == 5)or(Slot01.ItemReference.ItemID == 5 and Slot02.ItemReference.ItemID == 16):
			result= preload("res://01_assets/00_items/ITEMSFINALES/drawing.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 17 and Slot02.ItemReference.ItemID == 5)or(Slot01.ItemReference.ItemID == 5 and Slot02.ItemReference.ItemID == 17):
			result= preload("res://01_assets/00_items/ITEMSFINALES/gunPowder.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 18 and Slot02.ItemReference.ItemID == 5)or(Slot01.ItemReference.ItemID == 5 and Slot02.ItemReference.ItemID == 18):
			result= preload("res://01_assets/00_items/ITEMSFINALES/mysteriousPowder.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 19 and Slot02.ItemReference.ItemID == 5)or(Slot01.ItemReference.ItemID == 5 and Slot02.ItemReference.ItemID == 19):
			result= preload("res://01_assets/00_items/ITEMSFINALES/drawing.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 20 and Slot02.ItemReference.ItemID == 5)or(Slot01.ItemReference.ItemID == 5 and Slot02.ItemReference.ItemID == 20):
			result= preload("res://01_assets/00_items/ITEMSFINALES/mysteriousPowder.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 7 and Slot02.ItemReference.ItemID == 6)or(Slot01.ItemReference.ItemID == 6 and Slot02.ItemReference.ItemID == 7):
			result= preload("res://01_assets/00_items/ITEMSFINALES/ash.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 12 and Slot02.ItemReference.ItemID == 6)or(Slot01.ItemReference.ItemID == 6 and Slot02.ItemReference.ItemID == 12):
			result= preload("res://01_assets/00_items/ITEMSFINALES/glass.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 15 and Slot02.ItemReference.ItemID == 6)or(Slot01.ItemReference.ItemID == 6 and Slot02.ItemReference.ItemID == 15):
			result= preload("res://01_assets/00_items/ITEMSFINALES/cloth.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 9 and Slot02.ItemReference.ItemID == 7)or(Slot01.ItemReference.ItemID == 7 and Slot02.ItemReference.ItemID == 9):
			result= preload("res://01_assets/00_items/ITEMSFINALES/drawing.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 16 and Slot02.ItemReference.ItemID == 7)or(Slot01.ItemReference.ItemID == 7 and Slot02.ItemReference.ItemID == 16):
			result= preload("res://01_assets/00_items/ITEMSFINALES/drawing.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 18 and Slot02.ItemReference.ItemID == 7)or(Slot01.ItemReference.ItemID == 7 and Slot02.ItemReference.ItemID == 18):
			result= preload("res://01_assets/00_items/ITEMSFINALES/mysteriousPowder.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 19 and Slot02.ItemReference.ItemID == 7)or(Slot01.ItemReference.ItemID == 7 and Slot02.ItemReference.ItemID == 19):
			result= preload("res://01_assets/00_items/ITEMSFINALES/drawing.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 20 and Slot02.ItemReference.ItemID == 7)or(Slot01.ItemReference.ItemID == 7 and Slot02.ItemReference.ItemID == 20):
			result= preload("res://01_assets/00_items/ITEMSFINALES/mysteriousPowder.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 9 and Slot02.ItemReference.ItemID == 8)or(Slot01.ItemReference.ItemID == 8 and Slot02.ItemReference.ItemID == 9):
			result= preload("res://01_assets/00_items/ITEMSFINALES/drawing.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 16 and Slot02.ItemReference.ItemID == 8)or(Slot01.ItemReference.ItemID == 8 and Slot02.ItemReference.ItemID == 16):
			result= preload("res://01_assets/00_items/ITEMSFINALES/drawing.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 19 and Slot02.ItemReference.ItemID == 8)or(Slot01.ItemReference.ItemID == 8 and Slot02.ItemReference.ItemID == 19):
			result= preload("res://01_assets/00_items/ITEMSFINALES/artKit.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 16 and Slot02.ItemReference.ItemID == 9)or(Slot01.ItemReference.ItemID == 9 and Slot02.ItemReference.ItemID == 16):
			result= preload("res://01_assets/00_items/ITEMSFINALES/book.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 10 and Slot02.ItemReference.ItemID == 11)or(Slot01.ItemReference.ItemID == 11 and Slot02.ItemReference.ItemID == 10):
			result= preload("res://01_assets/00_items/ITEMSFINALES/hourglass.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 10 and Slot02.ItemReference.ItemID == 12)or(Slot01.ItemReference.ItemID == 12 and Slot02.ItemReference.ItemID == 10):
			result= preload("res://01_assets/00_items/ITEMSFINALES/hourglass.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 10 and Slot02.ItemReference.ItemID == 18)or(Slot01.ItemReference.ItemID == 18 and Slot02.ItemReference.ItemID == 10):
			result= preload("res://01_assets/00_items/ITEMSFINALES/mysteriousPowder.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID ==11 and Slot02.ItemReference.ItemID == 17)or(Slot01.ItemReference.ItemID == 17 and Slot02.ItemReference.ItemID == 11):
			result= preload("res://01_assets/00_items/ITEMSFINALES/glasses.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 12 and Slot02.ItemReference.ItemID == 14)or(Slot01.ItemReference.ItemID == 14 and Slot02.ItemReference.ItemID == 12):
			result= preload("res://01_assets/00_items/ITEMSFINALES/vase.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 6 and Slot02.ItemReference.ItemID == 19)or(Slot01.ItemReference.ItemID == 19 and Slot02.ItemReference.ItemID == 6):
			result= preload("res://01_assets/00_items/ITEMSFINALES/paper.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 16 and Slot02.ItemReference.ItemID == 20)or(Slot01.ItemReference.ItemID == 20 and Slot02.ItemReference.ItemID == 16):
			result= preload("res://01_assets/00_items/ITEMSFINALES/bomb.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 17 and Slot02.ItemReference.ItemID == 20)or(Slot01.ItemReference.ItemID == 20 and Slot02.ItemReference.ItemID == 17):
			result= preload("res://01_assets/00_items/ITEMSFINALES/bomb.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 17 and Slot02.ItemReference.ItemID == 18)or(Slot01.ItemReference.ItemID == 18 and Slot02.ItemReference.ItemID == 17):
			result= preload("res://01_assets/00_items/ITEMSFINALES/gun.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		elif (Slot01.ItemReference.ItemID == 20 and Slot02.ItemReference.ItemID == 18)or(Slot01.ItemReference.ItemID == 18 and Slot02.ItemReference.ItemID == 20):
			result= preload("res://01_assets/00_items/ITEMSFINALES/mysteriousPowder.tscn").instantiate()
			mainScene.add_child(result)
			result.global_position = global_position
			emit_signal("nuevoItem")
		else: 
			pass
