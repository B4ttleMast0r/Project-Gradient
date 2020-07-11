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


x += hsp;
y += vsp;