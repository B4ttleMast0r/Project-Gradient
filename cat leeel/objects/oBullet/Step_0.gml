/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

x += spd;
if place_meeting(x, y, oPlayer) {
    oPlayer.death = true;
}

if place_meeting(x, y, oPlayer) {
    instance_destroy();
}

if place_meeting(x, y, oWall) {
    instance_destroy();
}

