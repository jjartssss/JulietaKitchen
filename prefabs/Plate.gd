extends Sprite

export var hasFood = false
var whatFood = null


func _on_Area2D_input_event(viewport, event, shape_idx):
	if event and Input.is_action_just_pressed("select"):
		if hasFood: 
			print("Plate already has food")
		else:
			print("Plate is available")
