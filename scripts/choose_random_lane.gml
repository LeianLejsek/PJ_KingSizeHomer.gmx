var rng_value = irandom( max_rng_range-1 );

for( var i = 0; i < global.lanes; i++ ){
    if rng_value < rng_limit[ i ]{
        var miau = "miau";
        if( rng_range[ i ] - ( global.lanes - 1 ) * rng_offset < 0 ){
            return choose_random_lane();
        }
        return i;
    }
}
