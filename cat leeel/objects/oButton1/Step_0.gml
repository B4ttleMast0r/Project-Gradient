/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
rightbutton = keyboard_check(ord("D"));
x = oCamera.x - oCamera.nullpunktx + 705;
image_index = 0;
if rightbutton && (oCat.button !=2){
	image_index = 1;
}
