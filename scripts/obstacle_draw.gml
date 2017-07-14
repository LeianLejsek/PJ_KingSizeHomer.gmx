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
draw_self();

#define straight_line_draw
draw_self();

#define sin_wave_draw
draw_self();

#define jumping_draw
draw_self();