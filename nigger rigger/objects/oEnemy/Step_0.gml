/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben




vsp += grv;


/*if ((((oPlayer.x - x) > 50) || ((oPlayer.x - x) < -50)) && (((oPlayer.x - x) < 150) || ((oPlayer.x - x) > -150))){
	x += hsp;
}*/

if cycle == 0 {
	if walktimer > 0 {
		if walktimer == 40 {
			randomint = random_range(0,1);
			if randomint == 0 {
				dir = -1;
			} else {
				dir = 1;
			}
		}
		walktimer --;
	} else {
		dir = 0;
		cycle = 1;
		walktimer = 40;
	}
}

if cycle == 1 {
	dir = 0;
	shootdir = sign ( oPlayer.x - x);
	if shoottimer > 0 {
		if shoottimer == 20 {
			with instance_create_layer(x + (6 *shootdir), y + 2, "instances", oEnemyShot) {
				vsp = 0;
				shootdir = oEnemy.shootdir;
				hsp = 4 *  shootdir;
			}
		}
		shoottimer --;
	} else {
		walktimer = 40;
		cycle = 0;
	}
}


hsp = 1.5 * dir

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
onground = (place_meeting(x , y + 1, oWall));

/*if hsp == 0 {
	vsp = jumpforce;
}*/
x += hsp;
y += vsp;

if dir != 0 {
	direction = dir;
}