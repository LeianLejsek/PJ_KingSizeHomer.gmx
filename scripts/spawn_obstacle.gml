//var current_lane = irandom( global.lanes - 1 );
var current_lane = choose_random_lane()
var current_obstacle = instance_create( global.playspace_x + global.playspace_width + 50, lane( current_lane ), obj_obstacle);
current_obstacle.lane_pos = current_lane;
with ( current_obstacle ) {
    type = choose( WALL, STRAIGHT_LINE, SIN_WAVE, JUMPING );
    if( type = WALL ){
        other.spawn_timer_min = 15;
        other.spawn_timer_max = 20;
    } else {
        other.spawn_timer_min = 5;
        other.spawn_timer_max = 12;
    }
    obstacle_type_set_up( type );
}

update_rng_lane_values( current_lane );


alarm[0] = irandom_range( spawn_timer_min, spawn_timer_max );
