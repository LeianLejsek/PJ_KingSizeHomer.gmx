//Define the space in which the gameplay happens
global.playspace_width = room_width/5 * 4;
global.playspace_height = room_height/4 * 3;
global.playspace_x = 108;    //position of the top left
global.playspace_y = room_height/9 //- global.playspace_height;    //corner of the playspace

global.boostzone_width = global.playspace_width / 2.5;
global.dangerzone_width = global.playspace_width / 10;

global.gui_lives_width = 256;
global.gui_lives_height = 48;
global.gui_lives_x = 20;
global.gui_lives_y = 15;

global.gui_time_width =1
global.gui_time_height =1
global.gui_time_x =1
global.gui_time_y =1

global.gui_boost_gauge_width = 64;
global.gui_boost_gauge_height = global.playspace_height - 100;
global.gui_boost_gauge_x = 40;
global.gui_boost_gauge_y = 100;

//Stablish lanes
global.lanes = 4;
global.lane_spacing = global.playspace_height / global.lanes;
global.border = global.lane_spacing / 2;


