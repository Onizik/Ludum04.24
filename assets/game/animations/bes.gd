extends Node2D
var go = false
var count = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if go:
		$numb.text = str(count)
		go = false
	pass



func _on_butt_pressed():
	count = int($numb.text)
	$"/root/Global".spell = false
	if $"/root/Global".sp_butt == "sp_butt1":
		$"/root/Global".sp1 = false
	elif $"/root/Global".sp_butt == "sp_butt2":
		$"/root/Global".sp2 = false
	elif $"/root/Global".sp_butt == "sp_butt3":
		$"/root/Global".sp3 = false
	elif $"/root/Global".sp_butt == "sp_butt4":
		$"/root/Global".sp4 = false
	elif $"/root/Global".sp_butt == "sp_butt5":
		$"/root/Global".sp5 = false
	elif $"/root/Global".sp_butt == "sp_butt6":
		$"/root/Global".sp6 = false
		
	go = true
	if $"/root/Global".side:
		count += int($"/root/Global".number)
	else: 
		count -= int($"/root/Global".number)
		print ("x " + str($"/root/Global".number))
		if count <= 0:
			print ("E " + str(count))
			count = 0
			self.visible = false
		else: 
			print ("a " + str(count))
	pass # Replace with function body.
