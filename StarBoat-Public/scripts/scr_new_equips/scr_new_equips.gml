function scr_new_equips()
{
	var icon_mic = scr_icon("mic");
	var icon_dress = scr_icon("dress");
	var icon_shoes = scr_icon("shoes");
	var icon_heels = scr_icon("heels");
	var icon_makeup = scr_icon("makeup");
	equips[32] = [];
	equips[mic_None] = [MIC, icon_mic + "Mega- phone",  0, 0];
	equips[mic_Toy] = [MIC, icon_mic + "Toy Mic", 5, 6500];
	equips[mic_Cheap] = [MIC, icon_mic + "Cheap Mic", 10, 9800];
	equips[mic_Metal] = [MIC, icon_mic + "Metal Mic", 15, 22000];
	equips[mic_Comedy] = [MIC, icon_mic + "Comedy Mic", 20, 39800];
	equips[mic_Rocker] = [MIC, icon_mic + "Rocker Mic", 30, 50000];
	equips[mic_Singer] = [MIC, icon_mic + "Singer Mic", 40, 65000];
	equips[mic_Stars] = [MIC, scr_icon("stars_mic") + "Star's Mic", 40, 0];
	
	equips[dress_Casual] = [DRESS, icon_dress + "Casual Wear", 0, 0];
	equips[dress_Used] = [DRESS, icon_dress + "Used Dress", 3, 4890];
	equips[dress_Cheap] = [DRESS, icon_dress + "Cheap Dress", 8, 9800];
	equips[dress_Silk] = [DRESS, icon_dress + "Silk Dress", 12, 12800];
	equips[dress_Peacock] = [DRESS, icon_dress + "Peacock Dress", 18, 35000]; 
	equips[dress_Sparkly] = [DRESS, icon_dress + "Sparkly Dress", 24, 48000]; 
	equips[dress_Singer] = [DRESS, icon_dress + "Singer Dress", 30, 59800]; 
	equips[dress_Stars] = [DRESS, scr_icon("stars_dress") + "Star's Dress", 40, 900000];
	
	equips[shoes_Barefoot] = [SHOES, icon_shoes + "Bare- foot", 0, 0];
	equips[shoes_Casual] = [SHOES, icon_shoes + "Casual Shoes", 2, 3980];
	equips[shoes_Sandles] = [SHOES, icon_shoes + "Sandles", 4, 7800];
	equips[shoes_Heels] = [SHOES, icon_heels + "Heels", 6, 12900];
	equips[shoes_Stilettos] = [SHOES, icon_heels + "Stilettos", 9, 22000];
	equips[shoes_Emerald] = [SHOES, icon_heels + "Emerald Shoes", 12, 36800];
	equips[shoes_Singer] = [SHOES, icon_heels + "Singer Shoes", 18, 50000];
	equips[shoes_Stars] = [SHOES, scr_icon("stars_shoes") + "Star's Shoes", 25, 0];
	
	equips[makeup_None] = [MAKEUP, icon_makeup + "Natural look", 0, 0];
	equips[makeup_Rouge] = [MAKEUP, icon_makeup + "Rouge Makeup", 2, 1200];
	equips[makeup_Model] = [MAKEUP, icon_makeup + "Model Makeup", 4, 3680];
	equips[makeup_Movie] = [MAKEUP, icon_makeup + "Movie Makeup", 5, 5400];
	equips[makeup_Actress] = [MAKEUP, icon_makeup + "Actress Makeup", 6, 12800];
	equips[makeup_Azure] = [MAKEUP, icon_makeup + "Azure Makeup", 8, 32400];
	equips[makeup_Singer] = [MAKEUP, icon_makeup + "Singer Makeup", 10, 45000];
	equips[makeup_Stars] = [MAKEUP, scr_icon("stars_makeup") + "Star's Makeup", 12, 0];
}