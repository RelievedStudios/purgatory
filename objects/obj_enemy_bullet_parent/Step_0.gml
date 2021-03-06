/// @description Play the sound on exit of hit box

// if its touching the hitbox, flag it
if (place_meeting(x,y, obj_playergraze_hitbox) && obj_player.iframes == 0)
{
	//show_debug_message("Touching player");
	hit_graze = true;
}
// if it touches the player model center
if (place_meeting(x, y, obj_player))
{
	hit_player = true;
}
//If the bullet hit the model, but not the player hitbox, play the grazing sound
if (!place_meeting(x,y, obj_playergraze_hitbox) && hit_graze == true && hit_player == false && made_sound = false)
{
	made_sound = true;
	audio_play_sound(bullet_graze_sound_effect, 1, false);
	health += 0.1;
}
if (x < 300 || x > 980)
{
	instance_destroy();
}