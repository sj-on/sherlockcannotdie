extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func setscore(duckingtrash):
	get_node('./CanvasLayer/Label').text = duckingtrash 
	
