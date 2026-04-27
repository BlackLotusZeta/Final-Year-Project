// playing atk animation upon key press
if(sprite_index == sp_player or sprite_index == sp_player_runD) sprite_index = sp_player_atkD;
else if(sprite_index == sp_player_up or sprite_index == sp_player_runU) sprite_index = sp_player_atkU;
else if(sprite_index == sp_player_right or sprite_index == sp_player_runR) sprite_index = sp_player_atkR;
else if(sprite_index == sp_player_left or sprite_index == sp_player_runL) sprite_index = sp_player_atkL;