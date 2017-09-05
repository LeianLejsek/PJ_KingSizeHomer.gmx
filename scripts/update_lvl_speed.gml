if( global.top_lvl_speed ) {
    if( global.lvl_speed < max_lvl_speed ) {
        global.lvl_speed += lvl_speed_acc;
    }
} else {
    if( global.lvl_speed > min_lvl_speed ) {
        global.lvl_speed -= lvl_speed_acc * 4;
    } else {
        global.lvl_speed = min_lvl_speed;
    }
}

if( global.augmented_boost ) {
    background_hspeed[ 0 ] = -global.lvl_speed / 2.7;
} else {
    background_hspeed[ 0 ] = -global.lvl_speed / 4;
}
