#define obstacle_type_set_up
switch type {
    case WALL:
        wall_set_up();
    break;
    case STRAIGHT_LINE: 
        straight_line_set_up();
    break;
    case SIN_WAVE:
        sin_wave_set_up();
    break;
    case JUMPING:
        jumping_set_up();
    break;   
    default:
    break;
}

#define wall_set_up
sprite_index = spr_obstacle;
h_speed = global.lvl_speed;
//size in lane separation units
size_w = 1;
size_h = choose( 1, 2 );
//place top or bottom
lane_pos = choose( UP, DOWN );
if( lane_pos = UP ) {
    y = ( global.lane_spacing * size_h )/2;
} else {
    y = room_height - ( global.lane_spacing * size_h )/2;
}


#define straight_line_set_up
sprite_index = spr_obstacle;
h_speed = global.lvl_speed;
lane_pos = irandom(4);
y = lane( lane_pos );

#define sin_wave_set_up
sprite_index = spr_obstacle;
h_speed = global.lvl_speed;
//wave properties
wave_length = global.lane_spacing;
wave_amplitude = global.lane_spacing/2;

rnd_start = irandom( 500 ); //set when created to make many that follow the same curve

lane_pos = irandom( 4 );
y = lane( lane_pos );

#define jumping_set_up
enum JumpingState {
    JUMPING_UP,          
    SUSPENDED,
    FALLING,
    RECOVERY,
}

state = JumpingState.JUMPING_UP;
target_lane = irandom( global.lanes - 1 );
y = room_height + sprite_height;


sprite_index = spr_obstacle;
h_spd = global.lvl_speed;

jump_speed = 25;
fall_speed = 30;
suspended_time = 30;  //time it spends suspended in the air
recovery_time = 20;
