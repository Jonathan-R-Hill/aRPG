if (object_exists(oPlayer)) 
{
	var player = oPlayer;
	
	// ---------- Health Bar ---------- //
	var healthX = 50;
	var healthY = 50;
	var healthWidth = 196;
	var healthHeight = 28;

	if (player.currentHealth > player.maxHealth) { player.currentHealth = player.maxHealth; }

	// Draw background
	draw_rectangle_color(
	healthX, healthY,
	healthX + healthWidth, healthY + healthHeight,
	c_dkgray, c_dkgray, c_dkgray, c_dkgray, false
	);
	
	// Draw filled portion
	draw_rectangle_color(
	    healthX, healthY,
		healthX + (healthWidth * (player.currentHealth / player.maxHealth)), healthY + healthHeight,
	    c_red, c_red, c_red, c_red, false
	);


	// ---------- Stamina Bar ---------- //
	var stamX = 50;
	var stamY = 100;
	var stamWidth = 196;
	var stamHeight = 28;

	if (player.currentStam > player.maxStam) { player.currentStam = player.maxStam; }

	// Draw background
	draw_rectangle_color(
	stamX, stamY,
	stamX + stamWidth, stamY + stamHeight,
	c_dkgray, c_dkgray, c_dkgray, c_dkgray, false
	);
	
	// Draw filled portion
	draw_rectangle_color(
	    stamX, stamY,
		stamX + (stamWidth * (player.currentStam / player.maxStam)), stamY + stamHeight,
	    c_yellow, c_yellow, c_yellow, c_yellow, false
	);
}
