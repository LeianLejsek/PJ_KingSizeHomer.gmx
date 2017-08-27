if( x < global.playspace_x + global.dangerzone_width ) {
    current_damage += damage_increase;
    if( current_damage >= max_damage )instance_destroy();
} else {
    if( current_damage > 0 ) {
        current_damage -= damage_increase*2;
    }
}

x_offset = h_speed * impulse_vector;

x_offset -= global.lvl_speed;

if( shock ) x_offset -= hurt_h_speed;

next_x = x + x_offset;
if( next_x > global.playspace_x && next_x < global.playspace_x + global.playspace_width ) {
    x = next_x;
}
