extends Sprite


var numberOfGrillPos = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	numberOfGrillPos = get_child_count() - 1
	print("number of grill pos " + str(numberOfGrillPos))

func CheckAvailability(whatFood):
	for i in range(numberOfGrillPos):
#		print(get_child(i).hasFood)
		if !get_child(i).hasFood:
			AssignFood(whatFood, get_child(i))
			break

func AssignFood(whatFood : PackedScene, grillPos : GrillPos):
	var food = whatFood.instance()
	food.position = grillPos.position
	grillPos.add_child(food)
	grillPos.whatFood = food
	grillPos.hasFood = true


func AssignFoodToGrill(whatFood):
	CheckAvailability(whatFood)
