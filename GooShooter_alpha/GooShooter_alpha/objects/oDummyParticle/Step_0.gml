/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
hsp = lengthdir_x(travellength, direction);
vsp = lengthdir_y(travellength, direction);

x += hsp;
y += vsp;

travellength *= 0.8;

image_alpha -= 0.05;