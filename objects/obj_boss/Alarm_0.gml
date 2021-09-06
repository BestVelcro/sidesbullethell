// Circular Attack
if(state == "ATTACK") && (attacktype == 0){
	repeat(360/current_angle){
var bullet = instance_create_layer(x,y,"Bullet",obj_bossbullet);
bullet.image_angle = angle;
bullet.direction = angle;
angle += current_angle;
	}
alarm[0] = room_speed/10;
}

// Bullet Follow Attack
if(state == "ATTACK") && (attacktype == 1){
		if(second_phase){
		attacktype = 2;	
	}
var bullet = instance_create_layer(x,y,"Bullet",obj_bossbullet);
if(instance_exists(obj_player)){
bullet.direction = point_direction(x,y,obj_player.x,obj_player.y);
bullet.image_angle = point_direction(x,y,obj_player.x,obj_player.y);
}
alarm[0] = room_speed/10;
}

// Shotgun Attack
if(state == "ATTACK") && (attacktype == 2){
if(instance_exists(obj_player)){
	if(gun.sprite_index != spr_bossgundeploy){
	repeat(5){
		var left_corner_x=gun.x+lengthdir_x(gun.sprite_width,gun.image_angle);
		var left_corner_y=gun.y+lengthdir_y(gun.sprite_height,gun.image_angle);
		var bullet = instance_create_layer(left_corner_x,left_corner_y,"Bullet",obj_bossbullet);
	var player_location = gun.image_angle + irandom_range(-22,22);
	gun.sprite_index = spr_bossgunshooting;
bullet.direction = player_location;
bullet.image_angle = player_location;
bullet.speed += 2;
	}
	}
}
	alarm[0] = shotgund_cooldown;
}

// Dash Attack
if(state == "ATTACK") && (attacktype == 3){
if(instance_exists(obj_player)){
	move_speed = max_speed;
	sprite_index = spr_bossdash;
}
}

// Area Denial
if(state == "ATTACK") && (attacktype == 4){
	if(!arrow){
		arrow = true;
		danger = instance_create_layer(x,y-sprite_height/2-10,"Boss",obj_dangerarrow);
	}
	if(canattack){
	repeat(180){
var bullet = instance_create_layer(x,y,"Bullet",obj_bossbullet);
bullet.image_angle = sideangle;
bullet.direction = sideangle;
bullet.speed += 1;
sideangle++;
	}
	sideangle = side;
	}
	alarm[0] = room_speed/10;
}

// Bomb Attack
if(state == "ATTACK") && (attacktype == 5){
if(instance_exists(obj_player)){
	if(gun.sprite_index != spr_bossgundeploy){
		var left_corner_x=gun.x+lengthdir_x(gun.sprite_width,gun.image_angle);
		var left_corner_y=gun.y+lengthdir_y(gun.sprite_height,gun.image_angle);
		var bullet = instance_create_layer(left_corner_x,left_corner_y,"Bullet",obj_bomb);
	var player_location = gun.image_angle;
	gun.sprite_index = spr_bossgunshooting;
bullet.direction = player_location;
bullet.image_angle = player_location;
	}
}
	alarm[0] = shotgund_cooldown;
}