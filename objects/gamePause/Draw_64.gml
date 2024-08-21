
if (oPlayer.menuOpen) {
	var cam = view_camera[0];

	// Calculate the new camera position
	var cam_x = x - (camera_get_view_width(cam) / 2);
	var cam_y = y - (camera_get_view_height(cam) / 2);
	
	draw_text(cam_x, cam_y, "Game Paused");
}
