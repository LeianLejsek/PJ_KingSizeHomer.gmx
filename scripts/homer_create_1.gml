enum HomerStates {
    STATE_FLYING,
    STATE_HURT,
    STATE_CHANGING_LANE,    
}

state = HomerStates.STATE_FLYING;

mode = 1;

impulse_vector = 0;
h_speed = 10;
x_offset = 0;
lane_pos = 0;

x = global.playspace_x + sprite_width;
y = lane( lane_pos );
