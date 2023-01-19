/// @description Transition to death animation
if (hp <= 0) {
	with (instance_create_layer(x, y, layer, oDead)) {
		//setting death animation direction
		direction = other.hitfrom;
		hsp = lengthdir_x(3, direction);
		vsp = lengthdir_y(3, direction) - 2;
		if (sign(hsp) != 0) image_xscale = sign(hsp) * other.size;
	}
	with (mygun) instance_destroy();
	if (instance_exists(oPlayer)) {
		global.kills++;
		global.killsthisroom++;
		with (oGame) killtextscale = 2;
	}
	instance_destroy();
}