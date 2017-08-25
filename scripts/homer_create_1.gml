enum HomerStates {
    STATE_FLYING,
    STATE_HURT,
    STATE_CHANGING_LANE,    
}

state = HomerStates.STATE_FLYING;

mx_lives = -1;
current_lives = mx_lives;

hurt_shock_time = 15;
hurt_total_time = 45;
animation_flash_cycle = 2;

impulse_vector = 0;
normal_h_speed = 10;
hurt_shock_h_speed = -.1;
hurt_recovery_h_speed = 7;
h_speed = normal_h_speed;

x_offset = 0;
lane_pos = 0;

x = global.playspace_x + sprite_width;
y = lane( lane_pos );
