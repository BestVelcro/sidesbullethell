if(instance_exists(obj_boss)){
	x = obj_boss.x
	y = obj_boss.y-obj_boss.sprite_height/2-10;
	if(obj_boss.side == 90){
	image_xscale = -1;
	}else{
	image_xscale = 1;	
	}
}