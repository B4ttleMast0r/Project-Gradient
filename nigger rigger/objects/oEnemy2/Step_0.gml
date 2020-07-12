/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

dir = sign(oPlayer.x-x)
shoot = false;
hsp = 3 * dir
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
	shoot = true;
}

image_xscale = sign(oPlayer.x - x);

if shoot {
	if wait < 20{
		wait++
	}else{
		with (instance_create_layer(oEnemy2.x,oEnemy2.y,"Instances",oBullet)){
		spd = oEnemy2.dir * 4;
		image_xscale = oEnemy2.image_xscale
		x += spd;
		}
		wait = 0;
	}



}
if place_meeting(x,y+1,oLaufbandLinks){
	x += -2;
}
if place_meeting(x,y+1,oLaufbandRechts){
	x += 2;
}

x += hsp;
y += vsp;