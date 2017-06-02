lane_offset = argument0;

lane_pos += lane_offset;

if( lane_pos = -1 ) {
    lane_pos++;
} else {
    if( lane_pos = global.lanes ) {
        lane_pos--;
    }
}

y = lane( lane_pos );

