/// @description 
timer++

//Step code is in the parent file
event_inherited();

//if(dialogue_1 == true) {
//	if(D0T_dead) {
//		myName = "Klaus";
//		myPortrait = spr_klaus_dialogue;
//		myText[0] = "Well, that’s a shame.";
//		myText[1] = "That girl showed promise.";
//		myText[2] = "Apparently you do too, if you were able to beat her.";
//		myText[3] = "Heh. Well, let’s see what you’ve got. Bring it on, kiddo.";
//		mySpeaker = -1;
//		mask_index = 0;
//	}
//	else {
//		myName = "Klaus";
//		myPortrait = spr_klaus_dialogue;
//		myText[0] = "Another young upstart here to attempt to take the throne?";
//		myText[1] = "I will leave everything on the stage as I always do.";
//		myText[2] = "Good luck. You’re going to need it, boy.";
//		mySpeaker = -1;
//		mask_index = 0;
//	}
//}

if(timer >= 10 && !instance_exists(obj_textbox))
{
	par_speaker.detection_radius = 10;
}


if((obj_player.y > 1000 && dialogue_2 == true) || (timeline_index == tl_2001_01 && 
			timeline_position > 900 && timeline_running == true && health < 50)) 
		{
	par_speaker.detection_radius = 1000;
	
	reset_dialogue_defaults();
	myName = "Klaus";
	myPortrait = spr_klaus_dialogue;
	myText[0] = "Sorry, kid, looks like you didn’t have what it takes.";
	myText[1] = "Try again next year.";
	mySpeaker = -1;
	//Needed to solve weird issue of not spawning the text box
	
	if(text_01 == false) {
	//	keyboard_key_press(vk_enter);
	//	keyboard_key_release(vk_enter);
	}
	
	audio_sound_gain(Rhapsody_2001, 0, 2500);
	//alarm[2] = 5;
	text_01 = true;
}
if(!instance_exists(obj_textbox) && (dialogue_2 == true || dialogue_3 == true) && text_01 == true) {
	par_speaker.detection_radius = 10;
	reset_dialogue_defaults();
	//show_debug_message("please work");
	instance_create_depth(room_width/2, room_height/2, -1, obj_highscoretextbox);
	//text_01 = false;
	dialogue_2 = false;
	dialogue_3 = false;

}

if(timeline_index == tl_2001_01 && timeline_position > 900 && timeline_running == true && health > 50) {
	timeline_speed = 0;
	timeline_running = false;
	par_speaker.detection_radius = 1000;
	reset_dialogue_defaults();
	myName = "Klaus";
	myPortrait = spr_klaus_dialogue;
	myText[0] = "Well, damn.";
    myText[1] = "No one was expecting some nobody to get in and take out the reigning champ the first time around, especially me.";
    myText[2] = "Good job.";
    myText[3] = "Well, you have the reins now.";
    myText[4] = "Make the most of it, and please, for the love of music, do not screw it up.";
	mySpeaker = -1;
	
	keyboard_key_press(vk_enter);
	keyboard_key_release(vk_enter);
	
	text_01 = true;
}


if(!instance_exists(obj_textbox) && dialogue_1 == true && timer > 1)
{
	alarm[0] = 60;
	dialogue_1 = false;
	dialogue_2 = true;
}

//Turn Red when hit
if (blendtime > 0)
{
	blendtime--;
}
else
{
	blend = c_white;
}


//If the player dies stop the timeline 

if(instance_exists(obj_player) == false)
{
	timeline_running = false;
}

//Boss gains favor
if(!instance_exists(obj_textbox) && timer mod 25 == 0)
{
	health = health - 0.1;
}
