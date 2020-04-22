/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
hsp = lengthdir_x(spd, direction);
vsp = lengthdir_y(spd, direction);
vsp += grv;
spd *= 0.7;

if spd < 0.5 && !deathcounterenabled {
	deathcounter = 10;
	deathcounterenabled = true;
}
deathcounter --;
image_alpha -= 0.05;
if deathcounter < 0 && deathcounter > -5 instance_destroy();
/*if point_distance(x, y, originx, originy) > existrange {
	instance_destroy();
}
*/
x += hsp;
y += vsp;