extends Node2D
var count = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$numb.text = str(count)
	pass


func _on_butt_pressed():
	$"/root/Global".spell = false
	if $"/root/Global".side:
		count += int($"/root/Global".number)
	else: count -= int($"/root/Global".number)
	pass # Replace with function body.
