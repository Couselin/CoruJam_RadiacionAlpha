extends Control

class_name DialogoBasic

@onready var label_nombre: Label = $LabelNombre
@onready var timerD: Timer = $Timer
@onready var label_dialogo: Label = $LabelDialogo

@export var nombre: String = "null"
@export var dialogo: String = "null"

var n = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timerD.timeout.connect(animate_label)


func _process(_delta: float) -> void:
	pass

func animate_label() -> void:
	label_dialogo.visible_characters +=1
	timerD.start()

func cambiarDialogo(nuevoDialogo) -> void:
	label_dialogo.text = nuevoDialogo

func cambiarNombre(nuevoNombre) -> void:
	label_nombre.text = nuevoNombre
