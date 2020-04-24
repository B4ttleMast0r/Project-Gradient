//get inputs
input_left = keyboard_check(ord("A"));
input_right = keyboard_check(ord("D"));
input_jump = keyboard_check_pressed(ord("W"));
input_bomb = mouse_check_button_pressed(mb_right);


var move = right - left;

//vertical movement
vertspd += gravity_custom;

if onground {
	plyrinputaccel = 0.5;
	afkdecel = 0.3;
	hspdcap = 3;
	spdcapdecelfactor = 0.96
}else{
	plyrinputaccel = 0.5;
	afkdecel = 0.5;
	hspdcap = 3;
	spdcapdecelfactor = 0.96
}

//jumpbuffer
onground = place_meeting(x, y + 1, oWall);
if onground jumpbuffer = 6;
jumpbuffer --;
if input_jump jumprequest = 6;
jumprequest --;
//ground jump
if jumpbuffer >= 0 {
	if jumprequest > 0 {
		jumpbuffer = 0;
		vertspd = -7.2;
	}
}
//horizontal collision
if place_meeting(x + horizspd, y, oWall) {
	var onepixel = sign(horizspd);
	while(!place_meeting(x + onepixel, y, oWall)) x += onepixel;
	horizspd = 0;
}

//vertical collision
if place_meeting(x, y + vertspd, oWall) {
	var onepixel = sign(vertspd);
	while(!place_meeting(x, y + onepixel, oWall)) y += onepixel;
	vertspd = 0;
}

//corner collisions
if place_meeting(x + horizspd, y + vertspd, oWall) {
	vertspd = 0;
	horizspd = 0;
}

x += horizspd;
y += vertspd;

//animation
if onground {
	if move == 0 {
		sprite_index = sPlayerIdle;
		image_speed = 1;
	}
	else {
		if abs(hsp) > 1.5 {
			sprite_index = sPlayerRunning;
			image_speed = abs(hsp);
		}
	}
} else {
	sprite_index = sPlayerJumping;
	if vsp <= -5 image_index = 0;
	if vsp <= 0 && vsp > -3 image_index = 1;
	if vsp > 0 && vsp <= 3  image_index = 2;
	if vsp > 5 image_index = 3;
}
if move != 0 image_xscale = move;
//sound
soundcooldown--;
/*if (onground){
	if (soundcooldown < 1) {
		if (image_index > 3 && image_index < 4) || (image_index > 7 && image_index < 8) {
			audio_sound_pitch(sn_footstep, random_range(0.8, 1.2));
			audio_play_sound(sn_footstep, 60, 0);
			soundcooldown = 20
		}
	}
}
*/		

//room reload
if keyboard_check_pressed(ord("R")) game_restart();
/*
if y > 450 {
	x = 64;
	y = 336;
}
*/
//screen wrap
if x > room_width + 10 x = -9;
if x < -10 x = room_width + 9;
//bomb
bombcooldown --;

if input_bomb && bombcooldown <= 0 {
	bombcooldown = 45;
	with(instance_create_layer(x, y, "instances", oWaterbomb)){
		image_speed = 0
		direction = point_direction(x, y, mouse_x, mouse_y)
		horizspd = lengthdir_x(12, direction);
		vertspd = lengthdir_y(12, direction);
	}
	oHandtwo.bombthrown = true;
}
//draw text
draw_set_color(c_white);
draw_text(50, 50, "hello");
global.imagenumb = image_index;