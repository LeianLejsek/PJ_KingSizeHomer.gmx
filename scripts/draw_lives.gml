for( var i = 0; i < global.current_lives; i++ ){
    draw_sprite_ext( spr_heartopus, image_index, global.gui_lives_x + lives_sprite_width/2 + lives_sprite_width * i, global.gui_lives_y + lives_sprite_height/2, .75, .75, 0, c_white, 1 );
}
