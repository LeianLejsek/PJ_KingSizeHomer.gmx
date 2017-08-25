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
        impulse_vector = LEFT;
    break;
    case EVENT_RIGHT_PRESSED:
        impulse_vector = RIGHT;
    break;
    case EVENT_LEFT_RELEASED:
    case EVENT_RIGHT_RELEASED:
        impulse_vector = 0;
    break;
    case EVENT_DRAW:
        draw_self();
    break;
    case EVENT_HURT:
        //play_sound
        current_lives--;
        if( current_lives == 0 ) instance_destroy();
        //spprite_index = animation_hurt;
        impulse_vector = 0;
        timer = 0;
        shock = true;
        state = HomerStates.STATE_HURT;
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
        }
        if( timer = hurt_total_time ) {
            state = HomerStates.STATE_FLYING;
        }
    break;
    case EVENT_UP:
        if( !shock ) update_lane_pos( UP );
    break;
    case EVENT_DOWN:
        if( !shock ) update_lane_pos( DOWN );
    break;
    case EVENT_LEFT_PRESSED:
        if( !shock ) impulse_vector = LEFT;
    break;
    case EVENT_RIGHT_PRESSED:
        if( !shock ) impulse_vector = RIGHT;
    break;
    case EVENT_LEFT_RELEASED:
    case EVENT_RIGHT_RELEASED:
        if( !shock ) impulse_vector = 0;
    break;
    case EVENT_DRAW:
        draw_sprite_ext( sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 0.5 );
    break;
}

#define state_changing_lane
var event = argument0;

switch event {
    default:
    break;
}