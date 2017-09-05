#define event_received
var event = argument0;

switch state {
    case HomerStates.STATE_FLYING:
        state_flying( event );
    break;
    case HomerStates.STATE_HURT:
        state_hurt( event );
    break;
    case HomerStates.STATE_CHANGING_LANE:
        state_changing_lane( event );
    break;
    default:
        show_debug_message( "State not found" );
        game_end();
    break;
}

#define state_flying
var event = argument0;

switch event {
    case EVENT_UPDATE:
        homer_update();
    break;
    case EVENT_UP:
        update_lane_pos( UP );
    break;
    case EVENT_DOWN:
        update_lane_pos( DOWN );
    break;
    case EVENT_LEFT_PRESSED:
        //impulse_vector = LEFT;
    break;
    case EVENT_RIGHT_PRESSED:
        impulse_vector = RIGHT;
        current_damage_decrease = damage_decrease_initial;
    break;
    //case EVENT_LEFT_RELEASED:
    case EVENT_RIGHT_RELEASED:
        impulse_vector = 0;
        top_speed = false;
    break;
    case EVENT_DRAW:
        draw_self();
        draw_boost_meter();
    break;
    case EVENT_HURT:
        //play_sound
        global.current_lives--;
        if( global.current_lives == 0 ) instance_destroy();
        //spprite_index = animation_hurt;
        with( other ) instance_destroy();
        impulse_vector = 0;
        top_speed = false;
        boost_meter -= current_max_boost / 2;
        if( boost_meter < 0 ) boost_meter = 0;
        //image_alpha = .25;
        h_speed = -global.lvl_speed;
        timer = 0;
        //shock = true;
        //state = HomerStates.STATE_HURT;
    break;
}

#define state_hurt
var event = argument0;

switch event {
    case EVENT_UPDATE:
        homer_update();
        timer++;
        if( timer = hurt_shock_time ) {
            shock = false;
            image_alpha = .75;
        }
        if( timer = hurt_total_time ) {
            state = HomerStates.STATE_FLYING;
            image_alpha = 1;
        }
    break;
    case EVENT_UP:
        if( !shock ) update_lane_pos( UP );
    break;
    case EVENT_DOWN:
        if( !shock ) update_lane_pos( DOWN );
    break;
    case EVENT_LEFT_PRESSED:
        //if( !shock ) impulse_vector = LEFT;
    break;
    case EVENT_RIGHT_PRESSED:
        if( !shock ) impulse_vector = RIGHT;
    break;
    //case EVENT_LEFT_RELEASED:
    case EVENT_RIGHT_RELEASED:
        if( !shock ) impulse_vector = 0;
    break;
    case EVENT_DRAW:
        draw_sprite_ext( sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_red, image_alpha );
        draw_boost_meter();
    break;
}

#define state_changing_lane
var event = argument0;

switch event {
    default:
    break;
}