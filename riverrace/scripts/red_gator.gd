extends Sprite2D

@onready var global = get_node("/root/Global")
var counter = 0
var SPEED = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	reset()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	counter += delta
	if counter > 1:
		counter = 0
		flip_h = not flip_h
	global_position.y -= delta*SPEED
	global_position.x += delta*(global.position.x-global_position.x)*0.5
	
	if global_position.y <= -50:
		reset()
		
func reset():
	global_position.y = 850
	global_position.x = randi()%350+200
