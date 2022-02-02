extends Node2D

func _ready():
	pass

func enemygenerator():
	var enemy = load('res://enemy.tscn').instance()
	enemy.position = Vector2(10+int(randf()*1506), 10+int(randf()*876))
	enemy.connect('killed', get_node("CanvasLayer/Label"), 'addscore')
	add_child(enemy)


func _on_Timer_timeout():
	if(randi()%3==0):
		enemygenerator()
