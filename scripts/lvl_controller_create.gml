max_lvl_speed = 25;
min_lvl_speed = 6;
lvl_speed_acc = 2;
global.lvl_speed = min_lvl_speed;
global.top_lvl_speed = false;

global.max_lives = -1; //Set to -1 for ilimited lives
global.current_lives = global.max_lives;

global.max_boost_cells = 25;
global.boost_cells = 0;

max_rng_range = 200;
rng_offset = 10;
spawn_timer = 10;
initialize_rng_lane_values();

lives_sprite_width = global.gui_lives_width / global.max_lives;
lives_sprite_height = global.gui_lives_height;
lives_sprite_xscale = lives_sprite_width / 64;
lives_sprite_yscale = lives_sprite_height / 64;


background_hspeed[ 0 ] = -global.lvl_speed/4;

alarm[0] = 30;


