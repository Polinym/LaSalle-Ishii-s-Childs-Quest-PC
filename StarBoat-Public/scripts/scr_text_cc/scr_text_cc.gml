function scr_text_cc(arg_word)
{
	work_txt = string_insert(arg_word, work_txt, pos+1); 
	pos_end += string_length(arg_word);
}