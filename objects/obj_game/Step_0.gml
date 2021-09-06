if(room == Action){
	if(!instance_exists(obj_player)) && (!player_death){
		alarm[0] = room_speed*3;
		player_death = true;
	}
}