extends KinematicBody

var velocity = Vector3.ZERO

var jump_velocity = 50
var gravity_scale = 2.0

func _physics_process(delta):
	velocity.y -= gravity_scale 
	move_and_collide(velocity*delta)
	
func _input(event):
	velocity = Vector3.ZERO
	
	if event.is_action_pressed("jump"):
		velocity.y += jump_velocity
