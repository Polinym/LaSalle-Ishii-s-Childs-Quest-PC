obj_ram.dead = false;
var jpn = obj_ram.jpn;
switch (obj_ram.ending_mode)
{
	case 0: 
		scr_room_bck(bck_turtles);
		scr_bgm(bgm_Epilogue);
		break;
	case 1: 
		if (jpn) {scr_room_bck(bck_ending_jpn);}
		else {scr_room_bck(bck_ending);}
		scr_bgm(bgm_Epilogue);
		break;
	case 2: 
		if (jpn) {scr_room_bck(bck_edward_jpn);}
		else {scr_room_bck(bck_edward);}
		scr_bgm(bgm_AroundTheOffice);
		break;
	case 3:
		var tmp_msg = "S.W. LIVE!";
		if (jpn) {tmp_msg = "CHILDS LIVE!";}
		if (jpn) {scr_room_bck(bck_concert_mall_jpn);}
		else {scr_room_bck(bck_concert_mall);}
		scr_bgm(bgm_ItsShowtime);
		icd(0, 120, -1, obj_aud);
		icd(88, 69, -2, obj_doll_liz);
		icd(120, 69, -2, obj_doll_meg);
		icd(152, 69, -2, obj_doll_ely);
		icd(128, 16, -2, obj_concert_msg).txt = "S.W. LIVE!";
		break;
}
obj_ram.ending_mode = -1;