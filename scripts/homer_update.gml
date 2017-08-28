/*
if( x < global.playspace_x + global.dangerzone_width ) {
    current_damage += damage_increase;
    if( current_damage >= max_damage )instance_destroy();
} else {
    if( current_damage > 0 ) {
        current_damage -= damage_increase*2;
    }
}

if( x > global.playspace_x + global.playspace_width - global.boostzone_width ) {
    current_boost += boost_increase;
    if( current_boost >= max_boost ){
        current_boost = 0;
        global.boost_cells++;
    }
} else {
    if( current_boost > 0 ) {
        current_boost -= boost_increase/2;
    }
}
*/
if( impulse_vector != 0 ) {
    h_speed += current_acc * impulse_vector;
    if( abs( h_speed ) > normal_max_speed ) {
        h_speed = normal_max_speed * sign( h_speed )
        //update boost meter
        boost_meter += boost_increase;
        if( boost_meter >= max_boost ) {
            global.boost_cells++;
            boost_meter = 0;
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
        boost_meter -= damage_increase;
        if( -boost_meter >= max_damage ) {
            instance_destroy();
        }
    }
}

next_x = x + h_speed;
if( next_x > global.playspace_x && next_x < global.playspace_x + global.playspace_width ) {
    x = next_x;
}
