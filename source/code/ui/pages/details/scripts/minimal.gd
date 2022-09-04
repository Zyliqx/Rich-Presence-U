extends "res://code/ui/common/buttons/toggle.gd"

func _ready() -> void:
	
	# Connect signals
	Main.connect("system_changed", self, "_on_System_changed")
	
	# Locale keys
	set_title("MINIMAL_STATUS_TITLE")
	set_hint("MINIMAL_STATUS_HINT")

# Signals
func _on_System_changed() -> void:
	
	# Update configurations on UI
	set_check(Main.data_system["minimal_status"])

func _on_Minimal_toggled(button_pressed: bool) -> void:
	
	Main.data_system["minimal_status"] = button_pressed
	Main.emit_signal("status_changed")
