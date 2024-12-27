extends Sprite2D

@onready var global = get_node("/root/Global")
var counter = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	counter += delta
	if counter > 1:
		counter = 0
		flip_h = not flip_h
		
	global.position = global_position
