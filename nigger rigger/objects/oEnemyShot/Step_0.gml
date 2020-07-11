/// @description Insert description here
// You can write your code in this editor
y += vsp;
x += hsp;
if place_meeting(x,y,oWall) {
	instance_destroy()
}
if place_meeting(x,y,oPlayer) {
	instance_destroy()
}