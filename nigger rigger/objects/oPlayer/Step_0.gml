leftbutton = keyboard_check(ord("A"));
rightbutton = keyboard_check(ord("D"));
abutton = keyboard_check_pressed(ord("K"));
bbutton = keyboard_check_pressed(ord("J"));

var move = rightbutton - leftbutton;

hsp = move * movespeed;
vsp += grv;

onground = (place_meeting(x , y + 1, oWall));

/*if (place_meeting(x , y + 1, oWall)) 
{
	onground = true;
}
else 
{
	onground = false;
}
*/
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

x += hsp;
y += vsp;