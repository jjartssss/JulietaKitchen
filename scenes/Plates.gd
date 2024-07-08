extends Node2D


func _ready():
	ActivatePlates()
	pass


func ActivatePlates():
	# assign to GM and activate plate
	for i in range(GameManager.burgerPlateCount):
		get_child(i).set_visible(true)
		GameManager.burgerPlates.append(get_child(0))

