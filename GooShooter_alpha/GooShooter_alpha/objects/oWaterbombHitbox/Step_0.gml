/// @description 

image_xscale = bombrange / 88
image_yscale = bombrange / 88

knockbackangle = point_direction(x, y, oPlayer.x, oPlayer.y);
//ver 4
if point_distance(x,y,oPlayer.x,oPlayer.y) <= (bombrange / 2) {
	knockbackspeed = baseknockbackspeed;
}
if point_distance(x,y,oPlayer.x,oPlayer.y) > (bombrange / 2) {
	knockbackspeed = baseknockbackspeed - ((point_distance(x,y,oPlayer.x,oPlayer.y) - (bombrange / 2)) / (bombrange / 2) * (baseknockbackspeed * 0.3));
}
if knockbackspeed < 0 {knockbackspeed = 0;}
if place_meeting(x,y,oPlayer) {
	oPlayer.hitbybomb = true;
	oPlayer.horizspd = ((oPlayer.horizspd + lengthdir_x(knockbackspeed, knockbackangle))+(lengthdir_x(knockbackspeed, knockbackangle))) / 2;
	oPlayer.vertspd = ((oPlayer.vertspd + lengthdir_y(knockbackspeed, knockbackangle))+(lengthdir_y(knockbackspeed, knockbackangle))) / 2;
	repeat (2){
		oPlayer.horizspd = (oPlayer.horizspd + (lengthdir_x(knockbackspeed, knockbackangle))) / 2;
		oPlayer.vertspd = (oPlayer.vertspd + (lengthdir_y(knockbackspeed, knockbackangle))) / 2;
	}
}

//ver 3
/*if place_meeting(x,y,oPlayer) {
	oPlayer.hitbybomb = true;
	oPlayer.horizspd = ((oPlayer.horizspd + lengthdir_x(knockbackspeed, knockbackangle))+(lengthdir_x(knockbackspeed, knockbackangle))) / 2;
	oPlayer.vertspd = ((oPlayer.vertspd + lengthdir_y(knockbackspeed, knockbackangle))+(lengthdir_y(knockbackspeed, knockbackangle))) / 2;
}*/

//ver 2
/*if place_meeting(x,y,oPlayer) {
	oPlayer.hitbybomb = true;
	oPlayer.horizspd += lengthdir_x(knockbackspeed, knockbackangle);
	oPlayer.vertspd += lengthdir_y(knockbackspeed, knockbackangle);
}*/

//ver 1
/*if place_meeting(x,y,oPlayer) {
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
}*/


instance_destroy();