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
h_speed = global.lvl_speed;
//size in lane separation units
size_w = choose( 1, 2 );
if( size_w == 2 ) {
    sprite_index = spr_asteroid;
    image_speed = 0;
    image_index = irandom( image_number - 1 );
} else {
    sprite_index = spr_asteroid_big;
    image_speed = 0;
    image_index = irandom( image_number - 1 );
}
size_h = 2;

y = lane( lane_pos ) + global.lane_spacing/2;

image_xscale = ( global.lane_spacing * size_w )/sprite_width * choose( RIGHT, LEFT );
image_yscale = ( global.lane_spacing * size_h )/sprite_height * choose( UP, DOWN );



#define straight_line_set_up
sprite_index = spr_asteroid;
image_speed = 0;
image_index = irandom( image_number - 1 );
h_speed = global.lvl_speed;
y = lane( lane_pos );
size = 128;
image_xscale = size/sprite_width * choose( RIGHT, LEFT );
image_yscale = size/sprite_height * choose( UP, DOWN );


#define sin_wave_set_up
sprite_index = spr_asteroid;
image_speed = 0;
image_index = irandom( image_number - 1 );
h_speed = global.lvl_speed;
//wave properties
wave_length = global.lane_spacing * 3.5;
wave_amplitude = global.lane_spacing;

size = 96;
image_xscale = size/sprite_width * choose( RIGHT, LEFT );
image_yscale = size/sprite_height * choose( UP, DOWN );

rnd_start = irandom( 500 ); //set when created to make many that follow the same curve




#define jumping_set_up
enum JumpingState {
    JUMPING_UP,          
    SUSPENDED,
    FALLING,
    RECOVERY,
}

state = JumpingState.JUMPING_UP;
target_lane = lane_pos;
y = room_height + sprite_height;


sprite_index = spr_asteroid;
image_speed = 0;
image_index = irandom( image_number - 1 );
size = irandom_range( 32, 64 );
image_xscale = size/sprite_width * choose( RIGHT, LEFT );
image_yscale = size/sprite_height * choose( UP, DOWN );

h_speed = global.lvl_speed;

jump_speed = 25;
fall_speed = 30;
suspended_time = 30;  //time it spends suspended in the air
recovery_time = 20;