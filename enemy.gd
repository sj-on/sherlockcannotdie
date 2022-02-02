extends RigidBody2D

signal killed

var motion = 800
var max_speed = 300
onready var playah = get_node('../playah')
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	
	get_node("Sprite").modulate.h += 0.5*delta
	
	var playahangle = position.angle_to_point(playah.position)
	var movement = Vector2(-1,0).rotated(playahangle)
	linear_velocity += motion*delta*movement
	
	linear_velocity.y = min(max(linear_velocity.y, -max_speed), max_speed)
	linear_velocity.x = min(max(linear_velocity.x, -max_speed), max_speed)


func _on_enemy_body_entered(body):
	if(body == playah):
		emit_signal("killed")
		queue_free()
