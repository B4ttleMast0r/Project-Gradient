/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

section = oPlayer.y / cameraheight;
ygoto = int64(section) * cameraheight;
y += (ygoto - y) / 4;
camera_set_view_pos(cam, x, y);