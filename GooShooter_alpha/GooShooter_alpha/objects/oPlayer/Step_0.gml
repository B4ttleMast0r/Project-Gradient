//get inputs
input_left = keyboard_check(ord("A"));
input_right = keyboard_check(ord("D"));
input_jump = keyboard_check_pressed(ord("W"));
input_jump_held = keyboard_check(ord("W"));
input_bomb = mouse_check_button_pressed(mb_right);

var input_move = input_right - input_left;


//onground or not, initiate movement physics stats
onground = place_meeting(x, y + 1, oWall);
if onground {
	plyrinputaccel = 0.9;
	afkdecel = 0.5;
	hspdcap = 3.5;
	vspdcap = 12;
	hspdcapdecelfactor = 0.88;
	vspdcapdecelfactor = 0.80;
}else{ //airborne
	plyrinputaccel = 0.6;
	afkdecel = 0.3;
	hspdcap = 3.5;
	vspdcap = 12;
	hspdcapdecelfactor = 0.88;
	vspdcapdecelfactor = 0.80;
}

//accelerate based on player input
horizspd += plyrinputaccel * input_move;

//decelerate if no button is pressed
if horizspd > 0 {
	horizspd -= afkdecel;
	if horizspd < 0 {
		horizspd = 0;
	}
}
if horizspd < 0 {
	horizspd += afkdecel;
	if horizspd > 0 {
		horizspd = 0;
	}
}

//jumpbuffer
if input_jump {
	jumprequesttimer = 6;
}else {
	jumprequesttimer --;
}
//ground jump
if jumprequesttimer > 0 && onground == true{
		jumprequesttimer = 0;
		vertspd = -7;
		jumping_upwards = true;
}
if vertspd > 0 {
	jumping_upwards = false;
}
//make the jumpheight greater, the longer you press the button
if (!input_jump_held && vertspd < 0 && vertspd > - 7) {
	vertspd *= 0.8;
} 

//gravity
vertspd += gravity_custom;

//decelerate if above speed cap
if abs(horizspd) > hspdcap {
	horizspd = horizspd * hspdcapdecelfactor;
}
if abs(vertspd) > vspdcap {
	vertspd = vertspd * vspdcapdecelfactor;
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

//apply speed
x += horizspd;
y += vertspd;

//screen wrap
if x >= room_width + 10 {x = (-10) + (x-(room_width+10));}
if x <= -10 {x = (room_width + 10) + x;}

//airborne timer 
if onground {
	airbornetimer = 0;
}else{
	airbornetimer ++;
}

//animation
if onground {
	if input_move == 0 {
		sprite_index = sPlayerIdle;
		image_speed = 1;
	}
	else {
		if abs(horizspd) > 2 {
			sprite_index = sPlayerRunning;
			image_speed = abs(horizspd) * 1.3;
		}
	}
} else {
	if airbornetimer > 6 || vertspd < -3  {
		sprite_index = sPlayerJumping;
		if vertspd <= -5 {image_index = 0;}
		if vertspd <= 0 && vertspd > -3 {image_index = 1;}
		if vertspd > 0 && vertspd <= 3  {image_index = 2;}
		if vertspd > 5 {image_index = 3;}
	}
}
//flip sprite
if input_move != 0 image_xscale = input_move;

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


/*
if y > 450 {
	x = 64;
	y = 336;
}
*/

//room reload
if keyboard_check_pressed(ord("R")) game_restart();



//draw text
draw_set_color(c_white);
draw_text(50, 50, "hello");
global.imagenumb = image_index;