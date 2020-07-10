//get inputs
input_left = keyboard_check(ord("A"));
input_right = keyboard_check(ord("D"));
input_jump = keyboard_check_pressed(ord("W"));
input_jump_held = keyboard_check(ord("W"));
input_bomb = mouse_check_button_pressed(mb_right);
input_move = input_right - input_left;


//onground
//onground = place_meeting(x, y + 1, oWall);

horizspd = 2 * input_move

//horizontal 
/*
if place_meeting(x + horizspd, y, oWall) {
	var onepixel = sign(horizspd);
	while(!place_meeting(x + onepixel, y, oWall)) x += onepixel;
	horizspd = 0;
}


//vertical collision
if place_meeting(x, y + vertspd, oWall) {
	var onepixel = sign(vertspd);
	while(!place_meeting(x, y + onepixel, oWall)) y += onepixel;
	vertspd = 0;
}


//corner collisions
if place_meeting(x + horizspd, y + vertspd, oWall) {
	vertspd = 0;
	horizspd = 0;
}

*/
//apply speed
x += horizspd;
y += vertspd;
