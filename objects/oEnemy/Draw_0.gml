/// @description Display white outline once hit

//Displaying white outline once hit
draw_self();

if (flash > 0) {
	flash--;
	shader_set(shWhite);
	draw_self();
	shader_reset();	
}
