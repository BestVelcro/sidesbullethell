if(keyboard_check(vk_space)) && (canshoot == true){
	canshoot = false;
	sprite_index = spr_playershooting;
	bullet = instance_create_layer(x,y,"Player",obj_bullet);
	bullet.image_angle = image_angle-90;
	bullet.direction = image_angle-90;
	alarm[1] = room_speed*2;
}

x=obj_arena.x-lengthdir_x(masterrange,masterangle+obj_arena.image_angle);
y=obj_arena.y-lengthdir_y(masterrange,masterangle+obj_arena.image_angle);
image_angle = obj_arena.image_angle-180;

