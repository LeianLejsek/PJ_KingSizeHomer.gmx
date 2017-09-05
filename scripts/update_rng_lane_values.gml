var c_lane1 = argument0;

for( var i = 0; i < global.lanes; i++ ){
    if( i == c_lane1 ) {
        rng_range[ i ] -= ( global.lanes - 1 ) * rng_offset;
        
        if( i == 0 ){ 
            rng_limit[ i ] = rng_range[ i ]; 
        }else{ 
            rng_limit[ i ] = rng_limit[ i - 1 ] + rng_range[ i ];
        }
    } else {
        rng_range[ i ] += rng_offset;
        
        if( i == 0 ){ 
            rng_limit[ i ] = rng_range[ i ] 
        }else{ 
            rng_limit[ i ] = rng_limit[ i - 1 ] + rng_range[ i ]
        }
    }
}

