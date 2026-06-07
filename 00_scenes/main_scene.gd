extends Node2D

@export var DeliverySlot: BasicSlot


# BEGIN PLAY
func _ready() -> void:
	DeliverySlot.itemOnSlot.connect(checkDelivery)
	pass 


# EVENT TICK
func _process(_delta: float) -> void:
	pass


#Detectar pedido correcto
func checkDelivery():
	if !DeliverySlot.SlotEmpty:
		if DeliverySlot.ItemReference.ItemID == "azul":
			print("item correcto")
			pass
