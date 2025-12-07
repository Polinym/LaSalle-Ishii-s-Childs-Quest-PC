function scr_dmg_steel(arg_amt)
{
	if (scr_suit(suit_Steel)) {return round(arg_amt*0.75);}
	else {return arg_amt;}
}