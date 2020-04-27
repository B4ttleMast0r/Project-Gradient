/// @description oWaterfalls
vertspd += oPlayer.gravity_custom;


//horizontal collision
if place_meeting(x + horizspd, y, oWall) {
	var onepixel = sign(horizspd);
	while(!place_meeting(x + onepixel, y, oWall)) x += onepixel;
	horizspd = -horizspd;
	if onepixel wallhitside = 90 else wallhitside = 270;
	hit = true;
	if onepixel = 1 walldirection = 0; else walldirection = 2;
}

//vertical collision
if place_meeting(x, y + vertspd, oWall) {
	var onepixel = sign(vertspd);
	while(!place_meeting(x, y + onepixel, oWall)) y += onepixel;
	vertspd = -vertspd;
	if onepixel wallhitside = 0 else wallhitside = 180;
	hit = true;
	if onepixel = 1 walldirection = 3; else walldirection = 1;
}
if hit {
	if point_distance(oPlayer.x,oPlayer.y,x,y) < bombrange {
		with(oPlayer){
			hitbybomb = true;
			knockbackspeed = 10;
			var a = sqrt((knockbackspeed * knockbackspeed)/2)
			var angle = point_direction(x,y,oWaterbomb.x,oWaterbomb.y)
			if angle < 22.5 || angle > 337.5 horizspd = -knockbackspeed
			if angle < 202.5 && angle > 157.5 horizspd = knockbackspeed
			if angle < 112.5 && angle > 67.5 vertspd = knockbackspeed
			if angle < 292.5 && angle > 247.5 vertspd = -knockbackspeed
			if angle < 67.5 && angle > 22.5 { 
				horizspd = -a
				vertspd = a
			}
			if angle < 157.5 && angle > 112.5 { 
				horizspd = a
				vertspd = a
			}
			if angle < 247.5 && angle > 202.5 { 
				horizspd = a
				vertspd = -a
			}
			if angle < 337.5 && angle > 292.5 { 
				horizspd = -a
				vertspd= -a
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

x += horizspd;
y += vertspd;