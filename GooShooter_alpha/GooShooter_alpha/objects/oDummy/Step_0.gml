/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
vertspd += 0.4;

if place_meeting(x, y + 1, oWall) onground = true; else onground = false;

//horizontal collision
if place_meeting(x + horizspd, y, oWall) {
	var onepixel = sign(horizspd);
	while(!place_meeting(x + onepixel, y, oWall)) x += onepixel;
	horizspd = 0;
}

//vertical collision
if place_meeting(x, y + vertspd, oWall) {
	var onepixel = sign(vertspd);
	while(!place_meeting(x, y + onepixel, oWall)) y += onepixel;
	vertspd = 0;
}



x += horizspd;
y += vertspd;

if onground horizspd *= 0.9; else horizspd *= 0.98;
