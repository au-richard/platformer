/// @description Draw Score Tracker

if ((room != rMenu) && (instance_exists(oPlayer)) && (global.kills > 0)) {
	killtextscale = max(killtextscale * 0.95, 1);
	DrawSetText(c_black, fMenu, fa_right, fa_top);
	if (global.kills > 1) {
		draw_text_transformed(RES_W - 8, 12, string(global.kills) + " Pointless Murders :(", killtextscale, killtextscale, 0);
		draw_set_colour(c_white);
		draw_text_transformed(RES_W - 10, 10, string(global.kills) + " Pointless Murders :(", killtextscale, killtextscale, 0);
	} else {
		draw_text_transformed(RES_W - 8, 12, string(global.kills) + " Pointless Murder :(", killtextscale, killtextscale, 0);
		draw_set_colour(c_white);
		draw_text_transformed(RES_W - 10, 10, string(global.kills) + " Pointless Murder :(", killtextscale, killtextscale, 0);
	}

}









