leftbutton = keyboard_check(ord("A"));
rightbutton = keyboard_check(ord("D"));

abutton = keyboard_check_pressed(ord("K"));
bbutton =  keyboard_check_pressed(ord("J"));

var move = rightbutton - leftbutton * movespeed;

physics_apply_force(x, y, move, 0);