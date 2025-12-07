if (update)
{
	jpn = obj_ram.jpn;
	bonus = obj_ram.bonus;
	new_ost = obj_ram.new_ost;
	if (jpn) {txt = "Game: Childs Quest";}
	else {txt = "Game: Stardom Warriors";}
	txt += "##";
	if (bonus) {txt += "Bonus content: ON";}
	else {txt += "Bonus content: OFF";}
	//txt += "##";
	//if (new_ost) {txt += "Soundtrack: Remastered";}
	//else {txt += "Soundtrack: Original";}
	txt += "##Start the game!";
	update = false;	
}