#define obstacle_draw
switch type {
    case WALL:
        wall_draw();
    break;
    case STRAIGHT_LINE:
        straight_line_draw();
    break;
    case SIN_WAVE:
        sin_wave_draw();
    break;
    case JUMPING:
        jumping_draw();
    break;
}

#define wall_draw
//define scale
x_scale = ( global.lane_spacing * size_w )/sprite_width;
y_scale = ( global.lane_spacing * size_h )/sprite_height;
draw_sprite_ext( sprite_index, image_index, x, y, x_scale, y_scale, 0, c_white, 1 );

#define straight_line_draw
draw_self();

#define sin_wave_draw
draw_self();

#define jumping_draw
draw_self();
