/// @description Update Camera

//Update Destination
if (instance_exists(follow)) {
	xTo = follow.x;
	yTo = follow.y;
	if (follow.object_index == oPDead) {
		x = xTo;
		y = yTo;
	}
}

//Update Object Position
x += (xTo - x) / 15;
y += (yTo - y) / 15;

//Setting camera to not go beyond border
x = clamp(x, view_w_half + buff, room_width - view_w_half - buff);
y = clamp(y, view_h_half + buff, room_height - view_h_half - buff);

//Screen Shake
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain - ((1 / shake_length) * shake_magnitude));

//Update Camera View
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);

if ((room != rMenu) && (room != rEnding)) {
	layer_x("Background", x / 2);
	layer_y("Background", y - 180);
	if (layer_exists(mountainLayer)) {
		layer_x(mountainLayer, x / 2);
	}
	if (layer_exists(treeLayer)) {
		layer_x(treeLayer, x / 4);
	}
}

