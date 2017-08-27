//Define the space in which the gameplay happens
global.playspace_width = room_width/15 * 14;
global.playspace_height = room_height/10 * 9;
global.playspace_x = 0;    //position of the top left
global.playspace_y = room_height/10 //- global.playspace_height;    //corner of the playspace

global.boostzone_width = global.playspace_width / 5;
global.dangerzone_width = global.playspace_width / 10;

global.gui_lives_width = 256;
global.gui_lives_height = 48;
global.gui_lives_x = 20;
global.gui_lives_y = 15;

global.gui_time_score_width =1
global.gui_time_score_height =1
global.gui_time_score_x =1
global.gui_time_score_y =1

//Stablish lanes
global.lanes = 4;
global.lane_spacing = global.playspace_height / global.lanes;
global.border = global.lane_spacing / 2;


