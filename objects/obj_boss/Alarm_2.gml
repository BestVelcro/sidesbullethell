if(state == "ATTACK") && (attacktype == 0){
	instance_create_layer(x,y-sprite_height/2,"Boss",obj_warn);
	if(second_phase){
		current_angle = current_angle*0.75
	}else{
	current_angle = current_angle/2;
	}
}

if(hp <= 0){	
	TransitionStart(Win,sq_fadeout,sq_fadein);
}