//var current_type = ;
var current_lane = irandom( global.lanes - 1 );
var current_obstacle = instance_create( global.playspace_x + global.playspace_width + 50, lane( current_lane ), obj_obstacle);
with ( current_obstacle ) {
    type = choose( WALL, STRAIGHT_LINE, SIN_WAVE, JUMPING );
    obstacle_type_set_up( type );
}

alarm[0] = irandom_range( 5, 15 );
