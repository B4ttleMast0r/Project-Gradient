/// @description 

image_xscale = bombrange / 88
image_yscale = bombrange / 88

knockbackangle = point_direction(x, y, oPlayer.x, oPlayer.y);
//ver 4
if eightdir {
	//right (6)
	if knockbackangle > 337.5 || knockbackangle < 22.5 {
		knockbackangle = 0;
	}
	//right-up (9)
	if knockbackangle > 22.5 && knockbackangle < 67.5 {
		knockbackangle = 45;
	}
	//up (8)
	if knockbackangle > 67.5 && knockbackangle < 112.5 {
		knockbackangle = 90;
	}
	//up-left (7)
	if knockbackangle > 112.5 && knockbackangle < 157.5 {
		knockbackangle = 135;
	}
	//left (4)
	if knockbackangle > 157.5 && knockbackangle < 202.5 {
		knockbackangle = 180;
	}
	//left-down (1)
	if knockbackangle > 202.5 && knockbackangle < 247.5 {
		knockbackangle = 225;
	}
	//down( 2)
	if knockbackangle > 247.5 && knockbackangle < 292.5 {
		knockbackangle = 270;
	}
	//down-right (3)
	if knockbackangle > 292.5 && knockbackangle < 337.5 {
		knockbackangle = 315;
	}
}
if sixteendir {
	//right (6)
	if knockbackangle > 337.5 || knockbackangle < 22.5 {
		knockbackangle = 0;
	}
	//right-up (9)
	if knockbackangle > 22.5 && knockbackangle < 67.5 {
		knockbackangle = 45;
	}
	//up (8)
	if knockbackangle > 67.5 && knockbackangle < 112.5 {
		knockbackangle = 90;
	}
	//up-left (7)
	if knockbackangle > 112.5 && knockbackangle < 157.5 {
		knockbackangle = 135;
	}
	//left (4)
	if knockbackangle > 157.5 && knockbackangle < 202.5 {
		knockbackangle = 180;
	}
	//left-down (1)
	if knockbackangle > 202.5 && knockbackangle < 247.5 {
		knockbackangle = 225;
	}
	//down( 2)
	if knockbackangle > 247.5 && knockbackangle < 292.5 {
		knockbackangle = 270;
	}
	//down-right (3)
	if knockbackangle > 292.5 && knockbackangle < 337.5 {
		knockbackangle = 315;
	}
}
if point_distance(x,y,oPlayer.x,oPlayer.y) <= (bombrange / 2) {
	knockbackspeed = baseknockbackspeed;
}
if point_distance(x,y,oPlayer.x,oPlayer.y) > (bombrange / 2) {
	knockbackspeed = baseknockbackspeed - ((point_distance(x,y,oPlayer.x,oPlayer.y) - (bombrange / 2)) / (bombrange / 2) * (baseknockbackspeed * 0.375));
}
if knockbackspeed < 0 {knockbackspeed = 0;}
if place_meeting(x,y,oPlayer) {
	oPlayer.hitbybomb = true;
	oPlayer.horizspd = ((oPlayer.horizspd + lengthdir_x(knockbackspeed, knockbackangle))+(lengthdir_x(knockbackspeed, knockbackangle))) / 2;
	oPlayer.vertspd = ((oPlayer.vertspd + lengthdir_y(knockbackspeed, knockbackangle))+(lengthdir_y(knockbackspeed, knockbackangle))) / 2;
	repeat (3){
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