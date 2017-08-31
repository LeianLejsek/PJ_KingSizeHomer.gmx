/*
draw_set_colour( c_red );
for( i = 0; i < global.lanes; i++) {
    draw_line( global.playspace_x, lane( i ), global.playspace_x + global.playspace_width, lane( i ) );
}

draw_set_colour( c_blue );
draw_rectangle( global.playspace_x, global.playspace_y, global.playspace_x + global.playspace_width, global.playspace_y + global.playspace_height, true );

draw_set_colour( c_green );
draw_rectangle( global.gui_lives_x, global.gui_lives_y, global.gui_lives_x + global.gui_lives_width, global.gui_lives_y + global.gui_lives_height, true );

draw_set_colour( c_yellow );
draw_rectangle( global.gui_boost_gauge_x, global.gui_boost_gauge_y, global.gui_boost_gauge_x + global.gui_boost_gauge_width, global.gui_boost_gauge_y + global.gui_boost_gauge_height, true );

draw_set_alpha( .25 );

draw_rectangle( global.playspace_x + global.playspace_width - global.boostzone_width, global.playspace_y, global.playspace_x + global.playspace_width, global.playspace_y + global.playspace_height, false);

draw_set_colour( c_fuchsia );
draw_rectangle( global.playspace_x, global.playspace_y, global.playspace_x + global.dangerzone_width, global.playspace_y + global.playspace_height, false );

draw_set_alpha( 1 );
