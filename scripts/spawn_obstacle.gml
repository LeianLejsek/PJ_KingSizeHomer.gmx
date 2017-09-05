type = choose( STRAIGHT_LINE, SIN_WAVE, WALL, /*JUMPING*/ );
if( type == WALL ) {
    var middle_lane = irandom( 2 );
    //update_rng_lane_values( middle_lane, middle_lane++ );
    var current_obstacle = instance_create( room_width + 50, lane( middle_lane ), obj_obstacle);
    current_obstacle.type = type;
    current_obstacle.lane_pos = middle_lane;
    with ( current_obstacle ) {
        obstacle_type_set_up( type );
    }
} else {
    var current_lane = choose_random_lane();
    update_rng_lane_values( current_lane );
    var current_obstacle = instance_create( room_width + 50, lane( current_lane ), obj_obstacle);
    current_obstacle.lane_pos = current_lane;
    current_obstacle.type = type;
    with ( current_obstacle ) {
        obstacle_type_set_up( type );
    }
}



alarm[ 0 ] = spawn_timer;



