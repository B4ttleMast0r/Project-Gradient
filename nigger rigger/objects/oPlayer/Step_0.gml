leftbutton = keyboard_check(ord("A"));
rightbutton = keyboard_check(ord("D"));
abutton = keyboard_check_pressed(ord("K"));
bbutton = keyboard_check_pressed(ord("J"));
var move = rightbutton - leftbutton;

hsp = move * movespeed;
vsp += grv;

onground = (place_meeting(x , y + 1, oWall));


if abutton && onground
{
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
	audio_sound_pitch(sn_footstep, random_range(0.8, 1.2));
			audio_play_sound(sn_footstep, 60, 0);
	room_restart();
	x = startx
	y = starty
}
if bbutton {
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