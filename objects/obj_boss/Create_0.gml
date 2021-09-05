x = obj_arena.x;
y = obj_arena.y;
state = "IDLE";
startattack = false;
clock = false;
attacktype = 0;
angle = choose(0,22);
oldstate = state;
goto_x = x;
goto_y = y;
move_speed = 1;
min_speed = move_speed;
max_speed = 5;
acceleration = 0.9;

healthbar_width = 323;
healthbar_height = 17;
healthbar_x = floor((room_width/2)-(healthbar_width/2))
healthbar_y = sprite_get_height(spr_bossbar);

hp_max = 200;
hp = hp_max;

default_angle = 45;
current_angle = default_angle;

gun = instance_nearest(x,y,obj_bossgun);

start_second_phase = false;
second_phase = false;

num_attacks = 2;

dashcords_x = x;
dashcords_y = y;
start_dash = false;

shotgund_cooldown = room_speed;