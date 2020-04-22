/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
xscale = clamp(abs(hsp), 0.8, 1.2);
yscale = clamp(abs(vsp), 0.8, 1.2);
draw_sprite_ext(sWaterbomb, 0, x, y, xscale, yscale, 0, image_blend, image_alpha)