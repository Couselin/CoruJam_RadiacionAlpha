extends Control

@onready var label_nombre: Label = $LabelNombre
@onready var timer: Timer = $Timer
@onready var label_dialogo: Label = $LabelDialogo

@export var nombre: String = "null"
@export var dialogo: String = "null"

var n = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer.timeout.connect(animate_label)
	
	textoNombre()
	textoDialogo()
	animate_label()
	cambiarDialogo("holiii")
	
	
func _process(delta: float) -> void:
	siguienteDialogo()

func animate_label() -> void:
	label_dialogo.visible_characters +=1
	
	timer.start()
	
func textoNombre() -> void: 
	label_nombre.text = nombre
	
func textoDialogo() -> void: 
	label_dialogo.text = dialogo
	
func cambiarDialogo(nuevoDialogo) -> void:
	label_dialogo.text = nuevoDialogo
	

func siguienteDialogo() -> void:
	if n == 1: 
		cambiarDialogo("holiii")
