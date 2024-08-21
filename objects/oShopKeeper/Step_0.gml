
if (playerNearby()) 
{
	if (textBoxCreated == noone) {
		textBoxCreated = instance_create_layer(x, y, "Text", obj_textBox);
		textBoxCreated.text = "Hello there! Nice to see ya. To see ya nice";
	}
}

if (!playerNearby() && textBoxCreated != noone) {
	instance_destroy(textBoxCreated);
	textBoxCreated = noone;
}
