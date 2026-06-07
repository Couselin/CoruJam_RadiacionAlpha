extends TextureRect

class_name ScrollItem

var MouseInside: bool
@export var Unlocked: bool
var SpawnPosition: Node2D
var Main: Node2D
var SpawnedItem: Item

@export var Directorio: String
@export var ItemImage: Texture
@export var Texto: String

#Referencias
@export var MyLabel: Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	SpawnPosition = get_parent().SpawnPos
	Main = get_parent().MainScene
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass



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
		if MouseInside and Unlocked:
			spawnItem()
			print("Spawnear item")

func spawnItem():
	SpawnedItem = load(Directorio).instantiate()
	Main.add_child(SpawnedItem)
	SpawnedItem.global_position = SpawnPosition.global_position
	pass

func activar():
	Unlocked = true
	MyLabel.text = Texto
	texture = ItemImage
	expand_mode = TextureRect.EXPAND_FIT_HEIGHT
	stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED
	
