/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
playery = oPlayer.y;
playerx = oPlayer.x;
sectiony = int64(playery) / cameraheight;
sectionx = int64(playerx) / camerawidth;
gotoy = int64(sectiony) * cameraheight;
gotox = int64(sectionx) * camerawidth;
y += (gotoy - y) / 4;
x += (gotox - x) / 4;
camera_set_view_pos(cam, x, y);

oDebugUI.camx = x;
oDebugUI.camy = y;