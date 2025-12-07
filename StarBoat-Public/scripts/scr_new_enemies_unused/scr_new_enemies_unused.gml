function scr_new_enemies_unused()
{
	/*
	enemies[128] = [];
	//Name, sprite, hp, rudeness, confidence, pop, money, stress, ecchi, hex
	enemies[0] = ["Student",  spr_enm_Student,  3,  4,  1, 2, 240, 5,  0,  false];

	enemies[1] = ["The Tramp",  spr_enm_TheTramp,  3,  4,  1, 3, 320, 6,  0,  false];

	enemies[2] = ["Watchman",  spr_enm_Watchman,  4,  4,  1, 3, 480, 6,  0,  false];

	enemies[3] = ["Barf",  spr_enm_Barf,  4,  4,  1, 4, 550, 8,  0,  false];

	enemies[4] = ["Everyman",  spr_enm_Everyman,  8,  8,  2, 6, 780, 6,  0,  false];

	enemies[5] = ["Senior",  spr_enm_Senior,  9,  9,  2, 7, 650, 7,  0,  false];

	enemies[6] = ["Slasher",  spr_enm_Slasher,  10,  10,  2, 8, 1280, 3,  0,  false];

	enemies[7] = ["Vomitor",  spr_enm_Vomitor,  2,  8,  20, 5, 900, 9,  0,  false];

	enemies[8] = ["Fangirl",  spr_enm_Fangirl,  161,  151,  1, 56, 2400, 8,  0,  false];

	enemies[9] = ["Reporter",  spr_enm_Reporter,  162,  164,  1, 78, 3200, 143,  3,  false];

	enemies[10] = ["Creep",  spr_enm_Creep,  131,  132,  65, 69, 4560, 246,  4,  false];

	enemies[11] = ["City Fox",  spr_enm_CityFox,  168,  164,  1, 24, 3300, 76,  2,  true];

	enemies[12] = ["Mobster",  spr_enm_Mobster,  194,  196,  4, 99, 8000, 24,  1,  false];

	enemies[13] = ["Paparazzi",  spr_enm_Paparazzi,  212,  196,  4, 120, 7500, 72,  2,  false];

	enemies[14] = ["Newsgirl",  spr_enm_Newsgirl,  198,  196,  36, 111, 9800, 24,  1,  false];

	enemies[15] = ["\"Winky\"",  spr_enm_Winky,  216,  196,  4, 123, 20, 72,  2,  false];

	enemies[16] = ["Honeybee",  spr_enm_Honeybee,  50,  40,  1, 24, 860, 12,  0,  true];

	enemies[17] = ["Radisher",  spr_enm_Radisher,  52,  23,  50, 32, 460, 4,  0,  false];

	enemies[18] = ["Marooze",  spr_enm_Marooze,  54,  50,  1, 25, 720, 200,  4,  false];

	enemies[19] = ["Seafoam",  spr_enm_Seafoam,  168,  160,  1, 45, 2000, 3,  0,  false];

	enemies[20] = ["Teamon",  spr_enm_Teamon,  66,  64,  1, 34, 1200, 40,  1,  false];

	enemies[21] = ["Surenda",  spr_enm_Surenda,  68,  68,  17, 46, 800, 76,  2,  true];

	enemies[22] = ["Swoosha",  spr_enm_Swoosha,  70,  68,  1, 44, 730, 56,  2,  false];

	enemies[23] = ["Crabby",  spr_enm_Crabby,  136,  128,  32, 65, 1250, 8,  0,  false];

	enemies[24] = ["Red Flag",  spr_enm_RedFlag,  98,  100,  1, 62, 1800, 72,  2,  false];

	enemies[25] = ["Zyrup",  spr_enm_Zyrup,  100,  100,  4, 68, 1980, 6,  0,  false];

	enemies[26] = ["Good-Boy",  spr_enm_GoodBoy,  68,  100,  64, 92, 2520, 132,  3,  false];

	enemies[27] = ["Otto",  spr_enm_Otto,  200,  192,  33, 55, 5800, 8,  0,  false];

	enemies[28] = ["Boxers",  spr_enm_Boxers,  76,  76,  1, 50, 1200, 198,  4,  false];

	enemies[29] = ["Gumdrop",  spr_enm_Gumdrop,  250,  1,  160, 80, 1500, 4,  0,  false];

	enemies[30] = ["Wild Guy",  spr_enm_WildGuy,  84,  84,  1, 45, 1000, 72,  2,  false];

	enemies[31] = ["Squiddy",  spr_enm_Squiddy,  4,  4,  4, 80, 1000, 12,  0,  false];

	enemies[32] = ["Wabbit",  spr_enm_Wabbit,  114,  100,  36, 66, 2880, 132,  3,  false];

	enemies[33] = ["Bloadent",  spr_enm_Bloadent,  116,  88,  4, 68, 3200, 40,  1,  false];

	enemies[34] = ["Mailboxer",  spr_enm_Mailboxer,  86,  88,  68, 76, 280, 3,  0,  false];

	enemies[35] = ["Squiddy",  spr_enm_Squiddy,  0,  0,  0, 100, 2000, 8,  0,  false];

	enemies[36] = ["Cerumean",  spr_enm_Cerumean,  130,  132,  4, 79, 2670, 40,  1,  false];

	enemies[37] = ["Queenie",  spr_enm_Queenie,  132,  132,  4, 85, 3880, 12,  0,  true];

	enemies[38] = ["Coola",  spr_enm_Coola,  86,  132,  52, 88, 4240, 70,  2,  false];

	enemies[39] = ["Squiddy",  spr_enm_Squiddy,  0,  0,  0, 150, 3000, 8,  0,  false];

	enemies[40] = ["Indigoo",  spr_enm_Indigoo,  146,  148,  4, 82, 3200, 232,  4,  false];

	enemies[41] = ["Metallico",  spr_enm_Metallico,  18,  69,  160, 102, 12800, 15,  0,  false];

	enemies[42] = ["Carroman",  spr_enm_Carroman,  150,  148,  68, 94, 4800, 6,  0,  false];

	enemies[43] = ["Squiddy",  spr_enm_Squiddy,  0,  0,  0, 200, 4000, 8,  0,  false];

	enemies[44] = ["Stir Fox",  spr_enm_StirFox,  34,  36,  4, 11, 320, 8,  0,  false];

	enemies[45] = ["Puddling",  spr_enm_Puddling,  36,  36,  8, 12, 480, 24,  1,  false];

	enemies[46] = ["Kay IX",  spr_enm_KayIX,  38,  36,  10, 16, 620, 6,  0,  false];

	enemies[47] = ["Squiddy",  spr_enm_Squiddy,  0,  0,  0, 250, 5000, 8,  0,  false];

	enemies[48] = ["Arachnid",  spr_enm_Arachnid,  162,  164,  4, 110, 7000, 8,  0,  false];

	enemies[49] = ["Toil Oil",  spr_enm_ToilOil,  164,  164,  36, 102, 8200, 38,  1,  false];

	enemies[50] = ["Leapfrog",  spr_enm_Leapfrog,  134,  164,  4, 104, 9800, 136,  3,  false];

	enemies[51] = ["Squiddy",  spr_enm_Squiddy,  0,  0,  0, 44, 6000, 8,  0,  false];

	enemies[52] = ["Shroud",  spr_enm_Shroud,  184,  180,  4, 118, 8000, 8,  0,  false];

	enemies[53] = ["Goldmold",  spr_enm_Goldmold,  180,  180,  4, 110, 8600, 236,  3,  true];

	enemies[54] = ["Rhiannon",  spr_enm_Rhiannon,  182,  36,  4, 110, 4800, 104,  3,  false];

	enemies[55] = ["Squiddy",  spr_enm_Squiddy,  0,  0,  0, 94, 7000, 8,  0,  false];

	enemies[56] = ["Mooster",  spr_enm_Mooster,  194,  196,  4, 120, 8000, 72,  2,  false];

	enemies[57] = ["Snowhare",  spr_enm_Snowhare,  196,  132,  4, 128, 7200, 47,  1,  false];

	enemies[58] = ["Hooaryoo",  spr_enm_Hooumai,  198,  196,  4, 145, 9999, 76,  2,  true];

	enemies[59] = ["Squiddy",  spr_enm_Squiddy,  0,  0,  0, 194, 9000, 8,  0,  false];

	enemies[60] = ["Hilltula",  spr_enm_Hilltula,  210,  212,  4, 160, 12000, 108,  3,  true];

	enemies[61] = ["Foxy Fox",  spr_enm_FoxyFox,  216,  216,  36, 178, 15000, 72,  2,  false];

	enemies[62] = ["Slushie",  spr_enm_Slushie,  230,  230,  36, 188, 22000, 70,  2,  false];

	enemies[63] = ["Squiddy",  spr_enm_Squiddy,  0,  0,  0, 1, 45000, 8,  0,  false];

	enemies[64] = ["Batbrella",  spr_enm_Batbrella,  34,  36,  4, 9, 320, 6,  0,  false];

	enemies[65] = ["Rojo Asp",  spr_enm_RojoAsp,  36,  36,  4, 5, 480, 10,  0,  false];

	enemies[66] = ["Snaptrap",  spr_enm_Snaptrap,  156,  148,  4, 85, 1500, 8,  0,  false];

	enemies[67] = ["Rattler",  spr_enm_Rattler,  158,  68,  36, 68, 2200, 54,  2,  false];

	enemies[68] = ["Toady",  spr_enm_Toady,  185,  180,  4, 50, 100, 8,  0,  false];

	enemies[69] = ["Snailoid",  spr_enm_Snailoid,  189,  132,  4, 45, 120, 68,  2,  false];

	enemies[70] = ["Snailzor",  spr_enm_Snailzor,  186,  180,  4, 120, 7600, 8,  0,  false];

	enemies[71] = ["Sewerat",  spr_enm_Sewerat,  187,  196,  4, 180, 8400, 36,  1,  false];

	enemies[72] = ["Hooumai",  spr_enm_Hooumai,  210,  212,  4, 220, 9600, 8,  0,  false];

	enemies[73] = ["Aqua Asp",  spr_enm_AquaAsp,  212,  212,  68, 184, 12400, 40,  1,  false];

	enemies[74] = ["Crocodon",  spr_enm_Crocodon,  0,  0,  0, 68, 2280, 8,  0,  false];

	enemies[75] = ["Covertail",  spr_enm_Covertail,  142,  116,  4, 65, 1670, 76,  2,  false];

	enemies[76] = ["Model",  spr_enm_Model,  136,  132,  4, 64, 3200, 8,  0,  false];

	enemies[77] = ["Jerkface",  spr_enm_Jerkface,  52,  132,  52, 88, 1200, 232,  4,  false];

	enemies[78] = ["Coder",  spr_enm_Coder,  16,  20,  4, 6, 240, 22,  1,  false];

	enemies[79] = ["Code Bug",  spr_enm_CodeBug,  18,  20,  4, 8, 520, 70,  2,  false];

	enemies[80] = ["Hisstar",  spr_enm_Hisstar,  10,  8,  2, 2, 420, 44,  1,  true];

	enemies[81] = ["Starlet",  spr_enm_Starlet,  12,  12,  3, 3, 380, 4,  0,  false];

	enemies[82] = ["Eldrick",  spr_enm_Eldrick,  12,  12,  3, 4, 630, 40,  1,  false];

	enemies[83] = ["Moriss",  spr_enm_Moriss,  14,  14,  3, 5, 880, 72,  2,  false];

	enemies[84] = ["Lil Brat",  spr_enm_LilBrat,  178,  176,  36, 150, 20, 140,  3,  true];

	enemies[85] = ["Parawing",  spr_enm_Parawing,  180,  196,  4, 32, 6700, 4,  0,  false];

	enemies[86] = ["Dummy",  spr_enm_Dummy,  198,  196,  4, 180, 12800, 38,  1,  false];

	enemies[87] = ["Wobbler",  spr_enm_Wobbler,  200,  196,  4, 220, 15000, 70,  2,  false];

	enemies[88] = ["Skyjelly",  spr_enm_Skyjelly,  104,  100,  4, 58, 1500, 8,  0,  false];

	enemies[89] = ["Shy Hare",  spr_enm_ShyHare,  114,  100,  4, 66, 1200, 3,  0,  false];

	enemies[90] = ["Frenchie",  spr_enm_Frenchie,  80,  4,  80, 50, 1280, 6,  0,  false];

	enemies[91] = ["German",  spr_enm_German,  80,  4,  80, 50, 650, 6,  0,  false];

	enemies[92] = ["Squiddy",  spr_enm_Squiddy,  0,  0,  0, 1, 100, 248,  0,  false];

	enemies[93] = ["Scottish",  spr_port_scottish,  0,  0,  0, 1, 100, 24,  0,  false];

	enemies[94] = ["Jaysin",  spr_enm_Jaysin,  0,  0,  0, 1, 10000, 248,  0,  false];

	enemies[95] = ["The Boss",  spr_enm_TheBoss,  0,  0,  0, 1, 100, 8,  0,  false];


	
	enemies[103] = ["Squiddy", spr_enm_Squiddy, 0x10, 0x10, 8,   0, 0, 255, 0, false];
	enemies[102] = ["Squiddy", spr_enm_Squiddy, 0x20, 0x20, 16,  0, 0, 255, 0, false];
	enemies[101] = ["Squiddy", spr_enm_Squiddy, 0x40, 0x40, 32,  0, 0, 255, 0, false];
	enemies[100] = ["Squiddy", spr_enm_Squiddy, 0x60, 0x60, 48,  0, 0, 255, 0, false];
	enemies[99] =  ["Squiddy", spr_enm_Squiddy, 0x80, 0x80, 64,  0, 0, 255, 0, false];
	enemies[98] =  ["Squiddy", spr_enm_Squiddy, 0xa0, 0xa0, 80,  0, 0, 255, 0, false];
	enemies[97] =  ["Squiddy", spr_enm_Squiddy, 0xc0, 0xc0, 96,  0, 0, 255, 0, false];
	enemies[96] =  ["Squiddy", spr_enm_Squiddy, 0xe0, 0xe0, 112, 0, 0, 255, 0, false];
	*/
}