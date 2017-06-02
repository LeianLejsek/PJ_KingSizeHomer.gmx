#define event_received
var event = argument0;

switch state {
    case STATE_FLYING:
        state_flying( event );
    break;
    case STATE_HURT:
        state_hurt( event );
    break;
    case STATE_CHANGING_LANE:
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
    case EVENT_HURT:
    break;
    default:
        show_debug_message("Event not defined");
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