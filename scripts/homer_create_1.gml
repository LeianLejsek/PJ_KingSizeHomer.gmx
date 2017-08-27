enum HomerStates {
    STATE_FLYING,
    STATE_HURT,
    STATE_CHANGING_LANE,    
}

state = HomerStates.STATE_FLYING;

shock = false;
hurt_shock_time = 10;
hurt_total_time = 40;
//animation_flash_cycle = 2;

max_damage = 70;
damage_increase = 1;
current_damage = 0;

max_boost = 120;
boost_increase = 1;
current_boost = 0;


impulse_vector = 0;

normal_acc = 5;

idle_decc = 1.5;

normal_decc = 6;

current_acc = normal_acc;
current_decc = normal_decc;

normal_max_speed = 7;
impact_speed = 8;
h_speed = 0;

x_offset = 0;
lane_pos = 0;

x = global.playspace_x + sprite_width;
y = lane( lane_pos );
