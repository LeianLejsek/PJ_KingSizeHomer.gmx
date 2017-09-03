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

max_damage = 600;
damage_increase = 3;
damage_decrease_initial = 0;
current_damage_decrease = damage_decrease_initial;
damage_decrease_acc = 10;
damage_decrease_max = 90;

max_boost_original = 240;
current_max_boost = max_boost_original;
boost_decrease = 2;
impact_boost_decrease = 120;

boost_meter = 0;
damage_meter = 0;

impulse_vector = 0;
top_speed = 0;

normal_acc = 5;

idle_decc = 1.5;

max_speed_decc = .08;

normal_decc = 6;

current_acc = normal_acc;
current_decc = normal_decc;

normal_max_speed = 10;
impact_speed = 60;
h_speed = 0;

x_offset = 0;
lane_pos = 0;

x = global.playspace_x + sprite_width;
y = lane( lane_pos );
