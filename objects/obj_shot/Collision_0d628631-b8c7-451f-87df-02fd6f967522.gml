/// @description Insert description here
instance_create_depth(x,y - 5,0, obj_bullet_impact);

audio_play_sound(hit_effect,10,false);

if (instance_exists(obj_player) == true)
{
	score += 20;
}