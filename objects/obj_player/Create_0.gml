/// Creating the player object

vx = 0;
vy = 0;
player_speed = 5;

iframes = 0;

bomb_count = 2
instrument = 0
hp = 10;
global.dead = false;

cooldown = false;
instrument_cooldown = false
bomb_cooldown = false

dialog_start_started = false;
safeguard = false;

state = "IDLE";
instance_create_depth(x,y,0,obj_playergraze_hitbox);

