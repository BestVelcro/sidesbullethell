var _x = 20;
repeat(global.health){
draw_sprite(spr_heart,image_index,_x,20)
_x += sprite_get_width(spr_heart)+3;
}
/*
draw_text(5,5,"Health: "+string(global.health));
draw_text(5,20,"State: "+string(obj_boss.state));
*/
draw_text(5,35,"X: "+string(obj_boss.x)+" Y: "+string(obj_boss.y));
draw_text(5,50,"goto x: "+string(obj_boss.goto_x+obj_boss.move_speed));
