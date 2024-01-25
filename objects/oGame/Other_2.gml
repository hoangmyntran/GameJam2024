/// @description Insert description here
// You can write your code in this editor

#macro TS 16

var _w = ceil(room_width / TS);
var _h = ceil(room_height / TS);

global.mp_grid = mp_grid_create(0 , 0, _w, _h, TS, TS);

mp_grid_add_instances(global.mp_grid, oWall, false);
