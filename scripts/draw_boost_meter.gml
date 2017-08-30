draw_healthbar( x - 50, y - sprite_height, x + 50, y - sprite_height + 10, boost_meter/max_boost * 100, c_black, c_yellow, c_yellow, 0, true, false );
var damage_percentage = damage_meter / max_damage * 100;
var damagebar_representation = damage_percentage * 3;
//draw_healthbar( x - 50, y + sprite_height -10 , x + 50, y + sprite_height, damagebar_representation, c_black, c_red, c_red, 0, true, false );
if( damagebar_representation > 50 ) {
    if( damage_percentage < 98 ) {
        draw_sprite_ext( spr_pingu_effects, image_index, x, y, image_xscale, image_yscale, 0, c_red, damage_percentage / 100 );
    } else {
        draw_sprite_ext( spr_pingu_effects, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1 );
    }
}

