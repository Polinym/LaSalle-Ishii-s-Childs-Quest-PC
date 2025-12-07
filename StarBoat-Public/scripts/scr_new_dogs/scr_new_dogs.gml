function scr_new_dogs()
{
	dog_index = 0;
	dogs_order[9] = 0;
	dog_count = 3;
	dog_prompt = "#  True False/?";
	dogs[64] = "";
	dogs[0] = "Aha!| A mistake!|#You shall not be#granted entry."
	+ ">Come back after#you have studied#more./p~f2";
	dogs[1] = "~D>";
	dogs[2] = "Well done, humans.|#Go right ahead up#to Sky Castle_/p/p~SC/p";
	scr_dog_add("The Melville dog#told you \"Woof\".", true); //3
	scr_dog_add("The Denber dog#made a bird-like#noise.", true);
	scr_dog_add("The Niami dog#did not welcome#your presence.", true);
	scr_dog_add("The Tallas dog#made a noise like#a goat!", true);
	scr_dog_add("The Freattle dog#greeted you to#the town.", true); //7
	scr_dog_add("The Kings dog#spoke to you in#a rhyming way.", true); //8
	scr_dog_add("The dog at Club#Marauder asked#you to dance.", true);
	scr_dog_add("The dog named#Arfshmael lives#in Boizy.", true);
	scr_dog_add("The swimming dog#had brown fur.", true);
	scr_dog_add("There are 16#dogs you can talk#to in this land.", true);
	scr_dog_add("You can find#eight dogs in#Moonbark.", true); //13
	scr_dog_add("You cannot find#a dog in Arbony.", true);
	scr_dog_add("You cannot find#a dog in Yutica.", true);
	scr_dog_add("You cannot find#a dog in Botson.", true);
	scr_dog_add("You cannot find#a dog in Fenix.", true);
	scr_dog_add("You cannot find#dogs in Poltland.", true); //18
	scr_dog_add("You cannot find#dogs in Metroit.", true); //19
	
	scr_dog_add("The Melville dog#told you \"Bark\".", false); //20
	scr_dog_add("The Denber dog#made a cat-like#noise.", false);
	scr_dog_add("The Niami dog#welcomed your#presence.", false); //22
	scr_dog_add("The Tallas dog#made a noise like#a pig!", false);
	scr_dog_add("The Freattle dog#did not welcome#your presence.", false);
	scr_dog_add("The Kings dog#asked you to#dance.", false); //25
	scr_dog_add("No dogs dwell#in Club Marauder.", false);
	scr_dog_add("The dog named#Ross Polbark#lives in Boizy.", false);
	scr_dog_add("There are 19#dogs you can talk#to in this land.", false);
	scr_dog_add("You can find#seven dogs in#Moobark.", false);
	scr_dog_add("You cannot find#dogs in Melville.", false);
	scr_dog_add("You cannot find#a dog in Denber.", false); //31
	scr_dog_add("You cannot find#a dog in Niami.", false); //32
	scr_dog_add("You cannot find#a dog in Tallas.", false);
	scr_dog_add("You cannot find#dogs in Freattle.", false);
	scr_dog_add("You cannot find#dogs in Kings.", false); //35
	
	scr_dog_add("Dogs live in#the area west of#New Yorik.", true);
	scr_dog_add("Dogs live in#the area around#Boizy town.", true);
	scr_dog_add("No dogs can be#fought in Club#Marauder.", true);
	scr_dog_add("No dogs can be#fought in Wahaii.", true);
	scr_dog_add("No dogs can be#fought in the#Meowco building.", true);
	scr_dog_add("No dogs can be#fought in the#sewer tunnel.", true);
	scr_dog_add("The dog in#Wahaii speaks in#a foreign tongue.", true); //42
	
	scr_dog_add("The Denber dog#told you \"Woof\".", false); //43
	scr_dog_add("The Niami dog#made a bird-like#noise.", false);
	scr_dog_add("The Tallas dog#knows the secret#to " + scr_icon("red_paint") + "Red Paint.", false);
	scr_dog_add("The Freattle dog#made a noise like#a goat!", false);
	scr_dog_add("The Kings dog#greeted you to#the town.", false);
	scr_dog_add("No dogs can be#found in Plushy#TV building.", false);
	scr_dog_add("The dog in#Lonohuhu asked#you to dance.", false); //49
}