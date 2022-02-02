extends Label

var count = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if(count > Highscore.getval('kills', 'streak', 0)):
		text = "Kill Count: !! " + str(count) + " !!"
	text = "Kill Count: " + str(count)

func addscore():
	count += 1
