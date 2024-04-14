extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$bes/bes1.visible = true
	$bes/bes2.visible = false
	$bes/bes3.visible = false
	$bes/AP.play("idle")
	
	$bes2/bes2.visible = true
	$bes2/bes1.visible = false
	$bes2/bes3.visible = false
	$bes2/AP.play("idle_bes2")
	
	$bes3/bes3.visible = true
	$bes3/bes1.visible = false
	$bes3/bes2.visible = false
	$bes3/AP.play("idle_bes3")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_sp_3_ready():
	
	pass # Replace with function body.
