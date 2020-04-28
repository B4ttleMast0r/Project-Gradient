/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

if oPlayer.input_left directionoffset =  -2
if oPlayer.input_right directionoffset = 2

image_xscale = oPlayer.image_xscale;



if bombthrown = true {
	bombthrown = false;
	throwarmanimationtime = 10;
}
throwarmanimationtime --;
if throwarmanimationtime >= 0 {
	image_angle = point_direction(x, y, mouse_x, mouse_y);
	sprite_index = sSecondhandThrowing;
	
	if image_angle < 90 || image_angle > 270 {
		image_yscale = 1;
	} else {
		image_yscale = -1;
	}
	image_angle += sign(image_yscale) * 90;
} else {
	image_angle  = 0;
	if oPlayer.sprite_index == sPlayerIdle {
		sprite_index = sSecondhandIdle;
	}else {
		sprite_index = sSecondhandRunning;
		directionoffset = 0
	}
	image_yscale = 1;
}

image_index = oPlayer.image_index;
x = oPlayer.x  + directionoffset;
y = oPlayer.y - 8 + idleoffset;
