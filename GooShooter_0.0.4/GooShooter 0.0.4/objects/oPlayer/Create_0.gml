/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
hsp = 0;
vsp = 0;

max_hsp = 1;

grv = 0.4;

acc = 0.5;
dcc = 0.2
stp = 3;
divnumb = 0.9


//animation
globalanimationreset = 0


//bomb
bomb = 0
bombcooldown = 0

//input keys
right = 0;
left = 0;
jump = 0;

onground = false;

jumpbuffer = 0;

//if the player wants to jump, it sets this timer. so he can press jump, before hitting the ground and still jump, when reaching it
jumprequest = 0;

//imagenumb stores the image index
global.imagenumb = 0;
//sound
soundcooldown = 0