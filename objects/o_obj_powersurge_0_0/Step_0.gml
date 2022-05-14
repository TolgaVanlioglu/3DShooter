event_inherited();
/*
if(spewed == 0 && point_distance(x,y,o_player.x,o_player.y) < 600)
{
	spewed += 1;
	repeat(10)
		fn_spawnscript(x+irandom_range(-450,450),x+irandom_range(-450,450),irandom_range(-10,10),o_obj_enemy_hellgreeter);
}
else if(spewed == 1 && point_distance(x,y,o_player.x,o_player.y) < 450)
{
	spewed += 1;
	repeat(10)
		fn_spawnscript(x+irandom_range(-300,300),x+irandom_range(-300,300),irandom_range(-10,10),o_obj_enemy_hellgreeter);
}
else if(spewed == 2 && point_distance(x,y,o_player.x,o_player.y) < 300)
{
	spewed += 1;
	repeat(10)
		fn_spawnscript(x+irandom_range(-50,50),x+irandom_range(-50,50),irandom_range(-10,10),o_obj_enemy_hellgreeter);
}