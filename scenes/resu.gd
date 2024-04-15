extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	print("atb")

	if $"/root/Global".result >0:
		$fade/stick/info/cat/count.text = "= " + str($"/root/Global".result )
		$fade/stick/info/bes/count.text = "= 0"
		$fade/stick/info/result.text = "Cats won this round!"
	elif $"/root/Global".result <0:
		$fade/stick/info/bes/count.text = "= " + str($"/root/Global".result )
		$fade/stick/info/cat/count.text = "= 0"
		$fade/stick/info/result.text = "Demons won this round!"
	elif $"/root/Global".result ==0:
		$fade/stick/info/bes/count.text = "= 0"
		$fade/stick/info/cat/count.text = "= 0"
		$fade/stick/info/result.text = "Tie! Well done!"

		$ap.play ("rez")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	$ap.play("fade") # Replace with function body.


func _on_ap_animation_finished(anim_name):
	if anim_name == "fade":
		get_tree().change_scene_to_file("res://scenes/main_game.tscn")
