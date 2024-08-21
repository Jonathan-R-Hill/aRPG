
function Dialogue() constructor 
{
	dialogues = [];
	
	add = function(_sprite, _message) 
	{
		array_push(dialogues, {
			sprite: _sprite,
			message: _message,
		});	
	}
	
	pop = function() 
	{
		var temp = array_first(dialogues);
		array_delete(dialogues, 0, 1);
		return temp;
	}
	
	count = function() { return array_length(dialogues); }
}