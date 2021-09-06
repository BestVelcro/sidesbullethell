if(iframe == false){
global.health -= 1;
alarm[0] = room_speed*1;
iframe = true;
ScreenShake(15,50);
if(instance_exists(obj_boss)){
	obj_boss.image_index = spr_bossidle;
}
}