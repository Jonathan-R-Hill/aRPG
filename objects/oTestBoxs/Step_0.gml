
if (playerNearby()) 
{
	if (textBoxCreated == noone) {
		textBoxCreated = instance_create_layer(x, y, "Text", obj_textBox);
		textBoxCreated.text = "Well I work don't I?";
	}
}

if (!playerNearby() && textBoxCreated != noone) {
	instance_destroy(textBoxCreated);
	textBoxCreated = noone;
}
