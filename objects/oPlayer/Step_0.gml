/// @description Player Actions

// Variables to track the old sprite and the current frame range
var oldSprite = sprite_index;
var frameStart = 0;
var frameEnd = 0;

// ---------- Keys  ---------- //
// Movement interactions
var left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var up = keyboard_check(vk_up) || keyboard_check(ord("W"));
var down = keyboard_check(vk_down) || keyboard_check(ord("S"));

// Actions
var sprint = keyboard_check(vk_shift);
var interact = keyboard_check(ord("F"));
var spaceBar = keyboard_check_pressed(vk_space);
var attack = keyboard_check_pressed(vk_control);

var menu = keyboard_check(vk_escape);


// ---------- Movement & Collision ---------- //
var inputDir = point_direction(0, 0, right - left, down - up);
var inputMagnitude = ((right - left) != 0) || ((down - up) != 0);

// ----- Sprint
if (currentStam < sprintDrain) { sprintCooldown =  room_speed * 2; }
if (sprintCooldown > 0) { sprintCooldown -= 1; }

if (sprint && (currentStam > sprintDrain) && inputMagnitude != 0 && sprintCooldown <= 0) {
	var hSpeed = lengthdir_x(inputMagnitude * sprintMovementSpeed, inputDir);
	var vSpeed = lengthdir_y(inputMagnitude * sprintMovementSpeed, inputDir);
	image_speed = 0.4;
	currentStam -= sprintDrain;
}
else {
	var hSpeed = lengthdir_x(inputMagnitude * movementSpeed, inputDir);
	var vSpeed = lengthdir_y(inputMagnitude * movementSpeed, inputDir);
	image_speed = 0.2;
	if (currentStam < maxStam) {
		currentStam += stamRegen;	
	}
}

// ----- Collision
// Horizontal collision detection
if (!place_meeting(x + hSpeed, y, all)) {
    x += hSpeed;
}

// Vertical collision detection
if (!place_meeting(x, y + vSpeed, all)) {
    y += vSpeed;
}


// ---------- Sprite Animation Handling ---------- //

if (inputMagnitude != 0) 
{
    direction = inputDir; // Update the direction based on movement
    sprite_index = walkingSprite;
    image_speed = 1;
	
	if (!audio_is_playing(walking_sound)) {
        walking_sound = audio_play_sound(walkingSoundFile, 1, true); 
    }
    
    if (right && down) {
        idleImageNum = 1;
        frameStart = 6;
        frameEnd = 11;
    }
    else if (right && up) {
        idleImageNum = 3;
        frameStart = 18;
        frameEnd = 23;
    }
	else if (left && up) {
        idleImageNum = 5;
        frameStart = 30;
        frameEnd = 35;
    }
	else if (left && down) {
        idleImageNum = 7;
        frameStart = 42;
        frameEnd = 47;
    }
	else if (right) {
        idleImageNum = 2;
        frameStart = 12;
        frameEnd = 17;
    }
	else if (up) {
        idleImageNum = 4;
        frameStart = 24;
        frameEnd = 29;
    } 
	else if (left) {
        idleImageNum = 6;
        frameStart = 36;
        frameEnd = 41;
    }
	else if (down) {
        idleImageNum = 0;
        frameStart = 0;
        frameEnd = 5;
    }
    
    if (image_index < frameStart || image_index > frameEnd) {
        image_index = frameStart;
    }
}
else
{
    sprite_index = idleSprite;
    image_index = idleImageNum;
    image_speed = 0;
	if (audio_is_playing(walking_sound)) {
		audio_stop_sound(walking_sound);
		walking_sound = noone;
	}
}

if (oldSprite != sprite_index) {
    image_speed = 0;
    image_index = idleImageNum;
}


// ---------- Player Actions ---------- //
if (interact) 
{
	
}
if (spaceBar) {
    // Perform action on space bar press
}

// ----- Menu Items ----- //
if (menuCooldown > 0) {
    menuCooldown -= 1;
}

// Pauses the game and opens button menu
if (menu && menuCooldown <= 0) {
	event_user(0);
	menuCooldown = room_speed * 0.5;
}

if (attack) {
    // Perform attack
}


// ----- Camera Control ----- //
var cam = view_camera[0];

// Calculate the new camera position
var cam_x = x - (camera_get_view_width(cam) / 2);
var cam_y = y - (camera_get_view_height(cam) / 2);

// Set the camera position
camera_set_view_pos(cam, cam_x, cam_y);