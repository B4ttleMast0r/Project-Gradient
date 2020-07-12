/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
playerx = oPlayer.x;
sectionx = int64(playerx) / camerawidth;
gotox = int64(sectionx) * camerawidth;
x += (gotox - x) / 4;
camera_set_view_pos(cam, x, y);
