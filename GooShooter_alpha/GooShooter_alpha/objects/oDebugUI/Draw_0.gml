/// @description

//draw debug UI
if uienabled1{
	draw_set_color(c_maroon);
	draw_text(36, 6, string(uititle1));
	draw_set_color(c_red);
	draw_text(36, 24, string(uistring1));
}
if uienabled2{
	draw_set_color(c_maroon);
	draw_text(36, 42, string(uititle2));
	draw_set_color(c_red);
	draw_text(36, 60, string(uistring2));
}