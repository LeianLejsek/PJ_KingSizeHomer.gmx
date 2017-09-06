damage_percentage = damage_meter / max_damage * 100;

if( impulse_vector == 1 ) {
    if( !top_speed ){
        h_speed += current_acc;
        if( h_speed > normal_max_speed ){
            h_speed = normal_max_speed;
            top_speed = true;
        } 
    } else {        
        if( h_speed <= 0 ) h_speed = 0;
        if( damage_percentage > augmented_boost_damage_percentage_threshold ) {
            var boost_increase = current_max_boost / ( augmented_boost_increase_initial_percentage + global.boost_cells * 2 );
            global.augmented_boost = true;
        } else {
            var boost_increase = boost_increase_base ^ ( damage_meter/max_damage );
            global.augmented_boost = false;
        }
        boost_meter += boost_increase;
        if( boost_meter >= current_max_boost ) {
            global.boost_cells++;
            boost_meter = 0;
            current_max_boost = current_max_boost * max_boost_increase_factor;
            if( global.boost_cells >= global.max_boost_cells ) {
                global.boost_cells = 0;
                current_max_boost = max_boost_original;
                damage_meter = 0;
                global.total_time_sec += 30;
            }
        }
        //Overheat;
        damage_meter += damage_increase;
        if( damage_meter >= max_damage ) {
            top_speed = false;
            damage_meter = 0;
            global.boost_cells --;
            if( global.boost_cells < 0 ) global.boost_cells = 0;
            impulse_vector = 0;
            h_speed = -global.lvl_speed;
        }
    }
} else {
    h_speed -= current_decc;
    if( shock ) {
        var max_speed = global.lvl_speed/1.1 + impact_speed;
    } else {
        var max_speed = global.lvl_speed/1.1;
    } 
    if( abs( h_speed ) > max_speed ) {
        h_speed = -max_speed;
    }
    if( boost_meter > 0 ) boost_meter -= boost_decrease;
    if( current_damage_decrease < damage_decrease_max ) current_damage_decrease += damage_decrease_acc;
    if( damage_meter >= 0 ) { 
        damage_meter -= current_damage_decrease;
    } else { 
        damage_meter = 0;
    }
    if( damage_meter < 0 ) {
        miau = 'miau';
    }
}

next_x = x + h_speed;
if( next_x >= global.playspace_x && next_x <= global.playspace_x + global.playspace_width ) {
    x = next_x;
    global.top_lvl_speed = false;
    obj_lvl_controller.spawn_timer = 40;
} else {
    if( next_x >= global.playspace_x + global.playspace_width ) {
        global.top_lvl_speed = true;
        obj_lvl_controller.spawn_timer = 20;
    }
}

