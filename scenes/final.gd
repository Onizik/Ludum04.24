extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$AP.play("fade")
	if $"/root/Global".win > $"/root/Global".los1 and $"/root/Global".win > $"/root/Global".los2:
		$text/text.text = "Friends win this battle!"
		$win.frame = 0
	elif $"/root/Global".los1 > $"/root/Global".los2 and $"/root/Global".los1 > $"/root/Global".win:
		$text/text.text = "Cats win this battle!"
		$win.frame = 2
	elif $"/root/Global".los2 > $"/root/Global".los1 and $"/root/Global".los2 > $"/root/Global".win:
		$text/text.text = "Demons win this battle!"
		$win.frame = 1
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_ap_animation_finished(anim_name):
	if anim_name == "fade_in":
		get_tree().change_scene_to_file("res://scenes/menu.tscn")
	


func _on_butt_pressed():
	$AP.play("fade_in")
