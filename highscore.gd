extends Node

onready var gamedat = ConfigFile.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	gamedat.load('user://save_data.cfg')

func savedat(path = 'user://save_data.cfg'):
	gamedat.save(path)

func setval(section, key, value):
	return gamedat.set_value(section, key, value)
	
func getval(section, key, default=null):
	return gamedat.get_value(section, key, default)
	
func getkey(section):
	return gamedat.get_section_keys(section)
