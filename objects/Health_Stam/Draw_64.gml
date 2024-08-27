if (object_exists(oPlayer)) 
{
	var player = oPlayer;
	
	// ---------- Health Bar ---------- //
	var healthX = 160;
	var healthY = 117;
	var healthWidth = 287;
	var healthHeight = 32;

	if (player.currentHealth > player.maxHealth) { player.currentHealth = player.maxHealth; }

	// Draw filled portion
	var slant_angle = 30;
	var slant_offset = tan(degtorad(slant_angle)) * healthHeight;

	var filled_width = healthWidth * (player.currentHealth / player.maxHealth);

	// Draw the filled portion of the health bar (slanted)
	draw_primitive_begin(pr_trianglestrip);
	draw_vertex_color(healthX, healthY, c_red, 1); // Top-left vertex
	draw_vertex_color(healthX + filled_width, healthY, c_red, 1); // Top-right vertex
	draw_vertex_color(healthX - slant_offset, healthY + healthHeight, c_red, 1); // Bottom-left vertex
	draw_vertex_color(healthX + filled_width - slant_offset, healthY + healthHeight, c_red, 1); // Bottom-right vertex
	draw_primitive_end();
	
	if (player.currentHealth > player.maxHealth) { player.currentHealth = player.maxHealth; }
	if (player.currentHealth <= 0) { player.currentHealth = 0; }


	// ---------- Stamina Bar ---------- //
	var stamX = 147;
	var stamY = 156;
	var stamWidth = 267;
	var stamHeight = 9;

	if (player.currentStam > player.maxStam) { player.currentStam = player.maxStam; }

	// Draw filled portion
	var slant_offset_stam = tan(degtorad(slant_angle)) * stamHeight;
	var filled_width_stam = stamWidth * (player.currentStam / player.maxStam);

	draw_primitive_begin(pr_trianglestrip);
	draw_vertex_color(stamX, stamY, c_yellow, 1); // Top-left vertex
	draw_vertex_color(stamX + filled_width_stam, stamY, c_yellow, 1); // Top-right vertex
	draw_vertex_color(stamX - slant_offset_stam, stamY + stamHeight, c_yellow, 1); // Bottom-left vertex
	draw_vertex_color(stamX + filled_width_stam - slant_offset_stam, stamY + stamHeight, c_yellow, 1); // Bottom-right vertex
	draw_primitive_end();

	if (player.currentStam > player.maxStam) { player.currentStam = player.maxStam; }
	if (player.currentStam <= 0) { player.currentStam = 0; }
	
	// Draw background
	if (oPlayer.currentHealth >= oPlayer.maxHealth * 0.75) { draw_sprite(sPlayerHealth, 2, 50, 50); }
	else if (oPlayer.currentHealth >= oPlayer.maxHealth * 0.50) { draw_sprite(sPlayerHealth, 1, 50, 50); }
	else if (oPlayer.currentHealth >= 1) { draw_sprite(sPlayerHealth, 0, 50, 50); }
}
