extends Node2D

var itemActual: String

@export var DeliverySlot: BasicSlot
@export var ProductSlot: ResultSlot
@export var character: Character
@export var cajaDialogos: DialogoBasic
@export var dialogueNumber: int = 0
@export var scrollbar: MyScrollBar

# BEGIN PLAY
func _ready() -> void:
	DeliverySlot.itemOnSlot.connect(checkDelivery)
	ProductSlot.nuevoItem.connect(desbloquearItem)
	#character.cambiarImagen(AA)
	cajaDialogos.cambiarNombre("El hombre sonriente dice:")
	cajaDialogos.cambiarDialogo("¡Jojojo! Dios os guarde joven. Verá... Estoy buscando algo que darle a mi escribano donde pueda apuntar a ciertos... Desvergonzados que se niegan a pagarme el diezmo ¡Jojojo! ¿conocéis algo que pueda servirme?")
	cajaDialogos.animate_label()
	dialogueNumber=1
	pass 


# EVENT TICK
func _process(_delta: float) -> void:
	pass


#Detectar pedido correcto
func checkDelivery():
	if !DeliverySlot.SlotEmpty:
		if dialogueNumber==1:
			if DeliverySlot.ItemReference.ItemID == 0:
				print("item correcto")
				character.cambiarImagen(character.EB)
				cajaDialogos.cambiarDialogo("¡Pardiez, esto es justo lo que necesitaba! ¿Cómo, un pagamento? ¿Cree usted en el santísimo, joven? ¡Pues el hombre propone y Dios dispone! Jojojo ¡Nos vemos!")
				cajaDialogos.animate_label()
				dialogueNumber=dialogueNumber+1
				await get_tree().create_timer(5).timeout
				siguienteDialogo(character.dardo,"Dardo dice:","puto")
			else:
				cajaDialogos.cambiarDialogo("Eres gilipollas.")
				cajaDialogos.animate_label()
		elif dialogueNumber==2:
			pass

func siguienteDialogo(sprite,nombre,dialogo):
	character.cambiarImagen(sprite)
	cajaDialogos.cambiarNombre(nombre)
	cajaDialogos.cambiarDialogo(dialogo)
	cajaDialogos.animate_label()
	pass

func desbloquearItem():
	print("desbloquear raaaah")
	scrollbar.activarScrollItem(ProductSlot.result.ItemID)
	pass
