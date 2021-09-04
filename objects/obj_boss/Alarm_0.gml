if(state == "ATTACK") && (attacktype = 0){
var bullet = instance_create_layer(x,y,"Bullet",obj_bossbullet);
bullet.direction = angle;
bullet.image_angle = angle;
angle += 45;
alarm[0] = room_speed/50;
}
if(state == "ATTACK") && (attacktype = 1){
var bullet = instance_create_layer(x,y,"Bullet",obj_bossbullet);
bullet.direction = point_direction(x,y,obj_player.x,obj_player.y);
bullet.image_angle = point_direction(x,y,obj_player.x,obj_player.y);
alarm[0] = room_speed/10;
}