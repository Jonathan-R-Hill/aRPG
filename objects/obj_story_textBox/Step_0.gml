var confirm = keyboard_check_pressed(confirm_key);

// type out effect
textProg = min(textProg + textSpeed, textLen);

if (textProg == textLen) {
	if (confirm) { next(); }	
}
else if (confirm) { textProg = textLen; } 
