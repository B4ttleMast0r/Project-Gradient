/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
event_inherited()

sprite_1 = slight_turret

shader = sh_turret

upixelW = shader_get_uniform(sh_turret,"pixelW")
texelW = texture_get_texel_width(sprite_get_texture(sprite_index, 0))
