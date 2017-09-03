if( impulse_vector != 0 ) {
    if( !top_speed ){
        h_speed += current_acc;
        if( h_speed > normal_max_speed ){
            h_speed = normal_max_speed;
            top_speed = true;
        } 
        
        
        
    } else {        
        if( h_speed <= 0 ) h_speed = 0;
    
        var boost_increase = 15 ^ ( damage_meter/max_damage );
        boost_meter += boost_increase;
        if( boost_meter >= current_max_boost ) {
            global.boost_cells++;
            boost_meter = 0;
            current_max_boost = current_max_boost * 1.17;
            if( global.boost_cells >= global.max_boost_cells ) {
                global.boost_cells = 0;
                current_max_boost = max_boost_original;
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
        //update boost meter
    }
    if( boost_meter > 0 ) boost_meter -= boost_decrease;
    if( current_damage_decrease < damage_decrease_max ) current_damage_decrease += damage_decrease_acc;
    if( damage_meter > 0 ) damage_meter -= current_damage_decrease;
}
next_x = x + h_speed;
if( next_x >= global.playspace_x && next_x <= global.playspace_x + global.playspace_width ) {
    x = next_x;
    global.lvl_speed = 10;
    background_hspeed[ 0 ] = -global.lvl_speed/4;
    obj_lvl_controller.spawn_timer = 20;
} else {
    if( next_x >= global.playspace_x + global.playspace_width ) {
        global.lvl_speed = 30;
        background_hspeed[ 0 ] = -global.lvl_speed/4;
        obj_lvl_controller.spawn_timer = 10;
    }
}

