/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
//direction = point_direction(x, y, mouse_x, mouse_y) + recoil



if point_direction(x, y, mouse_x, mouse_y) < 90 || point_direction(x, y, mouse_x, mouse_y) > 270 image_yscale = 1 else image_yscale = -1
/*
if oPlayer.horizspd == 0 {
		sprite_index = sWeaponIdle;
	}
	else {
		if  recoil == 0{
			sprite_index = sWeaponRunning;
		}else{
			sprite_index = sWeaponIdle;
		}
			
	}
*/
/*
if oPlayer.sprite_index = sPlayerIdle {
	if global.imagenumb < 1 image_index = global.imagenumb; 
	else if global.imagenumb < 2; 
	else if global.imagenumb < 3;
	else if global.imagenumb < 4;
	
} else idleoffset = 0;
*/


if oPlayer.input_left directionoffset =  0
if oPlayer.input_right directionoffset = 0




if x-mouse_x > 0 {
	direction = point_direction(x, y, mouse_x, mouse_y) - recoil
}else{
	direction = point_direction(x, y, mouse_x, mouse_y) + recoil
		
}

//decides, wether or not to aim towards the mouse
if oPlayer.sprite_index = sPlayerRunning && recoil < 1 {
	followmouse = false;
	image_yscale = sign(oPlayer.horizspd);
	image_angle = sign(oPlayer.horizspd) * 90 + 270;
	sprite_index = sWeaponRunning;
} else {
	followmouse = true;
	image_angle = direction;
		if (((point_direction(x, y, mouse_x, mouse_y) > 85 && point_direction(x, y, mouse_x, mouse_y) < 95) || (point_direction(x, y, mouse_x, mouse_y) > 260 && point_direction(x, y, mouse_x, mouse_y) < 280)) && recoil < 1) {
		sprite_index = sWeaponTopAndBot;
	}else{
		sprite_index = sWeaponIdlenew;
	}
}

	

if mouse_check_button_pressed(mb_left) && !oPlayer.plyrdead{
	audio_sound_pitch(sn_pistolshot1, random_range(0.8, 1.2));
	audio_sound_pitch(sn_pistolshot2, random_range(0.8, 1.2));
	audio_play_sound(choose(sn_pistolshot1, sn_pistolshot2), 60, 0);
	with (instance_create_layer(x, y, "Instances", oShot)) {
		direction = oWeapon.direction + random_range(-5,5)
		with(oPlayer){
			var shotspeed = 1.4;
			var a = sqrt((shotspeed * shotspeed)/2)
			var angle = oWeapon.direction
			if angle < 22.5 || angle > 337.5 horizspd += -shotspeed
			if angle < 202.5 && angle > 157.5 horizspd += shotspeed
			if angle < 112.5 && angle > 67.5 vertspd += shotspeed
			if angle < 292.5 && angle > 247.5 vertspd += -shotspeed
			if angle < 67.5 && angle > 22.5 { 
				horizspd += -a
				vertspd += a
			}
			if angle < 157.5 && angle > 112.5 { 
				horizspd += a
				vertspd += a
			}
			if angle < 247.5 && angle > 202.5 { 
				horizspd += a
				vertspd += -a
			}
			if angle < 337.5 && angle > 292.5 { 
				horizspd += -a
				vertspd += -a
			}
		}
	}
	

	if  recoil < 50 {
		recoil += 20
	}
}
	


	


if !recoil < 1 {
	recoil = recoil - 1.5
}else{
	recoil = 0
}

image_index = oPlayer.image_index;
if point_direction(x, y, mouse_x, mouse_y) < 90 || point_direction(x, y, mouse_x, mouse_y) > 270 {
	directionoffset = -2 * oPlayer.image_xscale
}else{
	directionoffset = -2 * oPlayer.image_xscale
	
}

if oPlayer.image_index < 0 {
	idleoffset = 0
}
if oPlayer.image_index > 0 && oPlayer.image_index > 1 {
	idleoffset = -2
}
if oPlayer.image_index > 1 && oPlayer.image_index > 2 {
	idleoffset = -1
}
if oPlayer.image_index > 2 && oPlayer.image_index > 3 {
	idleoffset = 0
}




x = oPlayer.x  + directionoffset;
y = oPlayer.y - 8 - idleoffset;
