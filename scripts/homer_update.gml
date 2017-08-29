if( impulse_vector != 0 ) {
    if( !top_speed ){
        h_speed += current_acc;
        if( h_speed > normal_max_speed ){
            h_speed = normal_max_speed;
            top_speed = true;
        } 
        
        if( boost_meter > 0 ) boost_meter -= boost_decrease;
        
    } else {
        h_speed -= max_speed_decc;
        
        if( h_speed <= 0 ) h_speed = 0;
    
        if( boost_meter < 0 ) {
            var boost_increase = boost_increase_damaged; 
        } else {
            var boost_increase = h_speed/3 + 2;
        }
        boost_meter += boost_increase;
        if( boost_meter >= max_boost ) {
            global.boost_cells++;
            boost_meter = 0;
        }
        //Overheat;
        damage_meter += damage_increase;
        if( damage_meter >= max_damage ) {
            instance_destroy();
        }
    }
} else {
    h_speed -= current_decc;
    if( shock ) {
        var max_speed = global.lvl_speed + impact_speed;
    } else {
        var max_speed = global.lvl_speed;
    } 
    if( abs( h_speed ) > max_speed ) {
        h_speed = -max_speed;
        //update boost meter
    }

    if( damage_meter > 0 ) damage_meter -= damage_decrease;
}
next_x = x + h_speed;
if( next_x > global.playspace_x && next_x < global.playspace_x + global.playspace_width ) {
    x = next_x;
}

