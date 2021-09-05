if(startattack == true) && (state == "IDLE"){
	state = "ATTACK";
	startattack = false;
	clock = false;
}
if(startattack == true) && (state == "ATTACK"){
	state = "IDLE";
	startattack = false;
	clock = false;
}
if(sprite_index == spr_bossdash){
	image_speed = 0;
	image_index = image_number-1;
		start_dash = true;
}