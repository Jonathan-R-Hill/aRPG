/*
@arg _x x co-ord
@arg _y y co-ord
@arg _width 
@arg _height
@arg _text  button text
@arg _script  script to run
*/
function createButton(_x, _y, _width, _height, _text, _script) {
	var _button = instance_create_layer(_x, _y, "UI", Button);
	
	with (_button) {
		width = _width;
		height = _height;
		text = _text;
		script = _script;
	}
	
	return _button;
}