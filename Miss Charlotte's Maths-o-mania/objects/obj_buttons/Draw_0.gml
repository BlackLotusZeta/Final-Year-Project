// loops through the buttons selected + setting font/alignment, etc
var i = 0;

repeat(buttons){
	draw_set_font(font_buttons);
	draw_set_halign(fa_center); 
	draw_set_colour(c_white);
	
	if(menuIndex == i) draw_set_colour(c_red);;
	
	draw_text(xMenu, yMenu + hButton * i, button[i]);
	i++;
}