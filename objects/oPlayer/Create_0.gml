// Player health/stats
player_max_health = 100;
player_health = player_max_health;

// Currency 
wealth = 0;

//variables for movement
moveDir = 0;
slowSpd = 3;
dashSpd = 10;
dashing = false;
moveSpd = slowSpd;
xspd = 0;
yspd = 0;
cooldown = 5;
//spreadOn = false;
attackStart = false;
attackFace = 3;
canDash = true;
numSpreads = 0;
spriteLColor = c_white;
spriteRColor = c_white;

jar_break_bool = false;

hitByAttack = ds_list_create();

//sprite control
#region
	centerYOffset = -sprite_height/2;
	centerY = y + centerYOffset;

	aimDir = 0;

	face = 3;

	sprite[0] = sPlayerBackRight;
	sprite[1] = sPlayerBackLeft;
	sprite[2] = sPlayerLeft;
	sprite[3] = sPlayerRight;


	spriteWalk[0] = sPlayerWalkBackRight;
	spriteWalk[1] = sPlayerWalkBackLeft;
	spriteWalk[2] = sPlayerWalkLeft;
	spriteWalk[3] = sPlayerWalkRight;


	spriteAttack[0] = sPlayerAttackBackRight;
	spriteAttack[1] = sPlayerAttackBackLeft;
	spriteAttack[2] = sPlayerAttackLeft;
	spriteAttack[3] = sPlayerAttackRight;
	
	spriteDash[0] = sPlayerRollBackRight;
	spriteDash[1] = sPlayerRollBackLeft;
	spriteDash[2] = sPlayerRollLeft;
	spriteDash[3] = sPlayerRollRight;
	
	//Spread masks
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
/*
	spriteSpread[2] = sSpreadLeft;
	spriteSpread[3] = sSpreadRight;

	spriteSpreadWalk[2] = sSpreadWalkLeft;
	spriteSpreadWalk[3] = sSpreadWalkRight;

	spriteSpreadAttack[2] = sSpreadAttackLeft;
	spriteSpreadAttack[3] = sSpreadAttackRight;

	spriteToDraw = sSpreadRight;
*/
	spriteToDrawL = sSpreadRightL;
	spriteToDrawR = sSpreadRightR;
	currentSprite = sprite;
	sprite_index = currentSprite[face];
#endregion


