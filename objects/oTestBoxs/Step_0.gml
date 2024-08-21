
if (playerNearby()) 
{
	if (textBoxCreated == noone) {
		textBoxCreated = instance_create_layer(x, y, "Text", obj_textBox);
		textBoxCreated.text = "If I don't see you again. Good morning, Good afternoon & Good night";
	}
}

if (!playerNearby() && textBoxCreated != noone) {
	instance_destroy(textBoxCreated);
	textBoxCreated = noone;
}
