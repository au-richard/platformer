hsp = 3;
vsp = -4;
grv = 0.2;
done = 0;
//Bigger screen shake on death
ScreenShake(6, 60);
image_speed = 0;
image_index= 0;

audio_play_sound(snDeath, 10, false);
game_set_speed(30, gamespeed_fps);
with (oCamera) follow = other.id;
