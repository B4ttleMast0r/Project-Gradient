leftbutton = keyboard_check(ord("A"));
rightbutton = keyboard_check(ord("D"));
abutton = keyboard_check_pressed(ord("K"));
bbutton = keyboard_check_pressed(ord("J"));
var move = rightbutton - leftbutton;

hsp = move * movespeed;
vsp += grv;

onground = (place_meeting(x , y + 1, oWall));


if abutton && onground{
	audio_sound_pitch(sn_jump, random_range(0.8, 1.2));
			audio_play_sound(sn_jump, 60, 0);
	vsp = jumpforce;
}

if(place_meeting(x + hsp, y, oWall)) 
{
	while(!place_meeting(x + sign(hsp), y, oWall)) 
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

if(place_meeting(x , y + vsp, oWall)) 
{
	while(!place_meeting(x, y + sign(vsp), oWall)) 
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

//animation
if hsp == 0 {
	sprite_index = sPlayerIdle;
} else {
	sprite_index = sPlayerRunning;
	image_xscale = sign(hsp);
}
if !onground {
	sprite_index = sPlayerJumping;
	if vsp > 0 {
		image_index = 1;
	} else {
		image_index = 0;
	}
}
if death {
	audio_sound_pitch(sn_hit, random_range(0.8, 1.2));
			audio_play_sound(sn_hit, 60, 0);
	room_restart();
	x = startx
	y = starty
}
if bbutton {
	audio_sound_pitch(sn_shot, random_range(0.8, 1.2));
			audio_play_sound(sn_shot, 60, 0);
		with (instance_create_layer(oPlayer.x,oPlayer.y,"Instances",obulletgud)){
		spd = oPlayer.image_xscale* 4;
		image_xscale = oPlayer.image_xscale
		x += spd;
	}

}

x += hsp;
y += vsp;

if place_meeting(x,y+1,oLaufbandLinks){
	x += -2;
}
if place_meeting(x,y+1,oLaufbandRechts){
	x += 2;
}

if place_meeting(x, y, oSpike) {
	death = true;
}

if place_meeting(x, y, oCh1) {
	global.startx = oCh1.x
	global.starty = oCh1.y
}
if place_meeting(x, y, oCh2) {
	startx = oCh2.x
	starty = oCh2.y
}
if place_meeting(x, y, oCh3) {
	startx = oCh3.x
	starty = oCh3.y
}
if place_meeting(x, y, oCh4) {
	startx = oCh4.x
	starty = oCh4.y
}
if place_meeting(x, y, oCh5) {
	startx = oCh5.x
	starty = oCh5.y
}
if place_meeting(x, y, oCh6) {
	startx = oCh6.x
	starty = oCh6.y
}
if place_meeting(x, y, oCh7) {
	startx = oCh7.x
	starty = oCh7.y
}
if place_meeting(x, y, oCh7) {
	startx = oCh7.x
	starty = oCh7.y
}
if place_meeting(x, y, oCh8) {
	startx = oCh8.x
	starty = oCh8.y
}
if place_meeting(x, y, oCh9) {
	startx = oCh9.x
	starty = oCh9.y
}
if place_meeting(x, y, oCh) {
	startx = oCh.x
	starty = oCh.y
}

