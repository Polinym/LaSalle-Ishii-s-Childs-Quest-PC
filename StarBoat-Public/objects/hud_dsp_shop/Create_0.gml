event_inherited();
scr_dsp_ini(3, 5, 17, 5);
txt = " Just looking!";
txt_y = 8;
names[3] = "";
prices[3] = 0;
price_names[3] = "";
shop = obj_ram.menu_shop;
type = obj_ram.menu_shop_type;
item = 0; cost = 0; slot = 0;
prompt = obj_ram.prompt;
pos = 0;
bye_msg = obj_script_menu.line[94];
john = obj_ram.john;
paint_icons = [scr_icon("pink_paint"), scr_icon("yellow_paint"), scr_icon("gold_paint"), scr_icon("black_paint")];
materials = ["peaches", "bananas", "bullions", "ink"];

if (jpn)
{
	materials = ["pink panties", "banana peels", "1kg gold bars", "squid ink"];
	paint_icons = ["", "", "", ""];
}

foods[3] = 0;
switch (type)
{
	case SHOP_HOTEL:
		if (jpn)
		{
			names[0] = "Futon Room";
			names[1] = "Homeroom";
			names[2] = "Suite Room";
			names[3] = "Imperial# Room";
		}
		else
		{
			names[0] = "Small# Room";
			names[1] = "Standard# Room";
			names[2] = "Suite# Room";
			names[3] = "Imperial# Room";
		}
		
		prices = obj_ram.hotel_prices;
		var tmp_name;
		for (var i = 0; i < 4; i++)
		{
			tmp_name = string(prices[i]) + "$";
			for (var i2 = string_length(tmp_name); i2 < 6; i2++)
			{
				tmp_name = " " + tmp_name;
			}
			price_names[i] = tmp_name;
		}
		bye_msg = obj_script_menu.line[95];
		break;
	case SHOP_EQUIP:	
		var tmp_item;
		var tmp_equips = obj_ram.equips;
		var tmp_name;
		for (var i = 0; i < 4; i++)
		{
			tmp_item = shop[i];
			names[i] = scr_equip_name(tmp_item);
			tmp_price = tmp_equips[tmp_item][3];
			prices[i] = tmp_price;
			tmp_name = string(tmp_price) + "$";
			while (string_length(tmp_name) < 6)
			{
				tmp_name = " " + tmp_name;	
			}
			price_names[i] = tmp_name;
		}
		break;
	case SHOP_ITEM:
		var tmp_item;
		var tmp_prices = obj_ram.item_prices;
		var tmp_price;
		var tmp_name;
		for (var i = 0; i < 4; i++)
		{
			tmp_item = shop[i];
			if (jpn) {names[i] = scr_name_split(obj_ram.item_names[tmp_item], 9);}
			else {names[i] = scr_item_name(tmp_item);}
			tmp_price = tmp_prices[tmp_item];
			prices[i] = tmp_price;
			tmp_name = string(tmp_price) + "$";
			while (string_length(tmp_name) < 6)
			{
				tmp_name = " " + tmp_name;	
			}
			price_names[i] = tmp_name;
		}
		break;
	case SHOP_FOOD: 
		var tmp_item;
		var tmp_food = obj_ram.food;
		var tmp_price;
		var tmp_name;
		for (var i = 0; i < 4; i++)
		{
			tmp_item = shop[i];
			tmp_name = tmp_food[tmp_item][0];
			if (jpn) {tmp_name = scr_name_split(tmp_name, 10);}
			names[i] = tmp_name;
			tmp_price = tmp_food[tmp_item][1];
			prices[i] = tmp_price;
			tmp_name = string(tmp_price) + "$";
			while (string_length(tmp_name) < 6)
			{
				tmp_name = " " + tmp_name;	
			}
			price_names[i] = tmp_name;
			foods[i] = tmp_item;
		}
		break;
	case SHOP_AIRPORT:
		if (jpn)
		{
			names = ["Gowasu", "Asekusa", "Erromanga# Island", "Hawai"];
			price_names = ["Full", "Full", "Closed", "Full"];
		}
		else
		{
			names = ["Botson", "Freattle", "Torakia", "Wahaii"];
			price_names = ["Ready", "Ready", "Closed", "Ready"];
		}
		break;
	case SHOP_DON:
		scr_dsp_ini(3, 5, 14, 5);
		obj_shop_img.x += -24;
		if (jpn)
		{
			names[0] = "Pink Oil";
			names[1] = "Yellow Oil";
			names[2] = "Gold Oil";
			names[3] = "Black Oil";
		}
		else
		{
			names[0] = scr_icon("pink_paint") + "Pink Paint";
			names[1] = scr_icon("yellow_paint") + "Yellow Paint";
			names[2] = scr_icon("gold_paint") + "Gold Paint";
			names[3] = scr_icon("black_paint") + "Black Paint";
		}
		price_names = ["", "", "", ""];
		bye_msg = obj_script_menu.line[96];
		break;
}
held = true;
reading = true;
yesnoing = false;
close_shop = false;
cmd = "ini";