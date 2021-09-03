leftkey = keyboard_check(vk_left);
rightkey = keyboard_check(vk_right);
var move = rightkey-leftkey;

if(move == 0){
pspeed = Approach(pspeed,0,acceleration);
}else{
pspeed = clamp(pspeed + move * acceleration, -current_maxspeed, current_maxspeed);
}
if(keyboard_check_pressed(vk_shift)){
	current_maxspeed += 4;
	pspeed += current_maxspeed*move;
}
current_maxspeed = Approach(current_maxspeed,maxspeed,acceleration);
image_angle += pspeed;

show_debug_message(string(current_maxspeed)+"\n"+string(maxspeed));