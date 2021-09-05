if(instance_exists(obj_boss)){
	x = obj_boss.x;
	y = obj_boss.y;
}
if(instance_exists(obj_player)){
	image_angle = point_direction(x,y,obj_player.x,obj_player.y);
}