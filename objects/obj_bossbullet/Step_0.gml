
if(!position_meeting(x+hspeed,y+vspeed,obj_arena)){	
	var particle = instance_create_layer(x,y,"Bullet",obj_bossbulletparticle);
	particle.direction = (direction-180)-irandom_range(-45,45);
	instance_destroy();
}