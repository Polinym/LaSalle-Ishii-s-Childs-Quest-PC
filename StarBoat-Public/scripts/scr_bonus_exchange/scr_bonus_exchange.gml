function scr_bonus_exchange()
{
	var i;
	for (i = 0; i < 103; i++)
	{
		enemies[i][6] = scr_exchange(enemies[i][6]);
	}
	for (i = 16; i < 32; i++)
	{
		item_prices[i] = scr_exchange(item_prices[i]);
	}
	for (i = 0; i < 4; i++)
	{
		prices[i] = scr_exchange(prices[i]);
		hotel_prices[i] = scr_exchange(hotel_prices[i]);
	}
	for (i = 0; i < 8; i++)
	{
		paint_prices[i] = scr_exchange(paint_prices[i]);
	}
	for (i = 0; i < 31; i++)
	{
		equips[i][3] = scr_exchange(equips[i][3]);
	}
	for (i = 0; i < 16; i++)
	{
		food[i][1] = scr_exchange(food[i][1]);	
	}
}