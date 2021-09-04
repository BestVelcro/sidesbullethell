if(state == "IDLE"){
	sprite_index = spr_bossidle;
	show_debug_message("Opa");
	if(clock == false){
	alarm[1] = irandom_range(1,3)*room_speed;
	clock = true;
	}
}else if(state == "ATTACK"){
	sprite_index = spr_boss;
	if(clock == false){
	alarm[1] = irandom_range(1,3)*room_speed;
	alarm[0] = room_speed;
	clock = true;
	}
}
