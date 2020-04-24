/// @description oWaterfalls
vsp += oPlayer.grv


//horizontal collision
if place_meeting(x + hsp, y, oWall) {
	var onepixel = sign(hsp);
	while(!place_meeting(x + onepixel, y, oWall)) x += onepixel;
	hsp = -hsp;
	if onepixel wallhitside = 90 else wallhitside = 270;
	hit = true;
	if onepixel = 1 walldirection = 0; else walldirection = 2;
}

//vertical collision
if place_meeting(x, y + vsp, oWall) {
	var onepixel = sign(vsp);
	while(!place_meeting(x, y + onepixel, oWall)) y += onepixel;
	vsp = -vsp;
	if onepixel wallhitside = 0 else wallhitside = 180;
	hit = true;
	if onepixel = 1 walldirection = 3; else walldirection = 1;
}
if hit {
	if point_distance(oPlayer.x,oPlayer.y,x,y) < bombrange {
		with(oPlayer){
			var bombspeed = 10;
			var a = bombspeed*2/3
			var angle = point_direction(x,y,oWaterbomb.x,oWaterbomb.y)
			if angle < 22.5 || angle > 337.5 hsp -= bombspeed
			if angle < 202.5 && angle > 157.5 hsp += bombspeed
			if angle < 112.5 && angle > 67.5 vsp += bombspeed
			if angle < 292.5 && angle > 247.5 vsp -= bombspeed
			if angle < 67.5 && angle > 22.5 { 
				hsp = -a
				vsp = a
			}
			if angle < 157.5 && angle > 112.5 { 
				hsp = a
				vsp = a
			}
			if angle < 247.5 && angle > 202.5 { 
				hsp = a
				vsp = -a
			}
			if angle < 337.5 && angle > 292.5 { 
				hsp = -a
				vsp = -a
			}
		}
	}
	repeat(10) {
		instance_create_layer(x, y, "Instances", oWaterparticle);
	}
	with (instance_create_layer(x, y, "Instances", oWaterbombExplosion)) {
		image_angle = oWaterbomb.walldirection * 90 + 90;
	}
	
	
	instance_destroy()
}

x += hsp;
y += vsp;