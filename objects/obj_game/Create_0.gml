/// Iniziatzing the game and stuff
//also to make sure this object exists in the room as well
randomise();

scale = 1;
global.spawn = 0;
global.bullet_explode = false;
global.roomname = room;
global.bossdead = false;
global.timer = 0;
global.bullet_speed = 0;
global.speedset = false;


window_set_size((window_get_width()* scale), window_get_height() * scale);

//create the input as well. It has to exist in order for movement to work, and for the game to not
//crash

instance_create_depth(0,0,0,Input);
pause = false;
drawn = false;
current_room = room;