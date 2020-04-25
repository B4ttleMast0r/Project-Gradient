/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
horizspd = lengthdir_x(spd, direction)
vertspd = lengthdir_y(spd, direction)

image_angle = direction;
if place_meeting(x + horizspd, y, oWall) {
	var onepixel = sign(horizspd);
	while(!place_meeting(x + onepixel, y, oWall)) x += onepixel;
	horizspd = 0;
	vertspd = 0;
	if onepixel wallhitside = 90 else wallhitside = 270;
	hit = true;
	if onepixel = 1 walldirection = 0; else walldirection = 2;
	image_speed = 5
	image_angle = walldirection * 90;
}

//vertical collision
if place_meeting(x, y + vertspd, oWall) {
	var onepixel = sign(vertspd);
	while(!place_meeting(x, y + onepixel, oWall)) y += onepixel;
	vertspd = 0;
	horizspd = 0;
	if onepixel wallhitside = 0 else wallhitside = 180;
	hit = true;
	if onepixel = 1 walldirection = 3; else walldirection = 1;
	image_speed = 5
	image_angle = walldirection * 90;
}

if hit {
	audio_sound_pitch(sn_pistolbullethit, random_range(0.8, 1.2));
	audio_play_sound(sn_pistolbullethit, 60, 0);
	hit = false;
}

x += horizspd
y += vertspd
