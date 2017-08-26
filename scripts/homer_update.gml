x_offset = h_speed * impulse_vector;

x_offset -= global.lvl_speed;

if( shock ) x_offset -= hurt_h_speed;

next_x = x + x_offset;
if( next_x > global.playspace_x && next_x < global.playspace_x + global.playspace_width ) {
    x = next_x;
}
