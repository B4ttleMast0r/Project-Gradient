/// @description

//draw debug UI
if uienabled1{
	draw_set_color(c_orange);
	draw_text(36+camx, 6+camy, string(uititle1));
	draw_set_color(c_red);
	draw_text(36+camx, 24+camy, string(uistring1));
}
if uienabled2{
	draw_set_color(c_orange);
	draw_text(36+camx, 42+camy, string(uititle2));
	draw_set_color(c_red);
	draw_text(36+camx, 60+camy, string(uistring2));
}
if uienabled3{
	draw_set_color(c_orange);
	draw_text(36+camx, 78+camy, string(uititle3));
	draw_set_color(c_red);
	draw_text(36+camx, 96+camy, string(uistring3));
}