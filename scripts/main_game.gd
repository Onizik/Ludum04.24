extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$anim_game.play("fog")
	
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
	
	
	
	$cat/cat1.visible = true
	$cat/cat2.visible = false
	$cat/cat3.visible = false
	$cat/cat4.visible = false
	$cat/AP.play("cat1")
	
	$cat2/cat1.visible = false
	$cat2/cat2.visible = true
	$cat2/cat3.visible = false
	$cat2/cat4.visible = false
	$cat2/AP.play("cat2")
	
	$cat3/cat1.visible = false
	$cat3/cat2.visible = false
	$cat3/cat3.visible = true
	$cat3/cat4.visible = false
	$cat3/AP.play("cat3")
	
	$cat4/cat1.visible = false
	$cat4/cat2.visible = false
	$cat4/cat3.visible = false
	$cat4/cat4.visible = true
	$cat4/AP.play("cat4")
	
	$footer_bg/sp_butt1/butt_r.visible = false
	$footer_bg/sp_butt1/butt_r.disabled = true
	
	$footer_bg/sp_butt2/butt_r.visible = false
	$footer_bg/sp_butt2/butt_r.disabled = true
	$footer_bg/sp_butt3/butt_r.visible = false
	$footer_bg/sp_butt3/butt_r.disabled = true
	$footer_bg/sp_butt4/butt_b.visible = false
	$footer_bg/sp_butt4/butt_b.disabled = true
	$footer_bg/sp_butt5/butt_b.visible = false
	$footer_bg/sp_butt5/butt_b.disabled = true
	$footer_bg/sp_butt6/butt_b.visible = false
	$footer_bg/sp_butt6/butt_b.disabled = true
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



