extends Node2D


export (PackedScene) var tileMapPreset1 = preload("res://Assets/Scenes/TileMapPreset1.tscn");
export (PackedScene) var tileMapPreset2 = preload("res://Assets/Scenes/TileMapPreset2.tscn");

# Called when the node enters the scene tree for the first time.
func _ready():
	var t1 = tileMapPreset1.instance();
	add_child(t1);
	var t2 = tileMapPreset2.instance();
	add_child(t2);
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
