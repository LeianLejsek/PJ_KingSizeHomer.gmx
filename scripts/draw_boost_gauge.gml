draw_healthbar( global.gui_boost_gauge_x, global.gui_boost_gauge_y, global.gui_boost_gauge_x + global.gui_boost_gauge_width, global.gui_boost_gauge_y + global.gui_boost_gauge_height, global.boost_cells / global.max_boost_cells * 100, c_black, c_yellow, c_yellow, 3, true, true );

draw_set_colour( c_red );
for( var i = 0; i < global.lanes; i++ ) {
    draw_text( 100 + 50 * i, 50, rng_range[ i ] );
}
