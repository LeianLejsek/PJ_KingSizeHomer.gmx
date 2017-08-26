global.lvl_speed = 15;
max_rng_range = 100;
rng_offset = 5;
spawn_timer_min = 5;
spawn_timer_max = 10;

global.max_lives = 5;
global.current_lives = global.max_lives;

lives_sprite_width = global.gui_lives_width / global.max_lives;
lives_sprite_height = global.gui_lives_height;
lives_sprite_xscale = lives_sprite_width / 64;
lives_sprite_yscale = lives_sprite_height / 64;

initialize_rng_lane_values();

background_hspeed[ 0 ] = -2;

alarm[0] = 30;


