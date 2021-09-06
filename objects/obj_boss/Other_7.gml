if(startattack == true) && (state == "IDLE"){
	state = "ATTACK";
	startattack = false;
	clock = false;
}
if(startattack == true) && (state == "ATTACK"){
	state = "IDLE";
	startattack = false;
	clock = false;
	if(instance_exists(obj_dangerarrow)){
		instance_destroy(danger.id);
	}
}
if(sprite_index == spr_bossdash){
			dashcords_x = obj_player.x;
		dashcords_y = obj_player.y;
	image_speed = 0;
	image_index = image_number-1;
		start_dash = true;
}
if(sprite_index == spr_bossdeath){
	image_speed = 0;
	image_index = image_number-1;
}