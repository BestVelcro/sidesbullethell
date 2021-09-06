if(room == Action){
var _x = 15;
repeat(global.health){
draw_sprite(spr_heart,image_index,_x,15)
_x += sprite_get_width(spr_heart)+3;
}
}