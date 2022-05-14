var xs = 100/owner.fov;
var xoffs = 240 + o_player.direction*xs*2;

draw_sprite_ext(sprite_index,image_index,xoffs-720*xs,135,xs,1,0,c_white,1);
draw_sprite_ext(sprite_index,image_index,xoffs,135,xs,1,0,c_white,1);
draw_sprite_ext(sprite_index,image_index,xoffs+720*xs,135,xs,1,0,c_white,1);