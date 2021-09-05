if(hp_max/hp <= 0.5) && (!start_second_phase){
	second_phase = true;
	start_second_phase = true;
	shotgund_cooldown = shotgund_cooldown/2;
	gun.image_speed = 2;
	num_attacks += 1;
}

if(state == "IDLE"){
	sprite_index = spr_bossidle;
	gun.visible = false;
	if(clock == false){
		attacktype = 3;
		//attacktype = irandom(num_attacks);
		time = irandom_range(2,3)*room_speed;
	alarm[1] = time;
	clock = true;
	angle = choose(0, 22);
	current_angle = default_angle;
	}
}else if(state == "ATTACK"){
	if(attacktype != 3) sprite_index = spr_boss;
	if(clock == false){
				if(attacktype == 2){
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
	}else{
		if(instance_exists(obj_player)){
		dashcords_x = obj_player.x;
		dashcords_y = obj_player.y;
		}
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
	goto_x = irandom_range(obj_arena.x-obj_arena.sprite_width/4,obj_arena.x+obj_arena.sprite_width/4);
	goto_y = irandom_range(obj_arena.y-obj_arena.sprite_height/4,obj_arena.y+obj_arena.sprite_height/4);
	attacktype = -1;
	alarm[1] = time/10;
	start_dash = false;
}

}

oldstate = state;