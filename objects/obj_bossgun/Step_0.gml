if(instance_exists(obj_boss)){
	x = obj_boss.x;
	y = obj_boss.y;
	if(obj_boss.attacktype == 5){
		image_yscale = 2;
	}else{
		image_yscale = 1;
	}
}
if(instance_exists(obj_player)){
	image_angle = point_direction(x,y,obj_player.x,obj_player.y);
}