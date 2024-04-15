extends Node2D
var go = false
var count = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if go:
		$numb.text = str(count)
		go = false
	pass


func _on_butt_pressed():
	$"/root/Global".spell = false
	go = true
	if $"/root/Global".side:
		count += int($"/root/Global".number)
	else: count -= int($"/root/Global".number)
	pass # Replace with function body.
