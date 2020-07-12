/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
leftbutton = keyboard_check(ord("A"));

x = oCamera.x - oCamera.nullpunktx + 555;
image_index = 0;
if leftbutton && (oCat.button !=1) {
	image_index = 1;
}