// Box
draw_sprite_stretched(sprite_index, 0, x, y, width, height);

// Text
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(textFont);
draw_set_color(textColor);
type(x + textX, y + textY, text, textProg, textWidth);
