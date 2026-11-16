extends Node2D
@export var dialogue_text: Array = ["hi im trump!", "im obama"]
var line = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	next_line()


func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("dialogue_next"):
		next_line()

func next_line():
	line += 1
	$RichTextLabel.text = dialogue_text[line - 1]
	if line==5:
		$"../AnimationPlayer".play("TrumpKick")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func next_scene():
	get_tree().change_scene_to_file("res://Scenes/RunningScene.tscn")
