
confirm_key = vk_space;

// Pos
margin = 32;
padding = 8;
width = display_get_gui_width() - margin*2;
height = sprite_height;

x = (display_get_gui_width() - width) / 2;
y = display_get_gui_height() - height - margin;

// Text
textColor = c_white;
textFont = StoryText;
textSpeed = 0.6;
textX = padding;
textY = padding;
textWidth = width - padding*2; // line wrapping distance

actions = [];
currentAction = -1;

text = "";
textProg = 0;
textLen = 0;

// Start convo
setTopic = function(topic) {
	actions = global.topics[$ topic];
	currentAction = -1;
	
	next();
}

next = function() 
{
	currentAction++;
	if (currentAction >= array_length(actions)) {
		instance_destroy();
	}
	else {
		actions[currentAction].act(id);	
	}
}

setText = function(newText) {
	text = newText;
	textLen = string_length(newText);
	textProg = 0;
}
