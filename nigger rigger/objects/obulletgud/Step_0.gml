/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
x += spd;
if place_meeting(x, y, oEnemy2) {
	with (oEnemy2){
		instance_destroy()
	}
}

if place_meeting(x, y, oEnemy2) {
	instance_destroy();
}

if place_meeting(x, y, oWall) {
	instance_destroy();
}