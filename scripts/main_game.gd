extends Node2D
var sp1 = 0
var sp2 = 0
var sp3 = 0
var sp4 = 0
var sp5 = 0
var sp6 = 0

var cat_1 = 1
var cat_2 = 2
var cat_3 = 3
var cat_4 = 4
var c1 = 0
var c2 = 0
var c3 = 0
var c4 = 0

var bes_1 = 1
var bes_2 = 2
var bes_3 = 3
var b1 = 0
var b2 = 0
var b3 = 0

var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	generate()
	$anim_game.play("fog")
	add_some()
	
	
	
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
	if $"/root/Global".spell:
		$bes/butt.visible = true
		$bes/bubble.visible = false
		$bes2/butt.visible = true
		$bes2/bubble.visible = false
		$bes3/butt.visible = true
		$bes3/bubble.visible = false
		
		$cat/butt.visible = true
		$cat/bubble.visible = false
		$cat2/butt.visible = true
		$cat2/bubble.visible = false
		$cat3/butt.visible = true
		$cat3/bubble.visible = false
		$cat4/butt.visible = true
		$cat4/bubble.visible = false
	else:
		$bes/butt.visible = false
		$bes/bubble.visible = true
		$bes2/butt.visible = false
		$bes2/bubble.visible = true
		$bes3/butt.visible = false
		$bes3/bubble.visible = true
		
		$cat/butt.visible = false
		$cat/bubble.visible = true
		$cat2/butt.visible = false
		$cat2/bubble.visible = true
		$cat3/butt.visible = false
		$cat3/bubble.visible = true
		$cat4/butt.visible = false
		$cat4/bubble.visible = true
	casted()

	
	$header_bg/count_left/text.text = str(int($cat/numb.text)+int($cat2/numb.text)+int($cat3/numb.text)+int($cat4/numb.text))
	$header_bg/count_right/text.text = str(int($bes/numb.text)+int($bes2/numb.text)+int($bes3/numb.text))
	pass

func generate():
	sp1 = rng.randi_range(1, 3)
	sp2 = rng.randi_range(1, 3)
	sp3 = rng.randi_range(1, 3)
	sp4 = rng.randi_range(1, 3)
	sp5 = rng.randi_range(1, 3)
	sp6 = rng.randi_range(1, 3)
	
	cat_1 = rng.randi_range(1, 4)
	cat_2 = rng.randi_range(1, 4)
	cat_3 = rng.randi_range(1, 4)
	cat_4 = rng.randi_range(1, 4)
	c1 = rng.randi_range(1, 4)
	c2 = rng.randi_range(1, 4)
	c3 = rng.randi_range(1, 4)
	c4 = rng.randi_range(1, 4)
	
	
	bes_1 = rng.randi_range(1, 3)
	bes_2 = rng.randi_range(1, 3)
	bes_3 = rng.randi_range(1, 3)
	b1 = rng.randi_range(1, 4)
	b2 = rng.randi_range(1, 4)
	b3 = rng.randi_range(1, 4)
	
	pass

func add_some():
	
	
	if bes_1 == 1:
		$bes/bes1.visible = true
		$bes/bes2.visible = false
		$bes/bes3.visible = false
		$bes/AP.play("idle")
	else: if bes_1 == 2:
		$bes/bes2.visible = true
		$bes/bes1.visible = false
		$bes/bes3.visible = false
		$bes/AP.play("idle_bes2")
	else: if bes_1 == 3:
		$bes/bes3.visible = true
		$bes/bes1.visible = false
		$bes/bes2.visible = false
		$bes/AP.play("idle_bes3")
		
	if bes_2 == 1:
		$bes2/bes1.visible = true
		$bes2/bes2.visible = false
		$bes2/bes3.visible = false
		$bes2/AP.play("idle")
	else: if bes_2 == 2:
		$bes2/bes2.visible = true
		$bes2/bes1.visible = false
		$bes2/bes3.visible = false
		$bes2/AP.play("idle_bes2")
	else: if bes_2 == 3:
		$bes2/bes3.visible = true
		$bes2/bes1.visible = false
		$bes2/bes2.visible = false
		$bes2/AP.play("idle_bes3")
		
	if bes_3 == 1:
		$bes3/bes1.visible = true
		$bes3/bes2.visible = false
		$bes3/bes3.visible = false
		$bes3/AP.play("idle")
	else: if bes_3 == 2:
		$bes3/bes2.visible = true
		$bes3/bes1.visible = false
		$bes3/bes3.visible = false
		$bes3/AP.play("idle_bes2")
	else: if bes_3 == 3:
		$bes3/bes3.visible = true
		$bes3/bes1.visible = false
		$bes3/bes2.visible = false
		$bes3/AP.play("idle_bes3")

	if cat_1 == 1:
		$cat/cat1.visible = true
		$cat/cat2.visible = false
		$cat/cat3.visible = false
		$cat/cat4.visible = false
		$cat/AP.play("cat1")
	elif cat_1 == 2:
		$cat/cat1.visible = false
		$cat/cat2.visible = true
		$cat/cat3.visible = false
		$cat/cat4.visible = false
		$cat/AP.play("cat2")
	elif cat_1 == 3:
		$cat/cat1.visible = false
		$cat/cat2.visible = false
		$cat/cat3.visible = true
		$cat/cat4.visible = false
		$cat/AP.play("cat3")
	elif cat_1 == 4:
		$cat/cat1.visible = false
		$cat/cat2.visible = false
		$cat/cat3.visible = false
		$cat/cat4.visible = true
		$cat/AP.play("cat4")
	
	if cat_2 == 1:
		$cat2/cat1.visible = true
		$cat2/cat2.visible = false
		$cat2/cat3.visible = false
		$cat2/cat4.visible = false
		$cat2/AP.play("cat1")
	elif cat_2 == 2:
		$cat2/cat1.visible = false
		$cat2/cat2.visible = true
		$cat2/cat3.visible = false
		$cat2/cat4.visible = false
		$cat2/AP.play("cat2")
	elif cat_2 == 3:
		$cat2/cat1.visible = false
		$cat2/cat2.visible = false
		$cat2/cat3.visible = true
		$cat2/cat4.visible = false
		$cat2/AP.play("cat3")
	elif cat_2 == 4:
		$cat2/cat1.visible = false
		$cat2/cat2.visible = false
		$cat2/cat3.visible = false
		$cat2/cat4.visible = true
		$cat2/AP.play("cat4")
		
	if cat_3 == 1:
		$cat3/cat1.visible = true
		$cat3/cat2.visible = false
		$cat3/cat3.visible = false
		$cat3/cat4.visible = false
		$cat3/AP.play("cat1")
	elif cat_3 == 2:
		$cat3/cat1.visible = false
		$cat3/cat2.visible = true
		$cat3/cat3.visible = false
		$cat3/cat4.visible = false
		$cat3/AP.play("cat2")
	elif cat_3 == 3:
		$cat3/cat1.visible = false
		$cat3/cat2.visible = false
		$cat3/cat3.visible = true
		$cat3/cat4.visible = false
		$cat3/AP.play("cat3")
	elif cat_3 == 4:
		$cat3/cat1.visible = false
		$cat3/cat2.visible = false
		$cat3/cat3.visible = false
		$cat3/cat4.visible = true
		$cat3/AP.play("cat4")
		
	if cat_4 == 1:
		$cat4/cat1.visible = true
		$cat4/cat2.visible = false
		$cat4/cat3.visible = false
		$cat4/cat4.visible = false
		$cat4/AP.play("cat1")
	elif cat_4 == 2:
		$cat4/cat1.visible = false
		$cat4/cat2.visible = true
		$cat4/cat3.visible = false
		$cat4/cat4.visible = false
		$cat4/AP.play("cat2")
	elif cat_4 == 3:
		$cat4/cat1.visible = false
		$cat4/cat2.visible = false
		$cat4/cat3.visible = true
		$cat4/cat4.visible = false
		$cat4/AP.play("cat3")
	elif cat_4 == 4:
		$cat4/cat1.visible = false
		$cat4/cat2.visible = false
		$cat4/cat3.visible = false
		$cat4/cat4.visible = true
		$cat4/AP.play("cat4")
		
	$cat/numb.text = str(c1)
	$cat2/numb.text = str(c2)
	$cat3/numb.text = str(c3)
	$cat4/numb.text = str(c4)
	
	$bes/numb.text = str(b1)
	$bes2/numb.text = str(b2)
	$bes3/numb.text = str(b3)
	
	$footer_bg/sp_butt1/text_plus.text = "+" + str(sp1)
	$footer_bg/sp_butt1/text.text = str(sp1)
	$footer_bg/sp_butt2/text_plus.text = "+" + str(sp2)
	$footer_bg/sp_butt2/text.text = str(sp2)
	$footer_bg/sp_butt3/text_plus.text = "+" + str(sp3)
	$footer_bg/sp_butt3/text.text = str(sp3)
	
	$footer_bg/sp_butt4/text_minus.text = "-" + str(sp4)
	$footer_bg/sp_butt4/text.text = str(sp4)
	$footer_bg/sp_butt5/text_minus.text = "-" + str(sp5)
	$footer_bg/sp_butt5/text.text = str(sp5)
	$footer_bg/sp_butt6/text_minus.text = "-" + str(sp6)
	$footer_bg/sp_butt6/text.text = str(sp6)

func casted():
	if $"/root/Global".sp1 == false:
		$footer_bg/sp_butt1/text_plus.visible =false
		$footer_bg/sp_butt1/butt_b.disabled = true
	if $"/root/Global".sp2 == false:
		$footer_bg/sp_butt2/text_plus.visible =false
		$footer_bg/sp_butt2/butt_b.disabled = true
	if $"/root/Global".sp3 == false:
		$footer_bg/sp_butt3/text_plus.visible =false
		$footer_bg/sp_butt3/butt_b.disabled = true
	if $"/root/Global".sp4 == false:
		$footer_bg/sp_butt4/text_minus.visible =false
		$footer_bg/sp_butt4/butt_r.disabled = true
	if $"/root/Global".sp5 == false:
		$footer_bg/sp_butt5/text_minus.visible =false
		$footer_bg/sp_butt5/butt_r.disabled = true
	if $"/root/Global".sp6 == false:
		$footer_bg/sp_butt6/text_minus.visible =false
		$footer_bg/sp_butt6/butt_r.disabled = true


func _on_fight_pressed():
	$anim_game.play("fight")
	pass # Replace with function body.
