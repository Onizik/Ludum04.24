extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	print("atb")
	$ap.play ("rez")
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

	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
