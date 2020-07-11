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
	if onground {
		vsp = jumpforce;
	}
}//sdsdihiosrhgisrgihsrgh

if(place_meeting(x , y + vsp, oWall)) 
{
	while(!place_meeting(x, y + sign(vsp), oWall)) 
	{
		y = y + sign(vsp);
	}
	vsp = 0;

}
if ((abs(oPlayer.x-x)>50) && !(abs(oPlayer.x-x)>200)){
	sprite_index = sEnemyRunning;
}else {
	sprite_index = sEnemyShoot;
	hsp = 0;
}

image_xscale = sign(oPlayer.x - x);

x += hsp;
y += vsp;