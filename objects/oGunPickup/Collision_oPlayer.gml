/// @description Equip Gun

instance_create_layer(oPlayer.x, oPlayer.y, "Gun", oGun);
instance_destroy();

audio_play_sound(snPistolCock, 5, false);





