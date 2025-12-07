event_inherited();
scr_dsp_ini(6, 4, 20, 5.5);
confirm = "|";
rows[5] = "y z . , !  ? * -   " + confirm;
rows[4] = "o p q r s  t u v e x##";
rows[3] = "e f g h i  j k l m n##";
rows[2] = "U V W X Y  Z a b c d##";
rows[1] = "K L M N O  P Q R S T##";
rows[0] = "A B C D E  F G H I J##";
txt_y = 8; txt = "";
for (var i = 0; i < 6; i++)
{
	txt += rows[i];
}
entry = "";
x_pos = 0; y_pos = 0;
pos = 1;
mode = obj_ram.keyboard_mode;
limit = 0;
switch (mode)
{
	case 0: 
		if (obj_ram.bonus) {limit = 8;}
		else {limit = 4;}
		break;	
	case 1: limit = 6; break;	
}