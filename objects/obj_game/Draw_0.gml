if(room == Action){
var _x = 15;
repeat(global.health){
draw_sprite(spr_heart,image_index,_x,15)
_x += sprite_get_width(spr_heart)+3;
}
/*
draw_text(5,5,"Health: "+string(global.health));
draw_text(5,20,"State: "+string(obj_boss.state));
*/
if(instance_exists(obj_player)){
draw_text(5,50,"Damage: "+string(obj_player.gundamage));
draw_text(5,65,"Delay: "+string(obj_player.gundelay));
}
}