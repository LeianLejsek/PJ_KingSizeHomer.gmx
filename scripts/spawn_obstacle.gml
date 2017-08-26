//var current_lane = irandom( global.lanes - 1 );
var current_lane = choose_random_lane()
var current_obstacle = instance_create( room_width + 50, lane( current_lane ), obj_obstacle);
current_obstacle.lane_pos = current_lane;
with ( current_obstacle ) {
    type = choose( WALL, STRAIGHT_LINE, SIN_WAVE, JUMPING );
    if( type = WALL ){
    other.alarm[0] = irandom_range( other.spawn_timer_min + 5, other.spawn_timer_max + 5 );
    } else {
    other.alarm[0] = irandom_range( other.spawn_timer_min, other.spawn_timer_max );
    }
    obstacle_type_set_up( type );
}

update_rng_lane_values( current_lane );



