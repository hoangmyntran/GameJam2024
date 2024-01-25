show_debug_message("Button Pressed");
if window_get_fullscreen() {
	show_debug_message("Fullscreen");
	window_set_fullscreen(false);
} else {
	window_set_fullscreen(true);
	show_debug_message("Not Fullscreen");
}





