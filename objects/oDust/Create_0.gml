///@description Create landing jump dust

//randomize dust speed
image_speed = random_range(0.5, 1);

//randomize which frame it starts on
image_index = random_range(0, 6);

hsp = random_range(-2, 2);
vsp = random_range(-2, 2);

//choose dust direction left or right
image_xscale = choose(1, -1);
image_yscale = choose(1, -1);



