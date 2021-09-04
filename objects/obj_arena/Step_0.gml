leftkey = keyboard_check(vk_left);
rightkey = keyboard_check(vk_right);
var move = rightkey-leftkey;

if(move == 0){
pspeed = Approach(pspeed,0,acceleration);
}else{
pspeed = clamp(pspeed + move * acceleration, -current_maxspeed, current_maxspeed);
}
if(keyboard_check_pressed(vk_shift)) && (candash == true){
	candash = false;
	current_maxspeed += 4;
	pspeed += current_maxspeed*move;
	repeat(irandom_range(10,20)){
		var side = obj_player.bbox_left;
		if(move == 1) side = obj_player.bbox_right;
		var particle = instance_create_layer(side,obj_player.y, "Bullet", obj_dashparticle);
		particle.direction = obj_player.image_angle;
	}
	alarm[0] = room_speed;
}
current_maxspeed = Approach(current_maxspeed,maxspeed,acceleration);
image_angle += pspeed;