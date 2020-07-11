/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

dir = sign(oPlayer.x-x)

hsp = 2 * dir
vsp += grv;
onground = (place_meeting(x , y + 1, oWall));

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
if ((((oPlayer.x - x) > 50) || ((oPlayer.x - x) < -50)) &&(((oPlayer.x - x) < 150) || ((oPlayer.x - x) > -150))){
x += hsp;
}
y += vsp;
if hsp == 0 {
	vsp = jumpforce;
}
y += vsp;
	