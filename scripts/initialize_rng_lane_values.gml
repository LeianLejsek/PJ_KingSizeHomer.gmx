for( var i = 0; i < global.lanes; i++ ){
    rng_range[ i ] = floor( max_rng_range / global.lanes );
    if( i == 0 ){
        rng_limit[ i ] = rng_range[ i ];
    } else {
        rng_limit[ i ] = rng_limit[ i - 1 ] + rng_range[ i ];
    }
}
