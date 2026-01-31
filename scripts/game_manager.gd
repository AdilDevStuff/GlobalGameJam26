extends Node
class_name GameManager

@export var hidden_tileset: TileMapLayer

func _ready() -> void:
	hidden_tileset.enabled = false
	Events.MaskSwitched.connect(on_mask_switched)

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("restart"):
		get_tree().reload_current_scene()

func on_mask_switched(mask) -> void:
	match mask:
		0: # None
			hidden_tileset.enabled = false
		1: # Red
			hidden_tileset.enabled = false
		2: # Blue
			hidden_tileset.enabled = false
		3: # Green
			hidden_tileset.enabled = true
