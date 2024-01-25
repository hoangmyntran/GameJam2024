draw_self();

/*spriteSpread[2] = sSpreadLeft;
spriteSpread[3] = sSpreadRight;

spriteSpreadWalk[2] = sSpreadWalkLeft;
spriteSpreadWalk[3] = sSpreadWalkRight;

spriteSpreadAttack[2] = sSpreadAttackLeft;
spriteSpreadAttack[3] = sSpreadAttackRight;*/

spriteSpreadL[2] = sSpreadLeftL;
spriteSpreadL[3] = sSpreadRightL;
spriteSpreadR[2] = sSpreadLeftR;
spriteSpreadR[3] = sSpreadRightR;


spriteSpreadWalkL[2] = sSpreadWalkLeftL;
spriteSpreadWalkL[3] = sSpreadWalkRightL;
spriteSpreadWalkR[2] = sSpreadWalkLeftR;
spriteSpreadWalkR[3] = sSpreadWalkRightR;

spriteSpreadAttackL[2] = sSpreadAttackLeftL;
spriteSpreadAttackL[3] = sSpreadAttackRightL;
spriteSpreadAttackR[2] = sSpreadAttackLeftR;
spriteSpreadAttackR[3] = sSpreadAttackRightR;






if numSpreads > 0 and !dashing {
	if face > 1 {
		if currentSprite == sprite {
			spriteToDrawL = spriteSpreadL[face]
			draw_sprite_ext( spriteToDrawL, image_index, x, y, image_xscale, image_yscale, 0, spriteLColor, 0.9  );
		} else if currentSprite == spriteWalk {
			spriteToDrawL = spriteSpreadWalkL[face]
			draw_sprite_ext( spriteToDrawL, image_index, x, y, image_xscale, image_yscale, 0, spriteLColor, 0.9  );
		} 
	} if attackFace > 1 {
		if currentSprite == spriteAttack and cooldown >= 0 {
			spriteToDrawL = spriteSpreadAttackL[attackFace];
			draw_sprite_ext( spriteToDrawL, image_index, x, y, image_xscale, image_yscale, 0, spriteLColor, 0.9  );
		}
	}
}
if numSpreads > 1 and !dashing {
	if mouse_check_button_pressed(mb_middle) {
		tempSpreadColor = spriteLColor;
		spriteLColor = spriteRColor;
		spriteRColor = tempSpreadColor;
	}
	if face > 1 {
		if currentSprite == sprite {
			spriteToDrawR = spriteSpreadR[face]
			draw_sprite_ext( spriteToDrawR, image_index, x, y, image_xscale, image_yscale, 0, spriteRColor, 0.9  );
		} else if currentSprite == spriteWalk {
			spriteToDrawR = spriteSpreadWalkR[face]
			draw_sprite_ext( spriteToDrawR, image_index, x, y, image_xscale, image_yscale, 0, spriteRColor, 0.9  );
		} 
	} if attackFace > 1 {
		if currentSprite == spriteAttack and cooldown >= 0 {
			spriteToDrawR = spriteSpreadAttackR[attackFace];
			draw_sprite_ext( spriteToDrawR, image_index, x, y, image_xscale, image_yscale, 0, spriteRColor, 0.9  );
		}
	}
} 