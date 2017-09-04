//var current_lane = irandom( global.lanes - 1 );
var current_lane = choose_random_lane()
var current_obstacle = instance_create( room_width + 50, lane( current_lane ), obj_obstacle);
current_obstacle.lane_pos = current_lane;
with ( current_obstacle ) {
    type = choose( WALL, STRAIGHT_LINE, SIN_WAVE, /*JUMPING*/ );
    obstacle_type_set_up( type );
}

alarm[ 0 ] = spawn_timer;
update_rng_lane_values( current_lane );



