function scr_new_items()
{
	item_names[32] = "";
	item_names[0] = "";
	item_names[item_Pass] = scr_icon("ticket") + "Pass";
	item_names[item_WahaiiTicket] = scr_icon("ticket") + "Wahaii Ticket";
	item_names[item_CrystalBall] = scr_icon("crystal_ball") + "Crystal Ball";
	item_names[item_BotsonTicket] = scr_icon("ticket") + "Botson Ticket";
	item_names[item_Jewels] = scr_icon("orb") + "Family Jewels";
	item_names[item_Sunorb] = scr_icon("orb") + "Ryesand Shine";
	item_names[item_Letter] = scr_icon("ticket") + "Edward's Letter";
	item_names[item_Micril] = scr_icon("mizithril") + "Mizithril";
	item_names[item_Photo] = scr_icon("photo") + "Photo";
	item_names[item_Grace] = "Shield of Grace";
	item_names[item_AecorJar] = scr_icon("jar") + "Cephalo Jar";
	item_names[item_FreattleTicket] = scr_icon("ticket") + "Freattle Ticket";
	item_names[item_Coupon] = scr_icon("ticket") + "Dress Coupon";
	item_names[item_MagicPaint] = scr_icon("magic_paint") + "Magic Paint";
	item_names[item_Boats] = scr_icon("boats") + "Boats";
	
	item_names[item_WaterBottle] = scr_icon("blue_drink") + "Water Bottle";
	item_names[item_Burger] = scr_icon("burger") + "Burger";
	item_names[item_WarpRing] = scr_icon("ring") + "Warp Ring";
	item_names[item_HealthyDrink] = scr_icon("drink") + "Manbo Drink";
	item_names[item_HotDog] = scr_icon("hotdog") + "Hot Dog";
	item_names[item_Nicesword] = scr_icon("nicesword") + "Nicesword";
	item_names[item_ButterSword] = scr_icon("butter_sword") + "Butter Sword";
	item_names[item_SCape] = scr_icon("red_cape") + "S-Cape";
	item_names[item_PeaceRing] = scr_icon("ring") + "Peace Ring";
	item_names[item_RosettaStone] = scr_icon("biscuit") + "Rosetta Scone";
	item_names[item_WhitePaint] = scr_icon("white_paint") + "White Paint";
	item_names[item_DoubleBurger] = scr_icon("burger") + "Double Burger";
	item_names[item_Candy] = scr_icon("candy") + "Candy Box";
	item_names[item_Banana] = scr_icon("banana") + "Banana Peel";
	item_names[item_CursedDress] = scr_icon("cursed_dress") + "Cursed Dress";
	item_names[item_MasterCape] = scr_icon("blue_cape") + "Master Cape";
	
	item_names[item_SecretLens] = scr_icon("secret_lens") + "Secret Lens";
	item_names[item_EasyRing] = scr_icon("ring") + "Easy Ring";
	item_names[item_CheeseSmoothie] = scr_icon("yellow_drink") + "Cheese Smoothie";
	item_names[item_YummyBanana] = scr_icon("banana") + "Yummy Banana"
	
	paint_names[6] = scr_icon("violet_paint") + "Violet";
	paint_names[5] = scr_icon("indigo_paint") + "Indigo";
	paint_names[4] = scr_icon("blue_paint") + "Blue";
	paint_names[3] = scr_icon("green_paint") + "Green";
	paint_names[2] = scr_icon("yellow_paint") + "Yellow";
	paint_names[1] = scr_icon("orange_paint") + "Orange";
	paint_names[0] = scr_icon("red_paint") + "Red";
	
	item_prices[32] = 0;
	item_prices[item_WaterBottle] = 280;
	item_prices[item_Burger] = 120;
	item_prices[item_WarpRing] = 100;
	item_prices[item_HealthyDrink] = 450
	item_prices[item_HotDog] = 9800;
	item_prices[item_Nicesword] = 49800;
	item_prices[item_ButterSword] = 14800;
	item_prices[item_SCape] = 3000;
	item_prices[item_PeaceRing] = 59800;
	item_prices[item_RosettaStone] = 980;
	item_prices[item_WhitePaint] = 10000;
	item_prices[item_DoubleBurger] = 360;
	item_prices[item_Candy] = 2500;
	item_prices[item_Banana] = 2500;
	item_prices[item_CursedDress] = 1;
	item_prices[item_MasterCape] = 65000;
	
	for (var i = 0; i < 0x10; i++)
	{
		item_toss[i] = false;	
	}
	for (var i = 0x10; i < 0x20; i++)
	{
		item_toss[i] = true;
	}
	
	item_toss[item_SecretLens] = true;
	item_toss[item_EasyRing] = true;
	item_toss[item_CheeseSmoothie] = true;
	item_toss[item_YummyBanana] = true;
	
}