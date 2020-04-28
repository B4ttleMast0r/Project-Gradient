/// @description oWaterfalls

//update bombposition
oPlayer.bombposition[0] = x;
oPlayer.bombposition[1] = y;


//gravity
vertspd += oPlayer.gravity_custom;

//horizontal collision
if place_meeting(x + horizspd, y, oWall) {
	var onepixel = sign(horizspd);
	while(!place_meeting(x + onepixel, y, oWall)) {x += onepixel;}
	horizspd = -horizspd;
	if onepixel {wallhitside = 90} else {wallhitside = 270;}
	hit = true;
	if onepixel == 1 {walldirection = 0;} else {walldirection = 2;}
}

//vertical collision
if place_meeting(x, y + vertspd, oWall) {
	var onepixel = sign(vertspd);
	while(!place_meeting(x, y + onepixel, oWall)) {y += onepixel;}
	vertspd = -vertspd;
	if onepixel {wallhitside = 0} else {wallhitside = 180;}
	hit = true;
	if onepixel == 1 {walldirection = 3} else {walldirection = 1;}
}
if hit {
	instance_create_layer(x, y, "Instances", oWaterbombHitbox)
	
	repeat(36) {
		instance_create_layer(x, y, "Instances", oWaterparticle);
	}
	with (instance_create_layer(x, y, "Instances", oWaterbombExplosion)) {
		image_angle = oWaterbomb.walldirection * 90 + 90;
	}
	//update bombposition
	oPlayer.bombposition[0] = x;
	oPlayer.bombposition[1] = y;
	instance_destroy();
}

x += horizspd;
y += vertspd;