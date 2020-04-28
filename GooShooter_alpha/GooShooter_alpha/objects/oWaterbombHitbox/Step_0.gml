/// @description Insert description here

image_xscale = bombrange / 88
image_yscale = bombrange / 88
if place_meeting(x,y,oPlayer) {
	with(oPlayer){
		hitbybomb = true;
		var a = sqrt((sqr(oWaterbombHitbox.knockbackspeed))/2);
		var angle = point_direction(x,y,oWaterbombHitbox.x,oWaterbombHitbox.y);
		if angle < 22.5 || angle > 337.5 {horizspd = -oWaterbombHitbox.knockbackspeed;}
		if angle < 202.5 && angle > 157.5 {horizspd = oWaterbombHitbox.knockbackspeed;}
		if angle < 112.5 && angle > 67.5 {vertspd = oWaterbombHitbox.knockbackspeed;}
		if angle < 292.5 && angle > 247.5 {vertspd = -oWaterbombHitbox.knockbackspeed;}
		if angle < 67.5 && angle > 22.5 { 
			horizspd = -a;
			vertspd = a;
		}
		if angle < 157.5 && angle > 112.5 { 
			horizspd = a;
			vertspd = a;
		}
		if angle < 247.5 && angle > 202.5 { 
			horizspd = a;
			vertspd = -a;
		}
		if angle < 337.5 && angle > 292.5 { 
			horizspd = -a;
			vertspd= -a;
		}
	}
}
instance_destroy();