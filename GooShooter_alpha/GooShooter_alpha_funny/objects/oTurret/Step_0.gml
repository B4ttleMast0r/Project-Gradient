/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

inrange = false;
if point_distance(oPlayer.x,oPlayer.y,x,y) <= rangebig && point_distance(oPlayer.x,oPlayer.y,x,y) > rangesmall {
	var angle = point_direction(x,y,oPlayer.x,oPlayer.y)
	if angle < 202.5 && angle > 157.5 {
		inrange = true;
		/* audio_sound_pitch(sn_concious, random_range(0.8, 1.2));
		audio_play_sound(sn_concious, 60, 0); */
		audio_stop_sound(sn_katanazero_thesandman2);
		if (audio_is_playing(sn_katanazero_nocturnedistorted) = false) {
			audio_play_sound(sn_katanazero_nocturnedistorted, 60, 0);
		}
		}
}
if point_distance(oPlayer.x,oPlayer.y,x,y) <= rangesmall {
	var angle = point_direction(x,y,oPlayer.x,oPlayer.y)
	if angle < 225 && angle > 135 {
		inrange = true;
		/* audio_sound_pitch(sn_alarm, random_range(0.8, 1.2));
		audio_play_sound(sn_alarm, 60, 0);*/
		audio_stop_sound(sn_katanazero_nocturnedistorted);
		if (audio_is_playing(sn_katanazero_thesandman2) = false) {
			audio_play_sound(sn_katanazero_thesandman2, 60, 0);
		}
		}
}
if inrange = false{
	audio_stop_sound(sn_katanazero_thesandman2);
	audio_stop_sound(sn_katanazero_nocturnedistorted);
}
