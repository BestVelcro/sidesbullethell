draw_self();
draw_sprite(spr_bossbarbg,0,healthbar_x,healthbar_y);
draw_sprite_stretched(spr_healthbossbar,0,healthbar_x,healthbar_y,(hp/hp_max)*healthbar_width,healthbar_height);
draw_sprite(spr_bossbar,obj_arena.image_index,healthbar_x,healthbar_y);