//temporary dialogue check
if(keyboard_check(vk_space)){
	create_dialogue([{
		name: "Testing",
		msg: "I can see text, but this message"
	}])
}

// player movement directions using keyboard (up, down, left, right)
upKey = keyboard_check(vk_up);
downKey = keyboard_check(vk_down);
leftKey = keyboard_check(vk_left);
rightKey = keyboard_check(vk_right);

// player movement
xSpeed = (rightKey - leftKey) * movSpeed;
ySpeed = (downKey - upKey) * movSpeed;

// Collision
if place_meeting(x + xSpeed, y, obj_invisible_wall){
	xSpeed = 0;
}
if place_meeting(x, y + ySpeed, obj_invisible_wall){
	ySpeed = 0;
}

// movement 
x += xSpeed;
y += ySpeed;

// inputting sprites based on direction
if(xSpeed != 0 or ySpeed != 0){
	if(ySpeed > 0){
		sprite_index = sp_player_runD;
	}
	else if(ySpeed < 0){
		sprite_index = sp_player_runU;
	}
	else if(xSpeed > 0){
		sprite_index = sp_player_runR;
	}
	else{
		sprite_index = sp_player_runL;
	}
}
else{
	if(sprite_index == sp_player_runD) sprite_index = sp_player;
	else if(sprite_index == sp_player_runU) sprite_index = sp_player_up;
	else if(sprite_index == sp_player_runR) sprite_index = sp_player_right;
	else if(sprite_index == sp_player_runL) sprite_index = sp_player_left;
}
