//default user event
slices = room_width/slice_size;
slices *= 2;
heights = array_create(slices,0);
for(var a = 0; a < slices; a++)
	heights[a] = -irandom(start_rand);

move = 0;