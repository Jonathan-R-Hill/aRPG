/// @description (create) Menu press Esc

var _width = 200;
var _height = 80;
var _offset = 90;

createButton(40, 40, _width, _height, "Play", unPauseGame);

createButton(40, 40 + _offset, _width, _height, "Quest Log", onClick);
_offset += 90;
createButton(40, 40 + _offset, _width, _height, "Options", onClick);
_offset += 90;
createButton(40, 40 + _offset, _width, _height, "Quit", onClick);
_offset += 90;

instance_deactivate_layer("Map_Transport");
instance_deactivate_layer("Instances");

