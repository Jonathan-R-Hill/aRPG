/// @description Execute script & detect mouse over

var _hover = getHover();
var click = _hover && mouse_check_button_pressed(mb_left);

hover = lerp(hover, _hover, 0.1);

if (click && script >= 0) {
	script_execute(script);	
}
