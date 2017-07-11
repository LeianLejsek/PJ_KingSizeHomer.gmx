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
    case EVENT_HURT:
        instance_destroy();
    break;
}

#define state_hurt
var event = argument0;

switch event {
    default:
    break;
}

#define state_changing_lane
var event = argument0;

switch event {
    default:
    break;
}