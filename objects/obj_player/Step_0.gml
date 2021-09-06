if(keyboard_check(vk_space)) && (canshoot == true){
	canshoot = false;
	sprite_index = spr_playershooting;
	bullet = instance_create_layer(x,y,"Player",obj_bullet);
	bullet.image_angle = image_angle-90;
	bullet.direction = image_angle-90;
	bullet.damage = gundamage;
	bullet.speed = gundamage;
	alarm[1] = room_speed*gundelay;
}

x=obj_arena.x-lengthdir_x(masterrange,masterangle+obj_arena.image_angle);
y=obj_arena.y-lengthdir_y(masterrange,masterangle+obj_arena.image_angle);
image_angle = obj_arena.image_angle-180;

if(global.health <= 0){
	var angle = 0;
	repeat(irandom_range(24,48)){
		var deathparticle = instance_create_layer(x,y,"Player",obj_deathparticle);
		deathparticle.direction = angle;
		angle += 15;
	}
	instance_destroy();
}

/*
enum poweruptype {
	damage = spr_powerupdamage,
	shotspeed = spr_powerupspeed,
	healthup = spr_poweruphealth
}
powerup = poweruptype.damage
*/