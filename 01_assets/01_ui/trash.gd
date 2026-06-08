extends Node2D

class_name Trash

var MouseInside: bool
var ItemOnArea: bool
var ItemReference: Item
var SlotEmpty: bool = true

# BEGIN PLAY
func _ready() -> void:
	pass 


# EVENT TICK
func _process(_delta: float) -> void:
	pass


#Detecta el ratón para 'activar' el input
func _on_area_2d_mouse_entered() -> void:
	MouseInside=true
	pass 
func _on_area_2d_mouse_exited() -> void:
	MouseInside=false
	pass 
#Detectar el area del item si lo tienes
func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.get_parent() is Item:
		ItemOnArea=true
		ItemReference=area.get_parent()
		print("item guardado")
	pass 
func _on_area_2d_area_exited(area: Area2D) -> void:
	if area.get_parent() is Item:
		ItemOnArea=false
		ItemReference=null
		print("item quitado")
	pass 
#Evento click
func _input(event):
	if event.is_action_pressed("Click"):
		if !SlotEmpty and MouseInside:
			SlotEmpty=true
			print("vacio")
	if event.is_action_released("Click"):
		if ItemOnArea and (ItemReference.Attached or ItemReference.JustDesattached):
			if SlotEmpty:
				ItemReference.queue_free()
				SlotEmpty=false
				print("lleno")
				
