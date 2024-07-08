extends "res://scripts/FoodAutoPlace.gd"

onready var food = preload("res://prefabs/Plate.tscn")

func _on_Area2D_input_event(viewport, event, shape_idx):
	if event and Input.is_action_just_pressed("select"):
		var cookingMachine = get_node(targetCookingMachine)
		cookingMachine.AssignFoodToGrill(food)
		print(cookingMachine.name)
