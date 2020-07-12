/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
bbutton = keyboard_check(ord("J"));

x = oCamera.x - oCamera.nullpunktx + 980;
image_index = 0;
if bbutton && (oCat.button !=3){
	image_index = 1;
}