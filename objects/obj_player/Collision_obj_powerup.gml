	if(other.powerup == "DAMAGE") gundamage = gundamage+10;
	if(other.powerup == "SPEED") gundelay = gundelay/2;
	if(other.powerup == "HEALTH") global.health += 1;
	instance_destroy(other.id);
	alarm[2] = room_speed*6;