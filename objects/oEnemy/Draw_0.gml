draw_sprite_ext(sprite_index, image_index, x, y, facing * oPlayer.image_xscale, oPlayer.image_yscale, 0, c_white, fade);

if flashAlpha > 0 {
	shader_set(shFlash);
	
	draw_sprite_ext(sprite_index, image_index, x, y, facing * oPlayer.image_xscale, oPlayer.image_yscale, image_angle, flashColor, flashAlpha);
	
	shader_reset();
}


