if( boost_meter > 0 ) {
    draw_healthbar( x - 50, y - sprite_height, x + 50, y - sprite_height + 10, boost_meter/max_boost * 100, c_black, c_yellow, c_yellow, 0, true, false );
} else {
    draw_healthbar( x - 50, y - sprite_height, x + 50, y - sprite_height + 10, -boost_meter/max_damage * 100, c_black, c_red, c_red, 0, true, false );
}
