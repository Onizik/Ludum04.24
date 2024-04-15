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
	$"/root/Global".sp_butt = self.name
	print($"/root/Global".sp_butt)
	print("!" + str($"/root/Global".sp1) + " " + str($"/root/Global".sp2) +" " + str($"/root/Global".sp3) + " " + str($"/root/Global".sp4) +" " + str($"/root/Global".sp5) + " " + str($"/root/Global".sp6))
	$"/root/Global".number = $text.text
	

	pass


func _on_butt_r_pressed():
	$"/root/Global".spell = true
	$"/root/Global".side = false
	$"/root/Global".sp_butt = self.name
	print($"/root/Global".sp_butt)
	print("!" + str($"/root/Global".sp1) + " " + str($"/root/Global".sp2) +" " + str($"/root/Global".sp3) + " " + str($"/root/Global".sp4) +" " + str($"/root/Global".sp5) + " " + str($"/root/Global".sp6))
	$"/root/Global".number = $text.text
	pass # Replace with function body.
