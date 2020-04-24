/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

if oPlayer.sprite_index = sPlayerIdle {
	if oPlayer.image_index = 0 idleoffset = 0; 
	if oPlayer.image_index = 1 idleoffset = 1; 
	
} else idleoffset = 0;

image_angle = 0 + oPlayer.horizspd * 6;
image_xscale = oPlayer.image_xscale;

if oPlayer.vertspd > 0 {
	fallingoffset = oPlayer.vertspd;
} else fallingoffset *= 0.5;

x = oPlayer.x;
y = oPlayer.y - 7 - idleoffset - fallingoffset;