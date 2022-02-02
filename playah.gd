extends RigidBody2D

var motion = 1000
var max_speed = 500
func _ready():
	linear_damp = 1 # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if(Input.is_action_pressed("ui_down")):
		linear_velocity.y += motion*delta
	if(Input.is_action_pressed("ui_up")):
		linear_velocity.y -= motion*delta
	if(Input.is_action_pressed("ui_right")):
		linear_velocity.x += motion*delta
	if(Input.is_action_pressed("ui_left")):
		linear_velocity.x -= motion*delta
		
	linear_velocity.y = min(max(linear_velocity.y, -max_speed), max_speed)
	linear_velocity.x = min(max(linear_velocity.x, -max_speed), max_speed)

#func _a_most_painful_death():
#	var streak = get_node('../CanvasLayer/Layer').count
#
#	if(streak > Highscore.getval('kills', 'streak',0)):
#		Highscore.setval('kills', 'streak', streak)
#		Highscore.save()
#
#	gameover_popup()
#
#	queue_free()
#	get_tree().paused = true
#
#
#func gameover_popup():
#	var lost = load('res://gameover.tscn').instance()
#	lost.setscore(get_node('../CanvasLayer/Label').count)
#	get_node('../CanvasLayer').add_child(lost)


func _on_playah_body_entered(body):
	if(body == get_node('../wall')):
#		_a_most_painful_death()
		queue_free()
		get_tree().paused = true
