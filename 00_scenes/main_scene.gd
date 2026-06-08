extends Node2D

var itemActual: String
var explosion: Node2D

@export var DeliverySlot: BasicSlot
@export var ProductSlot: ResultSlot
@export var character: Character
@export var cajaDialogos: DialogoBasic
@export var dialogueNumber: int = 1
@export var scrollbar: MyScrollBar

# BEGIN PLAY
func _ready() -> void:
	DeliverySlot.itemOnSlot.connect(checkDelivery)
	ProductSlot.nuevoItem.connect(desbloquearItem)
	#character.cambiarImagen(AA)
	cajaDialogos.cambiarNombre("El hombre sonriente dice:")
	cajaDialogos.cambiarDialogo("¡Jojojo! Dios os guarde joven. Verá... Estoy buscando algo que darle a mi escribano donde pueda apuntar a ciertos... Desvergonzados que se niegan a pagarme el diezmo ¡Jojojo! ¿conocéis algo que pueda servirme?")
	cajaDialogos.animate_label()
	dialogueNumber= 1
	pass 


# EVENT TICK
func _process(_delta: float) -> void:
	pass


#Detectar pedido correcto
func checkDelivery():
	if !DeliverySlot.SlotEmpty:
		if dialogueNumber==1:
			if DeliverySlot.ItemReference.ItemID == 9:
				print("item correcto1")
				character.cambiarImagen(character.AB)
				cajaDialogos.cambiarDialogo("¡Pardiez, esto es justo lo que necesitaba! ¿Cómo, un pagamento? ¿Cree usted en el santísimo, joven? ¡Pues el hombre propone y Dios dispone! Jojojo ¡Nos vemos!")
				cajaDialogos.animate_label()
				dialogueNumber=dialogueNumber+1
				await get_tree().create_timer(15).timeout
				siguienteDialogo(character.BA,"La señora mayor dice:","Oh, mi buen señor, se acerca el invierno y cuando arrive el frio, mis mininos no podrán soportarlo. Necesito algo que permita cerrar los agujeros por los que entra el aire a mi casa.")
			else:
				cajaDialogos.cambiarDialogo("¿Me tomas por bobo, muchacho? ¡Jojojo! No vos pedí esto. Se lo repito, quiero algo donde mi escriba pueda poner los nombres de los ingratos que no pagan mi diezmo.")
				cajaDialogos.animate_label()
				
		elif dialogueNumber==2:
			if DeliverySlot.ItemReference.ItemID == 28:
				print("item correcto2")
				character.cambiarImagen(character.BB)
				cajaDialogos.cambiarDialogo("Ahora mis mininos no pasarán más frío ¡Bendecido sea, jovenzuelo! Es como si hiciérais magia. ¡Tome esto en agradecimiento! Dios os guarde.")
				cajaDialogos.animate_label()
				dialogueNumber=dialogueNumber+1
				scrollbar.activarScrollItem(14)
				await get_tree().create_timer(15).timeout
				siguienteDialogo(character.CA,"El señor sospechoso dice:","Salve, oh, buen señor. Las buenas gentes hablan de usted como si fuera un santo. Obra milagros a nobles y mendigos sin distinción. Me encontraba en búsqueda de un material... Un polvo azabache proveniente de oriente... Se dice que provoca explosiones por doquier. ¿Tiene algo que pueda servirme?")
			else:
				cajaDialogos.cambiarDialogo("¿Está seguro de que esto podrá ayudarme? No sé... Tal vez alguna otra cosa, algo que pueda poner en las paredes y me deje ver a través de ellas. También que ayude a que no entre el frio.")
				cajaDialogos.animate_label()
				
		elif dialogueNumber==3:
			if DeliverySlot.ItemReference.ItemID == 18:
				print("item correcto3")
				character.cambiarImagen(character.CB)
				cajaDialogos.cambiarDialogo("Oh, jejeje... Perfecto buen señor... Dios le salve por su ayuda. Tenga cuidado con el uso de sus magias oscuras, podría meterle en... Problemas. Dios sabrá si volvemos a encontrarnos.")
				cajaDialogos.animate_label()
				dialogueNumber=dialogueNumber+1
				await get_tree().create_timer(15).timeout
				siguienteDialogo(character.DA,"Fih dice:","AYUDA POR FAVOR. ME ENCUENTRO MUY MAAAAAAAAL. TENGO MUCHA SED AGUA POR FAVOR AGUAAAAA")
			else:
				cajaDialogos.cambiarDialogo("Eh... Esto no es exactamente lo que solicité... ¿Está seguro de que no tiene nada que se asemeje a mi descripción? ¿No tiene ningún polvo negruzco que pueda provocar explosiones?")
				cajaDialogos.animate_label()
			
		elif dialogueNumber==4:
			if DeliverySlot.ItemReference.ItemID == 13:
				print("item correcto4")
				character.cambiarImagen(character.DB)
				cajaDialogos.cambiarDialogo("¡Uf! Muchas gracias, lo necesitaba. Toma por favor, acepta esto.")
				cajaDialogos.animate_label()
				dialogueNumber=dialogueNumber+1
				scrollbar.activarScrollItem(15)
				await get_tree().create_timer(15).timeout
				siguienteDialogo(character.EA,"La artista frustrada dice:","Oh, ¿Qué es esto? ¿Es a caso un milagro? ¡O tal vez magia, brujería! Buen señor, por favor, no quiero seguir viviendo en la entrada de la iglesia. Necesito algo que me permita dibujar y expresarme. ¡Así podré vender mis dibujos y dejar de restaurar arte sacro!")
			else:
				cajaDialogos.cambiarDialogo("QUE SE SUPONE QUE VOY A HACER CON ESTO POR FAVOR AYUDA, SOLO QUIERO UN POCO DE AGUA EN ALGÚN RECIPIENTE POR FAVORRRR")
				cajaDialogos.animate_label()
				
		elif dialogueNumber==5:
			if DeliverySlot.ItemReference.ItemID == 29:
				print("item correcto5")
				character.cambiarImagen(character.EB)
				cajaDialogos.cambiarDialogo("Que dios le tenga en su gloria, buen señor. Esto es justo lo que necesitaba. Gracias a esto podré ganarme la vida dibujando . (Siempre y cuando trabaje también a tiempo completo en el campo...)")
				cajaDialogos.animate_label()
				dialogueNumber=dialogueNumber+1
				await get_tree().create_timer(15).timeout
				siguienteDialogo(character.FA,"El señor de otro juego dice:","Holiii~~ Jijijijiji.... Estamos- digo... estoy buscando algo para... protegerme de los desvergonzados que no me dejan tocar sus cosas... Jijiji, lalalala~~ Escuché que vuesa mercerd podía hacer magia... No espero menos de vos.")
			else:
				cajaDialogos.cambiarDialogo("¿Me tomáis el pelo? ¡Con esto no puedo hacer nada! Agradecería que vuesa merced me tomara un poco más en serio. Necesito algo donde dibujar y una herramienta para hacerlo.")
				cajaDialogos.animate_label()
				
		elif dialogueNumber==6:
			if DeliverySlot.ItemReference.ItemID == 31 or DeliverySlot.ItemReference.ItemID == 06:
				print("item correcto6")
				character.cambiarImagen(character.FB)
				cajaDialogos.cambiarDialogo("¡Ohh jijijiji! ¡Justamente lo que necesitaba! Nadie volverá a interponerse entre mis manos y sus objetos personales. Oh jijiji, lalala~~")
				cajaDialogos.animate_label()
				dialogueNumber=dialogueNumber+1
				await get_tree().create_timer(15).timeout
				siguienteDialogo(character.GA,"El señor con ojos raros dice:","¿Eh, hola? ¿Se encuentra alguien ahí? ¡Oh, buen señor, alabado sea! Mire, realmente preciso de su ayuda. Un enano muy alto me retó a mirar al sol, ¡ese canalla sabía que mi vista empeoraría y  robó todas mis manzas! Por favor, necesito algo que me ayude a ver mejor ¿Un hechizo pueda ser?")
			else:
				cajaDialogos.cambiarDialogo("Jijijijijiji... lalala~ ¿Qué se supone que es ESTO? Necesito algo con lo que defenderme, jijijij, lalala...~")
				cajaDialogos.animate_label()
				
		elif dialogueNumber==7:
			if DeliverySlot.ItemReference.ItemID == 30:
				print("item correcto7")
				character.cambiarImagen(character.GB)
				cajaDialogos.cambiarDialogo("¡Oh, Jesus, María y José! ¡Faltó el pelo de un calvo para quedarme ciego! Quedo en deuda con vos. ¡Es como si hicierais brujería!")
				cajaDialogos.animate_label()
				dialogueNumber=dialogueNumber+1
				await get_tree().create_timer(15).timeout
				siguienteDialogo(character.HA,"El caballero de la Inquisición dice:","¡Eh, vos! ¡Ingrato! Le hemos pillado in flagranti. Somos conocedores de sus atadurías con las artes oscuras. y venimos a poner fin a esto. ¡Vuesa merced queda detenido! ¡Enméndense y no intente huir!")
			else:
				cajaDialogos.cambiarDialogo("¿Buen señor? ¿Qué es esto? ¡No me está ayudando en nada! Por favor, no puedo irme de aquí hasta que me de algo que ayude a mis ojos a ver mejor.")
				cajaDialogos.animate_label()
				
		elif dialogueNumber==8:
			if DeliverySlot.ItemReference.ItemID == 31 or DeliverySlot.ItemReference.ItemID == 32:
				print("item correcto8")
				explosion = load("res://04_VFX/explosion.tscn").instantiate()
				add_child(explosion)
				await get_tree().create_timer(1).timeout
				
			else:
				cajaDialogos.cambiarDialogo("¿Eh? ¿Qué es esto? ¡Dejaos de sandeces y entregaos ahora mismo!")
				cajaDialogos.animate_label()
		
				
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
