// drawing he box height/lenght + text
var dx = 0;
var dy = guiH * 0.7;
var boxW = guiW;
var boxH = guiH - dy;

draw_sprite_stretched(spr_box, 0, dx, dy, boxW, boxH);

dx += 200;
dy+= 16;

draw_set_font(font_buttons);

var name = messages[currentMessage].name;
draw_text(dx, dy, name);

dy += 40;

draw_text_ext(dx, dy, drawMessage, -1, boxW - dx * 2);