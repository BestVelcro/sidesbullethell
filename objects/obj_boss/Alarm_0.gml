if(state == "ATTACK"){
var angle = choose(0,22);
repeat(8){
var bullet = instance_create_layer(x,y,"Bullet",obj_bossbullet);
bullet.direction = angle;
bullet.image_angle = angle;
angle += 45;
}
alarm[0] = room_speed/10;
}