if(state == "IDLE"){
	sprite_index = spr_bossidle;
	if(clock == false){
		attacktype = irandom(1);
	alarm[1] = irandom_range(1,3)*room_speed;
	clock = true;
	angle = choose(0, 22);
	}
}else if(state == "ATTACK"){
	sprite_index = spr_boss;
	if(clock == false){
	alarm[1] = irandom_range(2,5)*room_speed;
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
if(x_distance < move_speed) x = goto_x;
if(y_distance < move_speed) y = goto_y;

if(goto_x != x) x = x+(sign(goto_x-x)*move_speed);
if(goto_y != y) y = y+(sign(goto_y-y)*move_speed);

oldstate = state;