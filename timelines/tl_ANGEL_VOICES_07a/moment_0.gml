///@description Start of seventh box (A)








//USE IF SKIPPING TO THIS POINT, ELSE COMMENT OUT
//if!(variable_global_exists(AngelVoices))
//{
//	EQ1 = instance_create_layer(384, 110, "Instances", obj_equalizer);
//	EQ2 = instance_create_layer(512, 110, "Instances", obj_equalizer);
//	EQ3 = instance_create_layer(room_width/2,  110, "Instances", obj_equalizer);
//	EQ4 = instance_create_layer(768, 110, "Instances", obj_equalizer);
//	EQ5 = instance_create_layer(896, 110, "Instances", obj_equalizer);
//}
EQ1.image_index = 0;
EQ2.image_index = 0;
EQ3.image_index = 0;
EQ4.image_index = 0;
EQ5.image_index = 0;

//Placeholder for the lights
if (global.spawnedlights != true)
{
	
	L1 = instance_create_layer(400, 120, "Instances", obj_Spotlight);
	L2 = instance_create_layer(500, 50, "Instances", obj_Spotlight);
	L3 = instance_create_layer(780, 50, "Instances", obj_Spotlight);
	L4 = instance_create_layer(880, 120, "Instances", obj_Spotlight);
	
	for(var i = 0; i < 4; i++)
	{
		global.Iarray[i] = instance_find(obj_Spotlight, i);
	}
}
else
{
	instance_activate_object(L1);
	instance_activate_object(L2);
	instance_activate_object(L3);
	instance_activate_object(L4);
}
global.spawnedlights = true;


//END OF SKIP CODE

if(instance_exists(L1) == true)
{
	instance_activate_object(L1);
}
if(instance_exists(L2) == true)
{
	instance_activate_object(L2);
}
if(instance_exists(L3) == true)
{
	instance_activate_object(L3);
}
if(instance_exists(L4) == true)
{
	instance_activate_object(L4);
}

if(instance_exists(EQ1) == true)
{
	instance_activate_object(EQ1);
}
if(instance_exists(EQ2) == true)
{
	instance_activate_object(EQ2);
}
if(instance_exists(EQ3) == true)
{
	instance_activate_object(EQ3);
}
if(instance_exists(EQ4) == true)
{
	instance_activate_object(EQ4);
}
if(instance_exists(EQ5) == true)
{
	instance_activate_object(EQ5);
}

//instance_deactivate_object(obj_equalizerhitbox)

by = obj_enemy_boss_songtest.y;
bx = obj_enemy_boss_songtest.x;
oebw = obj_enemy_bullet_wonder;
oebt = obj_enemy_bullet_turner;
oeba = obj_enemy_bullet_acel;
oebl = obj_enemy_bullet;




global.phase = 7;

dir_01 = 225;

// END OF SKIP CODE