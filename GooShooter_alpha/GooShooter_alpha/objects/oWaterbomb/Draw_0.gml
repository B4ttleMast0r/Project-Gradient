/// @description oWaterfalls
xscale = clamp(abs(horizspd), 0.8, 1.2);
yscale = clamp(abs(vertspd), 0.8, 1.2);
draw_sprite_ext(sWaterbomb, 0, x, y, xscale, yscale, 0, image_blend, image_alpha)