extends Sprite2D


@onready var sprite_2d: Sprite2D = $"."

@export var sprite: Texture = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	cambiarImagen(sprite)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func cambiarImagen(imagen) -> void:
	texture = imagen
	
	
