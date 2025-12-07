function scr_dog_add(arg_txt, arg_true)
{
	if (arg_true)
	{
		dogs[dog_count] = arg_txt + "@0100" + dog_prompt;
	}
	else
	{
		dogs[dog_count] = arg_txt + "@0001" + dog_prompt;
	}
	dog_count++;
}