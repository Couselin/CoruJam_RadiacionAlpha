extends Sprite2D

class_name Character

@onready var sprite_2d: Sprite2D = $"."

@export var AA: Texture 
@export var AB: Texture 
@export var BA: Texture 
@export var BB: Texture
@export var CA: Texture 
@export var CB: Texture 
@export var DA: Texture 
@export var DB: Texture
@export var EA: Texture 
@export var EB: Texture 
@export var FA: Texture 
@export var FB: Texture
@export var GA: Texture 
@export var GB: Texture 
@export var HA: Texture 
@export var HB: Texture
@export var dardo: Texture

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func cambiarImagen(imagen) -> void:
	texture = imagen
	
	
