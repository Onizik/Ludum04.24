extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_butt_pressed():
	$"/root/Global".spell = true
	$"/root/Global".side = true
	$"/root/Global".number = $text.text
	

	pass


func _on_butt_r_pressed():
	$"/root/Global".spell = true
	$"/root/Global".side = false
	$"/root/Global".number = $text.text
	pass # Replace with function body.