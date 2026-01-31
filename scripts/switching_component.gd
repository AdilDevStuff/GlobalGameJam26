extends Node
class_name SwitchingComponent

enum Masks {
	NONE,
	RED,
	BLUE,
	GREEN,
}

var mask_index: int = 0

func _input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("switch_none"):
		switch_mask(Masks.NONE)
		print("No Mask Activated")
	elif Input.is_action_just_pressed("switch_red"):
		switch_mask(Masks.RED)
		print("Red Mask Activated")
	elif Input.is_action_just_pressed("switch_blue"):
		switch_mask(Masks.BLUE)
		print("Blue Mask Activated")
	elif Input.is_action_just_pressed("switch_green"):
		switch_mask(Masks.GREEN)
		print("Green Mask Activated")

func switch_mask(selected_mask: Masks) -> void:
	Globals.current_mask = selected_mask
	Events.MaskSwitched.emit(selected_mask)
