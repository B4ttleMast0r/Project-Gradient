/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
leftbutton = keyboard_check_pressed(ord("A"));
rightbutton = keyboard_check_pressed(ord("D"));
abutton = keyboard_check_pressed(ord("K"));
bbutton = keyboard_check_pressed(ord("J"));
image_speed = 0;
x = oCamera.x - oCamera.nullpunktx;
if button == 0 {
	image_index = 0;
	if (oCamera.sectionx > 3) && wait < 1 {
		wait = random_range(1000, 4000) / oCamera.sectionx;
		button = int64(random_range(1,5));
		amount = int64(random_range(2,7));
		image_index = button;
	}
	wait--;
}


if button == 1 {
	if counter > amount {
		counter = 0;
		button = 0;
		rand = int64(random_range(1,4));
		if rand == 1{
			audio_sound_pitch(sn_cat1, random_range(0.8, 1.2));
			audio_play_sound(sn_cat1, 60, 0);
		}
		if rand == 2{
			audio_sound_pitch(sn_cat2, random_range(0.8, 1.2));
			audio_play_sound(sn_cat2, 60, 0);
		}
		if rand == 3{
			audio_sound_pitch(sn_cat3, random_range(0.8, 1.2));
			audio_play_sound(sn_cat3, 60, 0);
		}
			
	}else{ if leftbutton{
		audio_sound_pitch(sn_slap, random_range(0.8, 1.2));
			audio_play_sound(sn_slap, 60, 0);
			counter +=1;
		}
	}
}
if button == 2 {
	if counter > amount {
		counter = 0;
		button = 0;
		rand = int64(random_range(1,4));
		if rand == 1{
			audio_sound_pitch(sn_cat1, random_range(0.8, 1.2));
			audio_play_sound(sn_cat1, 60, 0);
		}
		if rand == 2{
			audio_sound_pitch(sn_cat2, random_range(0.8, 1.2));
			audio_play_sound(sn_cat2, 60, 0);
		}
		if rand == 3{
			audio_sound_pitch(sn_cat3, random_range(0.8, 1.2));
			audio_play_sound(sn_cat3, 60, 0);
		}
			
	}else{ if rightbutton{
		audio_sound_pitch(sn_slap, random_range(0.8, 1.2));
			audio_play_sound(sn_slap, 60, 0);
			counter +=1;
		}
	}
}

if button == 3 {
	if counter > amount {
		counter = 0;
		button = 0;
		rand = int64(random_range(1,4));
		if rand == 1{
			audio_sound_pitch(sn_cat1, random_range(0.8, 1.2));
			audio_play_sound(sn_cat1, 60, 0);
		}
		if rand == 2{
			audio_sound_pitch(sn_cat2, random_range(0.8, 1.2));
			audio_play_sound(sn_cat2, 60, 0);
		}
		if rand == 3{
			audio_sound_pitch(sn_cat3, random_range(0.8, 1.2));
			audio_play_sound(sn_cat3, 60, 0);
		}
			
	}else{ if bbutton{
		audio_sound_pitch(sn_slap, random_range(0.8, 1.2));
			audio_play_sound(sn_slap, 60, 0);
			counter +=1;
		}
	}
}

if button == 4 {
	if counter > amount {
		counter = 0;
		button = 0;
		rand = int64(random_range(1,4));
		if rand == 1{
			audio_sound_pitch(sn_cat1, random_range(0.8, 1.2));
			audio_play_sound(sn_cat1, 60, 0);
		}
		if rand == 2{
			audio_sound_pitch(sn_cat2, random_range(0.8, 1.2));
			audio_play_sound(sn_cat2, 60, 0);
		}
		if rand == 3{
			audio_sound_pitch(sn_cat3, random_range(0.8, 1.2));
			audio_play_sound(sn_cat3, 60, 0);
		}
			
	}else{ if abutton{
		audio_sound_pitch(sn_slap, random_range(0.8, 1.2));
			audio_play_sound(sn_slap, 60, 0);
			counter +=1;
		}
	}
}
