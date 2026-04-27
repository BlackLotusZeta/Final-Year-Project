// drawing the pause screen into the room
if(pause){
	draw_set_colour(c_black);
	draw_rectangle(0, 0, room_width, room_height, 0);
	draw_set_halign(fa_center);
	draw_set_font(font_buttons);
	draw_set_color(c_white);
	draw_text(300/2, 300/2, "Paused");
	draw_set_valign(fa_center);
	draw_set_color(c_black);
}