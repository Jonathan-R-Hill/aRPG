
function unPauseGame() {
	show_debug_message("Button clicked: " + text);
	
	instance_activate_layer("Instances");
	instance_activate_layer("Map_Transport")
	
	instance_destroy(Button);
}