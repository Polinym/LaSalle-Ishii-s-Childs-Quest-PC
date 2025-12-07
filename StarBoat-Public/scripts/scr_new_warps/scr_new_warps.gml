function scr_new_warps()
{
	var blank = [];
	warps = array_create(128, blank);
	warps[0] = [rm_city, 1, DOWN, "OW New Yorik West"];
	warps[1] = [rm_city, 6, DOWN, "OW New Yorik East"];
	warps[2] = [rm_town_yellow, 4, DOWN, "OW Denber"];
	warps[3] = [rm_tunnel, 1, DOWN, "OW Denber Tunnel South"];
	warps[4] = [rm_tunnel, 2, DOWN, "OW Denber Tunnel North"];
	warps[5] = [rm_town_yellow, 2, DOWN, "OW Botson"];
	warps[6] = [rm_ow, 7, DOWN, "OW Botson Shrine North"];
	warps[7] = [rm_ow, 6, DOWN, "OW Botson Shrine South"];
	warps[8] = [rm_town_green, 3, DOWN, "OW Niami"];
	warps[9] = [rm_town_yellow, 3, DOWN, "OW Boizy"];
	warps[10] = [rm_town_green, 7, DOWN, "OW Moonbark"];
	warps[11] = [rm_town_gray, 1, DOWN, "OW Fenix"];
	warps[12] = [rm_tunnel, 3, DOWN, "OW Tallas Cave"];
	warps[13] = [rm_town_green, 4, DOWN, "OW Tallas"];
	warps[14] = [rm_tunnel, 6, DOWN, "OW Sewer West"];
	warps[15] = [rm_tunnel, 7, DOWN, "OW Sewer East"];
	warps[16] = [rm_tunnel, 8, DOWN, "OW Poltland Tunnel West"];
	warps[17] = [rm_tunnel, 9, DOWN, "OW Poltland Tunnel East"];
	warps[18] = [rm_ow, 20, DOWN, "OW Beach Shrine West"];
	warps[19] = [rm_ow, 19, DOWN, "OW Beach Shrine East"];
	warps[20] = [rm_town_green, 8, DOWN, "OW Poltland"];
	warps[21] = [rm_tunnel, 10, DOWN, "OW Poltland Cave"];
	warps[22] = [rm_tunnel, 14, DOWN, "OW Metroit Tunnel South"];
	warps[23] = [rm_tunnel, 15, DOWN, "OW Metroit Tunnel North"];
	warps[24] = [rm_town_other, 2, DOWN, "OW Metroit"];
	warps[25] = [rm_town_other, 3, DOWN, "OW Drowsingham"];
	warps[26] = [rm_wahaii, 3, DOWN, "OW Wahaii Shrine"];
	warps[27] = [rm_town_yellow, 5, DOWN, "OW TONN"];
	
	warps[28] = [rm_town_green, 1, DOWN, "NY Melville"];
	warps[29] = [rm_ow, 1, DOWN, "NY West"];
	warps[30] = [rm_building, 8, DOWN, "NY IAT"];
	warps[31] = [rm_building, 1, DOWN, "NY Meowco"];
	warps[32] = [rm_town_yellow, 1, DOWN, "NY Arbony"];
	warps[33] = [rm_town_other, 1, DOWN, "NY Freattle"];
	warps[34] = [rm_ow, 16, DOWN, "NY East"];
	warps[35] = [rm_tower, 1, DOWN, "NY Tower"];
	warps[36] = [rm_town_other, 4, DOWN, "NY Kings"];
	warps[37] = [rm_town_gray, 2, DOWN, "NY Yutica"];
	warps[38] = [rm_club, 1, DOWN, "NY Marauder"];
	
	warps[39] = [rm_town_wahaii, 1, DOWN, "Wahaii Lonohuhu"];
	warps[40] = [rm_ow, 28, DOWN, "Wahaii Shrine"];
	
	warps[41] = [rm_english, 3, DOWN, "English Top"];
	warps[42] = [rm_english, 2, DOWN, "English Bottom"];
	warps[43] = [rm_town_green, 2, DOWN, "English Exit"];
	
	warps[44] = [rm_city, 2, DOWN, "Melville Exit"];
	warps[45] = [rm_english, 1, DOWN, "Melville English"];
	
	warps[46] = [rm_ow, 8, DOWN, "Niami Exit"];
	
	warps[47] = [rm_ow, 13, DOWN, "Tallas Exit"];
	
	warps[48] = [rm_town_green, 6, DOWN, "Tallas Shrine North", 49];
	warps[49] = [rm_town_green, 5, DOWN, "Tallas Shrine South", 48];
	
	warps[50] = [rm_ow, 21, DOWN, "Poltland Exit"];
	
	warps[51] = [rm_ow, 11, DOWN, "Moonbark Exit"];
	warps[52] = [rm_sky, 1, DOWN, "Moonbark Shortcut"];
	
	warps[53] = [rm_city, 3, DOWN, "Arbony Exit"];
	
	warps[54] = [rm_ow, 5, DOWN, "Botson Exit"];
	
	warps[55] = [rm_ow, 9, DOWN, "Boizy Exit"];
	
	warps[56] = [rm_ow, 2, DOWN, "Denber Exit"];
	
	warps[57] = [rm_ow, 27, DOWN, "TONN Exit"];
	
	warps[58] = [rm_city, 7, DOWN, "Freattle Exit"];
	
	warps[59] = [rm_ow, 25, DOWN, "Metroit Exit"];
	
	warps[60] = [rm_ow, 26, DOWN, "Drowsingham Exit"];
	
	warps[61] = [rm_city, 9, DOWN, "Kings Exit"];
	
	warps[62] = [rm_ow, 10, DOWN, "Fenix Exit"];
	
	warps[63] = [rm_city, 10, DOWN, "Yutica Exit"];
	
	warps[64] = [rm_wahaii, 2, DOWN, "Lonohuhu Exit"];
	
	warps[65] = [rm_city, 11, DOWN, "Marauder Exit"];
	
	warps[66] = [rm_city, 8, DOWN, "Tower Exit"];
	
	warps[67] = [rm_tower, 3, DOWN, "Tower F1 Up"];
	
	warps[68] = [rm_tower, 2, DOWN, "Tower F2 Down"];
	warps[69] = [rm_tower, 5, DOWN, "Tower F2 Up"];
	
	warps[70] = [rm_tower, 4, DOWN, "Tower F3 Down"];
	warps[71] = [rm_tower, 7, DOWN, "Tower F3 Up"];
	
	warps[72] = [rm_tower, 6, DOWN, "Tower F4 Down"];
	warps[73] = [rm_tower, 9, DOWN, "Tower F4 UP"];
	
	warps[74] = [rm_tower, 8, DOWN, "Tower F5 Down"];
	warps[75] = [rm_tower, 11, DOWN, "Tower F5 Up"];
	
	warps[76] = [rm_tower, 10, DOWN, "Tower F6 Down"];
	warps[77] = [rm_tower, 13, DOWN, "Tower F6 Up"];
	
	warps[78] = [rm_tower, 12, DOWN, "Tower F7 Down"];
	warps[79] = [rm_tower, 15, DOWN, "Tower F7 Down"];
	
	warps[80] = [rm_tower, 14, DOWN, "Tower F8 Down"];
	warps[81] = [rm_tower, 17, DOWN, "Tower F8 Up"];
	
	warps[82] = [rm_tower, 16, DOWN, "Tower F9 Up"];
	
	warps[83] = [rm_ow, 3, DOWN, "Tunnel Denber South"];
	warps[84] = [rm_ow, 4, DOWN, "Tunnel Denber North"];
	
	warps[85] = [rm_ow, 12, DOWN, "Cave Tallas Exit"];
	warps[86] = [rm_tunnel, 5, DOWN, "Cave Tallas Down"];
	warps[87] = [rm_tunnel, 4, DOWN, "Cave Tallas UP"];
	
	warps[88] = [rm_ow, 14, DOWN, "Sewer West"];
	warps[89] = [rm_ow, 15, DOWN, "Sewer East"];
	
	warps[90] = [rm_ow, 17, DOWN, "Tunnel Poltland West"];
	warps[91] = [rm_ow, 18, DOWN, "Tunnel Poltland East"];
	
	warps[92] = [rm_ow, 22, DOWN, "Cave Poltland Exit"];
	warps[93] = [rm_tunnel, 12, DOWN, "Cave Poltland Down"];
	warps[94] = [rm_tunnel, 11, DOWN, "Cave Poltland Up"];
	
	warps[95] = [rm_ow, 23, DOWN, "Tunnel Metroit South"];
	warps[96] = [rm_ow, 24, DOWN, "Tunnel Metroit North"];
	
	warps[97] = [rm_ow, 24, DOWN, "Tunnel Metroit North"];
	
	warps[97] = [rm_city, 4, DOWN, "Meowco Exit"];
	warps[98] = [rm_building, 3, DOWN, "Meowco F1 Up"];
	
	warps[99] = [rm_building, 2, DOWN, "Meowco F2 Down"];
	warps[100] = [rm_building, 5, DOWN, "Meowco F2 Up"];
	warps[101] = [rm_building, 4, DOWN, "Meowco F3 Down"];
	warps[102] = [rm_building, 7, DOWN, "Meowco F3 Up"];
	warps[103] = [rm_building, 6, DOWN, "Meowco F4 Down"];
	
	warps[104] = [rm_city, 5, DOWN, "IAT Exit"];
	warps[105] = [rm_building, 11, DOWN, "IAT F1 Up"];
	warps[106] = [rm_building, 10, DOWN, "IAT F2 Down"];
	warps[107] = [rm_building, 13, DOWN, "IAT F2 Up"];
	warps[108] = [rm_building, 12, DOWN, "IAT F3 Down"];
	
	warps[108] = [rm_building, 12, DOWN, "IAT F3 Down"];
	
	warps[109] = [rm_english, 5, DOWN, "English Side Top"];
	warps[110] = [rm_english, 6, DOWN, "English Side Bottom"];
	warps[111] = [rm_english2, 1, DOWN, "English Basement"];
	warps[112] = [rm_english, 7, DOWN, "English Basement Exit"];

	
}