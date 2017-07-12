//Define the space in which the gameplay happens
global.playspace_width = room_width;
global.playspace_height = room_height/10 * 9;
global.playspace_x = 0;    //position of the top left
global.playspace_y = room_height/10 //- global.playspace_height;    //corner of the playspace

//Stablish lanes
global.lanes = 4;
global.lane_spacing = global.playspace_height / global.lanes;
global.border = global.lane_spacing / 2;


