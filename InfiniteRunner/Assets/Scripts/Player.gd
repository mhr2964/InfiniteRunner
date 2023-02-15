extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var speed = 5;
var velocity = Vector2.ZERO


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocity.x = 0;
	if (Input.is_action_pressed("move_right")):
		velocity.x += 1
	if (Input.is_action_pressed("move_left")):
		velocity.x -= 1
	velocity.x *= 200
	if (is_on_floor()): 
		print("Floored")
		velocity.y = 0
	else:
		velocity += Vector2(0, 8)
	if (Input.is_action_just_pressed("move_up")):
		velocity.y = -200
	#self.position += velocity * delta
	velocity.y = clamp(velocity.y, -300, 500)
	move_and_slide(velocity, Vector2(0, -1))
	#move_
	pass

func _on_Area2D_body_entered(body):
	if (body.parent.name == "Wall"):
		wallCollision(body)
	pass # Replace with function body.
	
func wallCollision(body):
	print("Collide Wall")
	pass


