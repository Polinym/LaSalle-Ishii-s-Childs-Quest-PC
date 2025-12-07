function scr_dmg_curse(arg_amt)
{
	if (scr_suit(suit_Cursed)) {return round(arg_amt/scr_rng(2, 4));}
	else {return arg_amt;}
}