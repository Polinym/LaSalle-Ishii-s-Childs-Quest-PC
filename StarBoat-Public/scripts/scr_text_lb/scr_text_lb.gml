function scr_text_lb()
{
	if (jpn) 
	{
		if (indent) {txt += "# ";}
		else {txt += "#";}
	}
	else {txt += "##";}
	if (lines < line_limit) {lines++;}
	else
	{
		txt = scr_text_delline(txt);	
	}
}