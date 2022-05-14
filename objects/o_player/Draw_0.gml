
draw_self();

//draw_set_color(c_lime);
//var vd = 0;
//for(var a = 0; a < rays; a++)
//{
//	vd = direction+(a-1)*rangles-fov/2;
//	draw_line(x,y,x+rdist*dcos(vd),y-rdist*dsin(vd));
//}

draw_set_color(c_white);
draw_line(x,y,x+1000*dcos(image_angle+fov/2),y-1000*dsin(image_angle+fov/2));
draw_line(x,y,x+1000*dcos(image_angle-fov/2),y-1000*dsin(image_angle-fov/2));
/*
draw_circle(x+render_dist*dcos(direction),y-render_dist*dsin(direction),render_dist,0);

/*
for(var a = 2; a < 10; a++)
{
	draw_circle(x+shoot_incrlen*dsin(direction+90)*a,y+shoot_incrlen*dcos(direction+90)*a,shoot_incrsiz*a,0);
}