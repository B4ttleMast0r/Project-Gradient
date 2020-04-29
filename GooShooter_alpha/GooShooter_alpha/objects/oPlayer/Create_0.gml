/// @description 

//inputs
input_left = false;
input_right = false;
input_move = 0;
input_jump = false;
input_jump_held = false;
jumprequesttimer = 0; /*if the player wants to jump this timer gets activated. 
So he can press jump before hitting the ground and will jump when reaching it.*/
input_bomb = false;


//movement
onground = false;

horizspd = 0;
vertspd = 0;
plyrinputaccel = 0;
afkdecel = 0;
hspdcap = 0;
vspdcap = 0;
hspdcapdecelfactor = 1;
vspdcapdecelfactor = 1;

gravity_custom = 0;

duringjump = false;
apexreached = false;
jumpingupwards = false;
latejumpused = false; //if the player wants to jump, but has just left the ground he should still jump
hitbybomb = false; //if the player was hit by a bomb during the current jump

bombposition[0] = 0;
bombposition[1] = 0;


/*acc = 0.5;
dcc = 0.2;
stp = 3;
divnumb = 0.9;*/


//animation
airbornetimer = 0;
globalanimationreset = 0;


//bomb
bombcooldown = 0;


//sound
soundcooldown = 0;


//draw ui
uititle1 = "Debug String";
uistring1 = "TBD";

instance_create_layer(0,0,"Instances",oDebugUI);