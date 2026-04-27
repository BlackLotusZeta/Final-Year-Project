// button executing its function upon pressing z
//case 0 = start : will send player to the start of the game
//case 1 = quit : ends game

switch(menuIndex){
	case 0:
		room_goto(Room01);
		break;
		
	case 1:
		game_end();
		break;
}