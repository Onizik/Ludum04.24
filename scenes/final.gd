extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
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
