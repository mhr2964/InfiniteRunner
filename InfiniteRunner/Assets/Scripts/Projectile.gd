extends Node2D


onready var animatedSprite = $Area2D/AnimatedSprite;
onready var collisionShape = $Area2D/CollisionShape2D;

var moveDirection = 1;
var moveSpeed = 10;

# Called when the node enters the scene tree for the first time.
func _ready():
	if (get_parent().get_node("AnimatedSprite") != null):
		#print(get_parent().get_node("AnimatedSprite"))
		moveDirection = get_parent().get_node("AnimatedSprite").flip_h;
		pass;
	if (moveDirection == 1):
		animatedSprite.flip_h = 0;
		pass
	else:
		animatedSprite.flip_h = 1;
		pass
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x += moveSpeed * moveDirection;
	pass
