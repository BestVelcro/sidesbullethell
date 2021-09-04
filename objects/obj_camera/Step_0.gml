// Update Destination
if(instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;
}

// Update Object position
x += (xTo - x);
y += (xTo - y);

x = clamp(x, viewWidthHalf, room_width-viewWidthHalf);
y = clamp(y, viewHeightHalf, room_height-viewHeightHalf);

//Screenshake
x += random_range(-shakeRemain,shakeRemain);
y += random_range(-shakeRemain,shakeRemain);

shakeRemain = max(0,shakeRemain-((1/shakeLength) * shakeMagnitude));

camera_set_view_pos(cam,x - viewWidthHalf,y - viewHeightHalf);