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
if ((sign(oPlayer.x-x)*(oPlayer.x-x)>50 && !(sign(oPlayer.x-x)*(oPlayer.x-x)>200))|| (sign(oPlayer.x-x)*(oPlayer.x-x)<200 && !(sign(oPlayer.x-x)*(oPlayer.x-x)<50))){
	x += hsp;
	sprite_index = sEnemyRunning;
}else {
	sprite_index = sEnemyShoot;
}
	
image_xscale = sign(oPlayer.x - x);

if hsp == 0 && !(oPlayer.x == x){
	vsp = jumpforce;
}
y += vsp;

	