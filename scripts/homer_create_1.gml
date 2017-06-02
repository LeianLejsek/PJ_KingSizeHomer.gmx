enum Homer_States {
    STATE_FLYING,
    STATE_HURT,
    STATE_CHANGING_LANE,    
}

state = Homer_States.STATE_FLYING;

mode = 1;

lane_pos = 0;

y = lane( lane_pos );
