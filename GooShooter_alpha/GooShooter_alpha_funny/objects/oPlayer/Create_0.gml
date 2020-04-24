/// @description 

//inputs
input_left = false;
input_right = false;
input_jump = false;
input_bomb = false;

//movement
horizspd = 0;
vertspd = 0;


gravity_custom = 0.4;

/*acc = 0.5;
dcc = 0.2
stp = 3;
divnumb = 0.9*/


//animation
globalanimationreset = 0


//bomb
bombcooldown = 0


onground = false;

jumpbuffer = 0;

//if the player wants to jump, it sets this timer. so he can press jump, before hitting the ground and still jump, when reaching it
jumprequest = 0;

//imagenumb stores the image index
global.imagenumb = 0;
//sound
soundcooldown = 0