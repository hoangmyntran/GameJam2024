// Get Camera Coordinates

var _camX = camera_get_view_x( view_camera[0] );
var _camY = camera_get_view_y( view_camera[0] );


// Health Bar

var _hpString = "HP: " + string(playerHp) + "/" + string(playerMaxHp);
draw_text( _camX, _camY, _hpString );



// Mold Bar
// frame 0: left of HUD, frame 1: empty HUD notch, frame 2: full notch
var _border = 20;
var _scale = 0.5;

draw_sprite_ext( sMoldbar, 0 , _camX + _border, _camY + _border, _scale, _scale, 0, -1, 1);

for ( var i = 0; i < 6; i++) {
	var _sep = 64;
	draw_sprite_ext ( sMoldbar, 1, _camX + _border + _sep*i, _camY + _border, _scale, _scale, 0, -1, 1 );
}