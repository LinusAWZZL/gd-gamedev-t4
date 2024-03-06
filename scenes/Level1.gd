extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var timeout = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_inputs()
		
		# Scene Switch to lose, then restart
	

func get_inputs():
	if Input.is_action_pressed("restart"):
		get_tree().change_scene("res://scenes/LoseScreen.tscn")

func _on_Goal_body_entered(body):
	if (body.name == "Player"):
		print("Escaped!!")
		get_tree().change_scene("res://scenes/WinScreen.tscn")
	# Scene switch to Win


func _on_Timer_timeout():
	print ("Timeout")
	timeout = true # Replace with function body.
