if( global.total_time_sec > 0 ) {
    global.total_time_sec--;
    time_min = floor( global.total_time_sec / 60 );
    time_sec = global.total_time_sec - time_min * 60;
    alarm[ 1 ] = room_speed;
}

