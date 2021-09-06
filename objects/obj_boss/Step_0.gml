if(hp_max/2 >= hp) && (!start_second_phase){
	second_phase = true;
	start_second_phase = true;
	shotgund_cooldown = shotgund_cooldown/2;
	gun.image_speed = 2;
	num_attacks += 3;
	show_debug_message("AAAAAAAAAAAAAAAAAAA");
}
if(hp <= 0){
	state = "DEAD";
	goto_x = obj_arena.x;
	goto_y = obj_arena.y;
	var bombx = x+irandom_range(-sprite_width,sprite_width);
	var bomby = y+irandom_range(-sprite_height,sprite_height);
	var explosion = instance_create_layer(bombx,bomby,"End",obj_bomb);
	explosion.sprite_index = spr_explosion;
	explosion.image_xscale = 0.5;
	explosion.image_yscale = 0.5;
	explosion.speed = 0;
	sprite_index = spr_bossdeath;
	if(!dead){
alarm[2] = room_speed*4;
	dead = true;
	}
}

if(state == "IDLE"){
	sprite_index = spr_bossidle;
	gun.visible = false;
	if(clock == false){
		side = choose(90,270);
		sideangle = side;
		attacktype = irandom(num_attacks);
		time = irandom_range(2,3)*room_speed;
	alarm[1] = time;
	clock = true;
	angle = choose(0, 22);
	current_angle = default_angle;
	canattack = false;
	arrow = false;
	}
}else if(state == "ATTACK"){
	if(attacktype != 3) sprite_index = spr_boss;
	if(clock == false){
				if(attacktype == 2) or (attacktype = 5){
					gun.visible = true;
		gun.sprite_index = spr_bossgundeploy;
	}
	time = irandom_range(4,8)*room_speed;
	/*
	alarm[0] = start attack
	alarm[1] = attack lenght
	alarm[2] = first attack warn
	*/
	alarm[2] = time/2;
	if(attacktype != 3){
	alarm[1] = time;
	}
	alarm[0] = room_speed;
	clock = true;
	}
}

if(state != oldstate){
	move_speed = max_speed;
	goto_x = irandom_range(obj_arena.x-obj_arena.sprite_width/4,obj_arena.x+obj_arena.sprite_width/4);
	goto_y = irandom_range(obj_arena.y-obj_arena.sprite_height/4,obj_arena.y+obj_arena.sprite_height/4);
}
move_speed = clamp(move_speed*acceleration,min_speed,max_speed);

var x_distance = abs(goto_x - x);
var y_distance = abs(goto_y - y);

if(attacktype != 3){
if(x_distance < move_speed) x = goto_x;
if(y_distance < move_speed) y = goto_y;

if(goto_x != x) x = x+(sign(goto_x-x)*move_speed);
if(goto_y != y) y = y+(sign(goto_y-y)*move_speed);
}else if(attacktype == 3) && (start_dash){
	move_speed = max_speed;
	
var x_dashdistance = abs(dashcords_x - x);
var y_dashdistance = abs(dashcords_y - y);
	
if(x_dashdistance < move_speed) x = dashcords_x;
if(y_dashdistance < move_speed) y = dashcords_y;

if(dashcords_x != x) x = x+(sign(dashcords_x-x)*move_speed);
if(dashcords_y != y) y = y+(sign(dashcords_y-y)*move_speed);

if(dashcords_x == x) && (dashcords_y == y){
	if(instance_exists(obj_player)) && (!place_meeting(x,y,obj_player)){
	var powerup = instance_create_layer(x,y,"PowerUP",obj_powerup);
	powerup.powerup = choose("DAMAGE","SPEED","HEALTH");
	}
	goto_x = irandom_range(obj_arena.x-obj_arena.sprite_width/4,obj_arena.x+obj_arena.sprite_width/4);
	goto_y = irandom_range(obj_arena.y-obj_arena.sprite_height/4,obj_arena.y+obj_arena.sprite_height/4);
	attacktype = -1;
	alarm[1] = time/10;
	start_dash = false;
}

}

oldstate = state;