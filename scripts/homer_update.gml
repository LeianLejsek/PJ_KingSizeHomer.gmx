x_offset = h_speed * impulse_vector;

if( impulse_vector = LEFT ) {
    x_offset -= global.lvl_speed;
}

next_x = x + x_offset;
if( next_x > global.playspace_x && next_x < global.playspace_x + global.playspace_width ) {
    x = next_x;
}
