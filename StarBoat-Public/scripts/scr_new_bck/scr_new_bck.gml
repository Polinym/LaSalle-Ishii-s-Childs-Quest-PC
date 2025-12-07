function scr_new_bck()
{
	bck[0x20] = [];
	bck[BCK_HOTEL] = [bck_hotel, #000000, -1];
	bck[BCK_CITY] = [bck_city, #000000, -1];
	bck[BCK_OW] = [bck_ow, #000000, -1];
	bck[BCK_OCEAN] = [bck_ocean, #000000, -1];
	bck[BCK_TUNNEL] = [bck_tunnel, #000000, -1];
	bck[BCK_OFFICE] = [bck_office, #005100, bgm_AroundTheOffice];
	bck[BCK_ENGLISH] = [bck_english, #005100, bgm_AroundTheOffice];
	bck[BCK_OFFICE2] = [bck_office2, #757575, -1];
	bck[BCK_MEOWCO] = [bck_meowco, #2038EF, bgm_SomeonesHouse];
	bck[BCK_OFFICE3] = [bck_office3, #DB2800, -1];
	bck[BCK_RECORDS] = [bck_records, #0071EF, bgm_SomeonesHouse];
	bck[BCK_RECORDS2] = [bck_records, #000000, bgm_SomeonesHouse];
	bck[BCK_CASTLE] = [bck_castle, #757575, -1];
	bck[BCK_DUD] = [bck_dud, #0071EF, -1];
	bck[BCK_FOOD] = [bck_food, #82D310, -1];
	bck[BCK_CONTEST] = [bck_contest, #FF9A38, bgm_SomeonesHouse];
	bck[BCK_AIRPLANE] = [bck_airplane, #000000, -1];
	bck[BCK_HINT] = [bck_hint, #DB2800, -1];
	bck[BCK_VOLCANO] = [bck_volcano, #E70059, bgm_GonnaExplode];
	bck[BCK_STORE] = [bck_store, #0071EF, -1];
	bck[BCK_HOUSE] = [bck_house, #000000, -1];
	bck[BCK_VICTORY] = [bck_victory, #E70059, -1];
	bck[BCK_WAHAII] = [bck_wahaii, #F779FF, bgm_TheLandOfSun];
	bck[BCK_NOPE] = [bck_nope, #E70059, bgm_SomeonesHouse];
	bck[BCK_HOUSE2] = [bck_house2, #DB2800, -1];
	bck[BCK_PHOTO] = [bck_photo, #00AA00, -1];
	bck[BCK_NONE] = [-1, #000000, -1];
}