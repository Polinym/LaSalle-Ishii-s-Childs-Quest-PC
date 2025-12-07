var blank = "";
line[144] = blank;
line_npc[144] = blank;
for (var i = 0; i < 144; i++) 
{
	line[i] = blank;
	line_npc[i] = blank;
}
var prompt = "#  Yes  No/?";
var prompt_chicken = "`145144#  Yes  No way!/?";
var prompt_btm = "#  Er_  No/?";
var prompt_ew = "#  Yes  Ew, no!/?";
var prompt_oil = "~pb#  Buy  Nope/?";
var prompt_bar = "@8180#  Yes  Nah_/?";
var prompt_dog = "#  True False/?";

scr_lines_npc();
scr_lines_secret();
var icon_stars_mic = scr_icon("stars_mic");
var icon_stars_dress = scr_icon("stars_dress");
var icon_stars_shoes = scr_icon("stars_shoes");
var icon_stars_makeup = scr_icon("stars_makeup");


var icon_mizithril = scr_icon("mizithril");
var icon_crystal = scr_icon("crystal_ball");
var icon_ticket = scr_icon("ticket");
var icon_hotdog = scr_icon("hotdog");
var icon_magic_paint = scr_icon("magic_paint");
var icon_paint = scr_icon("white_paint");
var icon_dress = scr_icon("dress");
var icon_jar = scr_icon("jar");
var icon_orb = scr_icon("orb");

var icon_red_paint = scr_icon("red_paint");
var icon_orange_paint = scr_icon("orange_paint");
var icon_yellow_paint = scr_icon("yellow_paint");
var icon_green_paint = scr_icon("green_paint");
var icon_blue_paint = scr_icon("blue_paint");
var icon_indigo_paint = scr_icon("indigo_paint");
var icon_violet_paint = scr_icon("violet_paint");

line[0] = "Hey, line 0!"
line[1] = "Welcome to#Tallas Airlines!"
+ ">1-way to Freattle#is $1000000."
+ ">Can ya'll pay?@0203" + prompt;
line[2] = "Ooh,| you don't#have enough!";
line[3] = "Bye now!";

line[4] = "Wanna be stars?#You gotta hold#concerts at the#Town Halls!";

line[5] = "I'm a soothsayer,#but alas!#I've lost my#"
+ scr_icon("crystal_ball") + "crystal ball!"
+ ">Find it,| and I#can tell you the#future.";

line[6] = "My " + icon_crystal + "crystal ball!|#Huzzah!|"
+ "#As promised,#I'll help you."
+ ">I'll gaze deeply#and see the#future!"
+ ">Hmm_| Mmmm_| Yes_#Hocus Pocus_|#Ah, I see it!"
+ ">A fortuitous clue#lies in the sea#southeast of New#Yorik./p/p~BA";

line[7] = "The sea southeast#of New Yorik_>Thus ends my#power. Thank you,|#and Godspeed.";

line[8] = "What is it?!#Get thee to work!";

line[9] = "Nope.| You don't#belong on my set.";

line[10] = "Bring to me some#" + icon_mizithril + "Mizithril, and#I shall forge the#" + icon_stars_mic + "Star's Mic.";
line[11] = "Oh!| It can't be!|#The legendary#metal " + icon_mizithril + "Mizithril!"
+ ">Alright then.|#With this " + icon_stars_mic + "Star's#Microphone, you'll#make it big!~*M";
line[12] = "You already have#the " + icon_stars_mic + "Star's Mic.";

line[13] = "Welcome!|#Here at Meowco,#we create yawns.";

line[14] = "Oh alas! I#was so excited to#go to Botson_"
+ ">Snac-man's#development is#taking SO| long!"
+ ">To top it all#off, I'm starving.#Can you help me?"
+ ">I could really#go for a " + icon_hotdog  + "hot dog#from Denber."
+ ">Do that, and#my Botson plane#" + icon_ticket + "ticket is all#yours.";

line[15] = "Ah, yes!| That#smell! A perfect#" + icon_hotdog + "hot dog!"
+ ">Here's my Botson#" + icon_ticket + "ticket. Have a#fun trip, guys!~I0";

line[16] = "Pack well!";

line[17] = "~&H/2Excuse me, I was#washing my boats.#Want one?"
+ ">You may use them,#but I have only#one request."
+ ">You must gather#for me the " + icon_magic_paint + "Magic#Paint made of the#seven colors."
+ ">Truth is, I come#from a long line#of Dressmakers."
+ ">My grandmother#once sewed the#mystic " + icon_dress + "Superstar#Dress."
+ ">It was for#\"future#warriors.\""
+ ">Oh, how I longed#to wear that dress#as a child_"
+ ">One night I stole#it to wear to bed.#Oh alas!"
+ ">My chronic#bed-wetting ruined#the lovely gown!"
+ ">I was exiled,| but#I've since found#my calling!"
+ ">Now I make boats."
+ ">Find me the#" + icon_magic_paint + "Magic Paint, and#I can aid you.~mb";

line[18] = "~&H/2Find me the#" + icon_magic_paint + "Magic Paint, and#I can aid you.";

line[19] = "~&H/2My!| You did it!#You brought me#the " + icon_magic_paint + "Magic Paint!"
+ ">As promised, here#are four of my#finest boats."
+ ">With " + icon_magic_paint + "Magic Paint,#they can travel#anywhere except in#towns, OK?~I1";

line[20] = "~&H/2Don't thank me.#You| went and found#all the Paints!";

line[21] = "~&P/3As the plane#travels,| {John}'s#mind races.| What#may lie ahead?/^";

line[22] = "/0~&z/1/HZ|z|z|_ Z|z|z|_/p";

line[23] = "/2\"Mmm_\"|#\"Yummy!\"|#\"Delicious!\"|"
 + ">/0The girls'#Stress levels#returned to 0%!/p";
 
line[24] = "~&X/3\"THAT'S IT!!#|I'm done,| I QUIT!\"/p/p/p~C1";

line[25] = "What?!|#Hast thee no#control over thy#talent?!"
 + ">{Girl} went off to#cry./p {John},#fetch her.|~C2";
line[26] = "Tarry not!";
line[27] = "/0_|Nope.";
line[28] = "/0Ah! {Girl}!|#Good./p~C0";
line[29] = "Thou hast found#her?| Get back to#work.~C3";

line[30] = "Mall offices!#May I help you?|#  Nothing Water#  Concert Hint/m";
line[31] = "Have a nice#day then.";
line[32] = "Then carry#on shopping.";
line[33] = "Enjoy our#water fountain!";
line[34] = "Gonna hold a#concert here?/p"
+ ">That's fine.#Good luck./p";
line[35] = "Certainly!/p#Hints are always#free of charge!";

//Melville
line[36] = "Head southeast to#Arbony in N.Y./<"; 
//Botson
line[37] = icon_magic_paint + "Magic Paint#allows boats to#sail anywhere!"
+ ">To make it, you'll#need the " + icon_paint + "Paints#of seven colors."
+ ">Many people around#the country will#help you get them."
+ ">Then bring the 7#" + icon_paint + "Paints to a store#in Freattle, N.Y./<";
//Fenix
line[38] = "Help a girl off#the beaten path to#earn " + icon_orange_paint + "Orange#Paint./<";
//Tallas
line[39] = "Have you met the#soothsayer in a#New Yorik house?"
+ ">Turtles in the#southeasternmost#ocean stole his#" + icon_crystal + "Crystal Ball."
+ ">There's an island#by there where a#turtle expert#lives."
+ ">She can tell you#where turtles will#surface at any#time./<";
//Kings
line[40] = "You can win a#" + icon_ticket + "Wahaii Ticket#in a contest!/<";
//Metroit
//line[41] = "Find the" + icon_jar + "Aecor#Jar.";
line[41] = "The collecter of#jars will pay any#price for a rare#" + icon_jar + "Cephalo Jar./<"
//No-name town
line[42] = "Call today to join#Nintendo Power at#1-800-255-3700!#Become a member!/<";
line[43] = "~&X/0Liz suddenly#exploded in anger!/p"
+ ">/1Bleh!| This water's#nasty! I HATE IT!/p#*WAAAH!*/p/p~C1";
 
line[44] = "So,| thy audience#t'was no audience#at all?"
+ ">The road to#stardom is frought#with failure.| Try#once more, {John}./p~C3";
line[45] = "What?!|#Thou didst not win#over the crowd?!"
+ ">A pathetic lot#of Warriors art#thou!| Get thee to#work, {John}!~C3";
line[46] = "Oh {John}!|#T'was an absurdly#awful show!|#*Sigh_*~C3";

line[47] = "Welcome to#/h Hall."
+ ">You wish to hold#a concert here?@4948" + prompt;
line[48] = "Farewell then.";
line[49] = "Venue usage fee#is $/A, okay?~?h" + prompt;
line[50] = "Sorry, you don't#have enough money.";
line[51] = "~$0Then good luck./(";

line[52] = "~&HThat was a great#show!| Keep it up!/<";
line[53] = "S.W. already won#this concert.>" + line[48];
line[54] = "Welcome to#/h Hall."
+ ">You wish to hold#a concert here?@5348" + prompt;

line[55] = "You did it!|#You've performed#all the concerts!"
+ ">Stars like you#deserve a " + icon_ticket + "Coupon#for a free " + icon_stars_dress + "Star's#Dress!"
+ ">Keep working#together, and#you'll go far!/p~I2/<";

line[56] = "~&XLiz exploded in#disgust!"
 + ">\"This room is#HORRIBLE!|#I HATE it!|\"#*WAAH*/p/p~C1";
line[57] = "~&XEly exploded#in disgust!"
+ ">\"This food is#awful!| I HATE it!\"#*Waaah!*/p/p~C1";

line[58] = "Tell me, have you#seen my boyfriend,#Edward?"
+ ">I haven't seen him#in weeks! I'm so#worried that I#can hardly eat!";
line[59] = "T-that letter!#It's from Edward?|#He wants to_!"
+ ">*GASP*|#YES, Edward!#I'll marry you!!!"
+ ">It's like a dream!|#I'm going to be#Mrs. Dancyn!"
+ ">Well,| that is,|#When he finally#comes back_"
+ ">Thank you so much,#Mr._| er_| what's#your name?"
+ ">Yes, I can't thank#you enough, kind#{John} Belmore!"
+ ">I must give you#something for all#your trouble,#{John}."
+ ">Please take this#" + icon_mizithril + "Mizithril as a#token of my#thanks!"
+ ">This should help#your band achieve#stardom, {John}."
+ ">You should go to#Arbony in N.Y.#and ask around.~I3";
line[60] = "Oh, hi!| Edward#and I finally tied#the knot! I'm so#happy!";

line[61] = "Hey-oh!^| Hello!^|#Welcome to my#fun show!"
+ ">Music Quiz!|#Answer right,| and#win a prize!"
+ ">Today's topic?#Stardom trivia!|#Hope you studied!"
+ ">Well, ladies and#gentlman? Wanna#try the quiz?@6362"
+ ">You brave enough?#" + prompt;
line[62] = "Really?| What a#pity.| Come again#anytime!"
line[63] = "O-|K!/p~&0"
+ ">Your question is_~&f"
+ ">Who is the#\"Fourth Lord\" of#English Talent?/p/p~k1";
line[64] = "So, was your#answer correct?"
+ ">Nope, not a bit!|#Come back after#you've traveled and#learned much more.";
line[65] = "So, was your#answer correct?"
+ ">Yes, that's right!|#You win!|#What do you win?"
+ ">Some brand new#" + icon_violet_paint + "Violet Paint!|#Congratulations!"
+ ">You're a genius!|#That's all, folks!|#See you next time!";
line[66] = "Well done, girls!|#Good luck on#becoming stars!";

line[67] = "I am Tiffany.|#My family's old#jewels hath been#stolen!";
line[68] = "_Truly?| Thou hast#found my family#jewels?| Oh my!"
+ ">I cannot thank#thee enough, good#fellow!"
+ ">Thou art truly a#brave and,| dare I#say,| fine hero!"
+ ">No other man o'#this earth hath#cared for me so!"
+ ">Tell me, sir_|#Dost thou_#love me?@6969" + prompt_btm;
line[69] = "But_| thou must!|#Dost not thy very#deeds prove love?"
+ ">Then was I wrong#to believe in the#legends of Manager#{John}_?"
+ ">Take least this#" + icon_orange_paint + "Orange Paint!"
+ ">May its colour's#warmth remind of#my love for thee#within my bosom!~PO";
line[70] = "Despite all,| I#shall forever love#thee, O' {John}!";

line[71] = "/$G'day, mate. The#name's Squiddy, n'#I like me some#fine " + icon_jar + "Jars."
+ ">Show me a nice un'#and we'll do biz.";
line[72] = "/$Oi,| Squiddy here.|#Nice jar y' got#there_"
+ ">Could I 'ave it?@7573#" + prompt_ew;
line[73] = "Bloody cheapskate!|#Beat it!/p";
line[74] = ">How's ~$b#for " + icon_blue_paint + "Blue Paint?" + prompt_oil;

line[75] = "~TJRight then.#I'll cut ya a deal#on my paint."
+ line[74];
line[76] = "What you tryin'#to pull?! You#ain't got enough!/<";

line[77] = "/$You wanna do biz?|#Let's cut to the#chase then."
+ line[74];

line[78] = "~p$Thank ya kindly.#Laters.~PB";

line[79] = "What?!| You#tryin' to bargain?" + prompt_bar;
line[80] = "Really?| Okay_/<";
line[81] = "Wha-?!| ~$B?|#You drive a hard#bargain!| Awright_/p~bS/p/p/p";
line[82] = "~&t/$Okay, okay_|#Y' got meh, mate."
+ ">How's 'bout|#~$b then?" + prompt_oil;
line[83] = "~&tBloody heck!|#Fine,| free it is.|#Here's your " + icon_blue_paint + "Blue#Paint.~PB"
+ ">Now yeh'd better#just skidaddle,#got it?!/<";
line[84] = "/$Sorry, mate.|#I'm clean outta#paint.";

line[85] = "What?!#Thou hath been#bested?| *Puh*"
+ ">I've no choice#but to allow thee#to try again.| Go!";

line[86] = "Welcome to#Moonbark, gateway#to Sky Castle."
+ ">Only the strong#of wit shall be#granted entrance."
+ ">Therefore you#humans shall be#tested."
+ ">You must answer#these questions_#True or False!"
+ ">I must test your#knowledge of the#Moonbarkian kind."
+ ">Then let us begin!|#You shall have#ten questions./p~DI";
line[87] = "You've done well#to come this far.|#Truly you are#worthy."
 + ">Take this#" + icon_green_paint + "Green Paint.|#Use it well.~PG";
line[88] = "Welcome_";
line[89] = "~&HAh, the Warriors.|#I've nothing more#to give you now.";

line[90] = "/0Hey, isn't that#a rare vase?"
+ ">{John} found#the " + icon_jar + "Cephalo Jar!/p~I4";
line[91] = "/0No one there.";

line[92] = "~&H*Sigh*| I dropped#my " + icon_ticket + "plane ticket#to Freattle when I#went by the beach.";

line[93] = "~&HI hid the " + icon_stars_shoes + "Star's#Shoes in a cave#near Poltland."
+ ">Why?| Those darn#shoes gave my feet#some awful sores!";

line[94] = "What's this?  A#pair of golden#spheres with a#family crest?"
+ ">{John}#obtained the#" + icon_orb + "Family Jewels!~FJ/p~I6";

line[95] = "Welcome to#Sorceror's Paints.|#I'm the great#alchemist, Marlon."
 + ">I can help you if#you gather all 7#of the " + icon_magic_paint + "paints.";
line[96] = "Welcome to#Sorceror's Paints."
+ ">You've got all of#the " + icon_magic_paint + "paints!| Then#I'll get started."
+ ">While you wait_|#A staring contest!#Ready_| set_| go!/p/p/p/p/p/p/p/p/p/p/p/p"
+ "/rAt last,#it's done!|#" + icon_magic_paint + "Magic Paint!/p~I7";
line[97] = "Welcome to#Sorceror's Paints."
+ ">Hey, {John}.|#Want a staring#contest, eh?"
+ ">I like that./p#Ready_| set_| GO!/p/p/p/p/p/p/p/p/p/p/p/p/p/p/p/p/p/p"
+ "/rTIME!|#Drop by anytime!";

line[98] = "Be patient, and#you can get the#" + icon_stars_dress + "Star's Dress for#free!";

line[99] = "Oh, {John}? Long#time no see!#Please, stay!"
+ ">Let's relax and#catch up with#some tea."
+ ">*BLAHBLAHBLAHBLAH*|#*BLAHBLAHBLAHBLAH*|#*BLAHBLAHBLAH_*"
+ ">_oh, I'm sorry.|#It seems I've#bored your band."
+ ">Thanks for coming,#{John}!| Don't let me#keep you.| Toodles!~BB";

line[100] = "Grow your power#and I'll grant you#the ultimate song.#Please be patient.";
line[101] = "Well done, {John}!"
+ ">Use this ^Atma#song to put an end#to the Dark Curse!~FS";
line[102] = "{John}!|#You must end the#Dark Curse!";

line[103] = "Welcome to Terr#Tailors, Whoulle#guild branch."
 + ">The " + icon_stars_dress + "Star's Dress?|#That will cost#$~$D.| Buy it?~pd" + prompt;
line[104] = "Bye now!";
line[105] = "Ooh, you don't#have enough money.";
line[106] = "Certainly.| Ah yes,#it looks marvelous#on you girls.~*D";
line[107] = "Welcome to Terr#Tailors, Whoulle#guild branch."
+ ">Since you have#a coupon, the#" + icon_stars_dress + "Star's Dress is#on the house!"
+ ">It will look#lovely on you#three girls.~*D";

line[108] = "Hi, I'm Don!|#I sell " + icon_yellow_paint + "paint over#in the tower near#Kings!";

line[109] = "Somebody destroyed#the bridge that#led to the rest#of New Yorik.";

line[110] = "Did you know?#Lord Irish manages#English Talent's#hires and talent."
+ ">He's considered to#be the founder's#second-in-#command."
line[111] = "Did you know?#CFO of English#Talent is Lord#Wallace Scottish."
+ ">He was hired for#his shrewd#business skills.";

line[112] = "I watched some#lady take off her-|#er, stuff,| on the#beach, yeah.";

line[113] = "~&H" + icon_stars_shoes + "Star's Shoes?|#Think I dropped#'em somewhere#across the hall.";

line[114] = "Did you know?#The founder of#English Talent is#Edward English I."
+ ">He hired three#other Lords to#help him rule.";

line[115] = "The " + icon_orb + "Rosetta Scone#from Metroit can#decode any message#you come across!";

line[116] = "Was some some on#I down it of#slipped 6 thing."
+ ">Paint 1 kind about#or oil paces?";
line[117] = "I slipped on#something about#16 paces down."
+ ">Was it some#kind of " + icon_indigo_paint + "paint#or oil?";

line[118] = "~&HWhat a tragedy!|#Everyone in the#town of Drowsinham#can't wake up!"
+ ">Only the " + icon_orb + "Shine#of Ryesand Islet#can awaken them!"
+ ">Please, find the#" + icon_orb + "Shine and save#Drowsinham!";

line[119] = "Zzz_| Zzz_|";
line[120] = "_mmm_| huh?/p Ah!#The " + icon_orb + "Shine's#power woke me up!#Thanks so much!" 
+ ">Everyone else is#still asleep?| We#must've slept a#long time!"
+ ">By the way, I also#hosted the Star's#Swim contest."
+ ">Truth is, I need#your help, okay?"
+ ">I need to get back#to my girlfriend#Ana in Niami."
+ ">I'm getting things#ready to pop the#question to her!"
+ ">I wanna get back,#but I'm swamped up#in work right now."
+ ">Please take this#" + icon_ticket + "letter to her and#ease her worry."
+ ">I hope it's not#too much to ask!~I8";
line[121] = "Edward's too busy.";

line[122] = "~ntHi!| I'm,| like,| a#turtle expert."
+ ">The next turtle's#coming,| like,|#/A, /B#from here, 'kay?";
line[123] = "It's gonna be,|#like, 100 years#before the next#turtle.";

line[124] = "~&HAh, the Warriors!|#You've come."
+ ">Your makeup is#still looking#quite weak."
+ ">So take this!| The#" + icon_stars_makeup + "Star's Makeup!~*R";
line[125] = "~&HAloha,#Manager {John}!";

line[126] = "~&HThis island's#a dump!";
line[127] = "~&H/p*Ribbit*";

line[128] = "~EX";

line[129] = "Thy level has#reached its max!|#Well done,#{John}!>";
line[130] = "Good work,|#{John}."
+ ">Thou needst /A#Popularity to the#next level.>";

line[131] = "I've recorded thy#deeds in the#Managerial Scrolls#of Honor."
+ ">To return,#select CONTINUE#when you start#the game again.";

line[132] = line[130] + line[131];
line[133] = line[129] + line[131];

line[134] = "Ah, {John}_|#Thy return is#most welcome.|#Continue thy work.";

line[135] = "Welcome to Irish#records_| Oh, good#morning, {John}!";
line[136] = "~rsThe band's single,#/A,#sold /B copies."
+ ">In royalties, you#earned ~r$$/A!|#Great job!";

line[137] = "~&HWelcome!|#This is Plushy TV!";

line[138] = "Ah, welcome.| I'm#the boss here.|#You seem OK, so#here's a " + icon_ticket + "Pass./p~IA";
line[139] = "Huh?| You again?#You must have a#lot of free time.";

line[140] = "You're too popular#to come on this#show anymore.";
line[141] = "Hurry up and go#to Wahaii already.";
line[142] = "Who're you guys?"
+ ">You wanna enter#the Star's Swim#Contest?"
+ ">That's not my call#to make."
+ ">Go get a " + icon_ticket + "pass#from my boss on#the third floor.";
line[143] = "~FPGot a " + icon_ticket + "pass, huh?#Then I can let#you guys on, sure."
+ ">But you gotta wear#chicken suits. You#good with that?" + prompt_chicken;
line[144] = "Too much pride,#huh?| Oh well.#Come again.";
line[145] = "Heh heh heh_|#I'm just messing#with ya."
+ ">Go on in.| We're#about to go live.~OK/p~C4";

line[146] = "Okay, everyone!|#It's time for the#Star's Swim#Contest!"
+ ">The winner gets#four free " + icon_ticket + "tickets#for a Wahaii#vacation!"
+ ">Press that#A Button as fast#as you can!#GO!!!/p~sc";

line[147] = "Good try!|#Next time, give#it all you got!/<";

line[148] = "G'morning!|#It's showtime!/p~C4";

line[149] = "Hey, you can't#win!| You're not#popular enough!"
+ ">Well, now we can't#give the " + icon_ticket + "tickets#to anyone.| *Sigh*/<";

line[150] = "It's decided!/p#Stardom Warriors#win the contest!"
+ ">Nice job!| Here's#your four " + icon_ticket + "tickets#to Wahaii!"
+ ">Now it's time to#close up the pool!/p#See you next time!|~IB/<";

line[151] = "Ah, {John}!|#I've been awaiting#thee,| chosen one."
+ ">Now don't delay.|#Go forth boldly!"
+ ">_|Forgive me.|#You've yet to be#briefed."
+ ">You shall call me#Lord Scottish."
+ ">I am ruler of#English Talent,#a talent agency./p#Heh_"
+ ">I've a great task#in store for thee,#{John}_"
+ ">Allow my associate#to explain the#situation."
+ ">/IAh, good morrow!|#I am Lord Irish."
+ ">I cannot thank#thee enough for#coming to our aid!"
+ ">Please allow me#to explain."
+ ">Thou art the fresh#recruit of English#Talent, no?"
+ ">Henceforth thou#must be given thy#talent."
+ ">'Twill be#prosperous talent,#I doubt not!"
+ ">Thou must guard a#band of young#maidens three."
+ ">Not popular yet,|#but their debut#shall come."
+ ">Only with thy#efforts shall they#achieve stardom!"
+ ">Allow me to#introduce thee to_/p#Stardom Warriors!|#Girls of legend!/p/p~C5/p/p";

line[152] = "~&1/0Stardom Warriors,#or SW for short."
+ ">~P0Elizabeth|#Nickname:| \"Liz\"/p#Age: 15"
+ ">A cheerful free#spirit with a love#for animals."
+ ">She loves nature,#and also has#artistic talent."
+ ">~P1Margaret|#Nickname:| \"Meg\"/p#Age: 16"
+ ">Meg may seem cold,|#but she has a#caring heart."
+ ">She loves cooking,#reading, and old#poetry."
+ ">~P2Elinor|#Nickname:| \"Ely\"/p#Age: 17"
+ ">Ely is the eldest#of the band, and#a bold leader."
+ ">She's a clever#girl with a keen#ear for music."
+ ">They are three#sisters who formed#their own band."
+ ">However, it seems#they know nothing#of their past."
+ ">Thou art to be#their manager and#lead them to#stardom!"
+ ">/2\"Yeah!\"|#\"Please help us!\"|#\"Thanks!\""
+ ">/0'Twas Lord#Scottish who says#he found them."
+ ">Their talent was#unknown to this#land of Brighton."
+ ">He promised them#that he'd make#them famous."
+ ">'Twas he who chose#to name them as#\"Stardom#Warriors\"."
+ ">/2\"Thou art willing#to fight for#stardom, nay?\""
+ ">\"Thou shalt be#my Warriors!\""
+ ">/0And so the girls#did train their#hardest to sing."
+ ">But they could#not become popular#stars alone_"
+ ">They need an#industry pro to#guide them."
+ ">Dost thou see,#{John}?| Thou now#art their hope!"
+ ">With thine aid,#they shall have#a chance!/p/p~C6";

line[153] = "Wilst, thou?|#Will thee try#and save them?"
+ ">A great many#thanks!| Thou art#a true hero!"
+ ">I believe that#thou art up to#the task, no?"
+ ">Thou must tour#concert halls the#world over."
+ ">To become stars,#they must perform#at town halls."
+ ">'Tis a difficult#task, but I doth#believe in thee!"
+ ">To win concerts,#bands must be#well equipped."
+ ">You must seek out#four Star's#relics!"
+ ">The " + icon_stars_mic + "Mic, " + icon_stars_dress + "Dress,#and " + icon_stars_shoes + "Shoes of#Stars!"
+ ">Their power will#help you to win#over the crowds."
+ ">Also_| I shall#teach unto you a#new power_"
+ ">Thou must employ#thy Managic!| Or,|#managerial magic.|#(MNG)"
+ ">MNG shall serve#thee well."
+ ">I shall tend to#crafting the#band's skits and#songs."
+ ">When thou wish#to Save, return#to my office#downstairs."
+ ">I shall record#thy deeds in the#Managerial Scrolls#of Honor."
+ ">Then go forth,#{John} and head#to the east."
+ ">Thou must find a#way to the town#of Botson."
+ ">_mmm?| Yes, Botson.#Thou heard me so.|#South of Niami."
+ ">Go forth and#tempt not the RNG!"
+ ">I shall pray for#thy success in#the room below."
+ ">~LSNow thou must know#thy role, no?|#Quite excellent."
+ ">Do whatever it#shall take to make#them famous."
+ ">I expect great#things from thee,#{John}_ Heheh_"
+ ">Go for the glory#of English Talent!/p#Ahahahaha!/p~C3";

line[154] = "/0{John} held the#photograph for the#girls to see."
+ ">/1\"Hey,#isn't that US???\"/0/p"
+ ">What the-?| It's#a photo of the#girls as babies!/p#Mysterious_/p~IC";

line[155] = "Oh!| You three#girls seem so#familiar!"
+ ">Alas, I doth#forget why_"
+ ">I can't seem#to remember much#at all lately_"

line[156] = "Pardon, I forgot#to introduce#myself last we#met."
+ ">My memory has#gotten so foggy#as of late_"
+ ">My name is Leonor,#but_| that photo!/p#May I_?"
+ ">I-|I see now!/p#'Tis a picture of/p#my daughters!"
+ ">Yes!| Elizabeth,#Margaret, and#Elinor! I#remember it all!"
+ ">I am Lady English,|#wife and friend#of Lord English."
+ ">We founded and#ran the English#Talent agency in#New Yorik."
+ ">To rule the#showbiz world, we#hired 3 lords."
+ ">The bold Lord#Irish,| clever#Scottish,| and#kind Lord Welsh."
+ ">And,| of course_/p#We had three#amazing children.#You three girls!"
+ ">~M1*GASP*|#I-I remember now#as well!| Yes!"
+ ">~L1Yes, Mother!|#I see it now!"
+ ">~E0But, where's#Father? What's#happened to us?"
+ ">~M0Why is Lord#Scottish in charge#now?"
+ ">~00Oh, old Wallace_/p#'Twas always so#jealous of Lord#English."
+ ">Lord Scottish#is learned in#the forbidden#dark arts."
+ ">With his power he#cast a Dark Curse!"
+ ">Lord English was#turned to stone!"
+ ">Wallace Scottish#must have wiped#our memories with#his dark powers!"
+ ">As a result of#his Curse, the#world became#filled with evil!"
+ ">People, animals,|#even objects have#become hostile."
+ ">Only the powers of#kindness and good#music undo it!"
+ ">Take this Shield#of my Grace./p#'Tis the weakness#of Lord Scottish."
+ ">Now go, {John},#and put an end#to the Dark Curse!/p/p~IF";

line[157] = "Please, {John}./p#Help my children!/p#End the curse!";

line[158] = "~&HThis is the Hall#of New Yorik."
+ ">Without the " + icon_stars_mic + "Mic,#" + icon_stars_shoes + "Shoes, and " + icon_stars_dress + "Dress#of Stars, you#cannot enter.";
line[159] = "~&HThis is the Hall#of New Yorik."
+ ">This is it,|#your final stage./p#Sing with all#your hearts./p/p/(";

line[160] = "~&VWe did it, guys!|/p#We became stars!/p#Gosh, it's like a#dream come true!/^~C8";

line[161] = "NEW YORIK HALL WON";

line[162] = "Stand with me#and rule#English Talent!"
+ ">~M0{John}, don't#trust this man."
+ ">~L1You're OUR#Manager, {John}!#Not his lapdog!"
+ ">~E2Lord Scottish is#evil.| He's a liar!"
+ ">~00Cheeky brats!| How#can thy memories#have returned?!"
+ ">Thou canst NEVER#end my DARK CURSE!"
+ ">~M2You're a monster!|#{John} will#never give in."
+ ">~L3We'll stop you#AND the curse!"
+ ">~E3Our music will#save the world!"
+ ">~00/2PITIFUL FOOLS!|#MY DARK MANAGIC#SPELLS THY END!/p/p~ls/p";

line[163] = "MWA HA HA!/p#FOOLISH {John}!/p#Thou shalt BOW#to ME!/p/p~C3/p/p";

line[164] = "Oh {John}!| Thou#hast surpassed#my expectations!"
+ ">Thou madest my#Warriors into#successful stars!" 
+ ">Now, {John}_"
+ ">Join me and I'll#grant thee half#all our profit!>" + line[162];

line[165] = "/p/p/p{John}!!!/p/p#RAPSCALLION THOU!/p/p#THY KINDNESS HATH_"
+ ">H-|H_| How could I#be so DEFEATED_?/p#N-|NO!"
+ ">My Power!/p#MY CURSE!|/p#'Tis all fading#away!"
+ ">English Talent was#MINE!/p I had all#the world!"
+ ">But in the end_/p#'Tis all for#naught./p Oh alas!"
+ ">It seems this#body hath reached#its limit_"
+ ">~lf./p./p./p"
+ ">~LF_Before I go_|#know this, you#worthless humans!"
+ ">Though you've#beaten me here_"
+ ">_this world will#never be rid#of me."
+ ">I curse you,#wretched Manager#{John}!"
+ ">I'll be reborn#time and time#again, each in#form anew."
+ ">I'll battle your#descendents every#generation_"
+ ">_until this#world is mine!"
+ ">Heeheeheehee#hahahahahaha!!!/p~]0/p";

line[166] = "/2And so the Dark#Curse was broken_|~sm/p/p/p/p/p/p/p/p~]t~]1/p";

line[167] = "Lord English was#freed from#petrification."
+ ">The English family#was reunited once#again."
+ ">S.W. became the#most popular band#in Brighton."
+ ">Under Lord English#the agency rose#to power again./p/p/p~]2/p";

line[168] = "~smWith the band's#profits, the#office was#rebuilt."
+ ">English Castle#became Brighton's#showbiz capital."
+ ">Beloved by the#country, the#Stardom Warriors#rule showbiz."
+ ">His job complete,#{John} prepared#to leave Brighton."
+ ">Before he left,|#Lord English came#to speak to him./p/p/p~]3/p";

line[169] = "Yes, I am the#world-renowned#Lord English."
+ ">{John}?| You will#depart this land?#A pity_"
+ ">Thank you,| from#the bottom of my#heart, {John}!"
+ ">Your efforts saved#all of Brighton."
+ ">Now, after me,|#my son will take#my place."
+ ">May Providence#watch over you as#you go, {John}!"
+ ">But please,| stay#for at least one#last show!/p/p/p~]4/p";

line[170] = "/p~Df/p/p|It's credits time!/p/p"
+ "/rPRODUCER# LaSalle Ishii/p/p/p"
+ "/rCHACHA# Takutaku's Papa/p/p/p"
+ "/rPROGRAMMING:# Ogino Yuuyu/p/p/p"
+ "/rDOODLES# Kunchan# Akuto Takekawa# Sororin/p/p/p"
+ "/rBAND# Florence Zun# Bahha Koyayashi/p/p/p"
+ "/rASSISTANCE# Charlie Akanu# Tabemoriwaki/p/p/p"
+ "/rSHOULDER RUBS# Akina Minamono/p/p/p"
+ "/rSPECIAL THANKS# Iori Yamamoto# Shigeki Imai/p/p/p"
+ "/rTRANSLATION#AND RECREATION:# Polinym/p/p/p"
+ "/rSTARDOM WARRIORS#BAND DESIGN BY# Mareeta/p/p/p"
+ "/rHuh?| That's it?#It's no wonder#this game never#got localized!"
+ ">Oh well. Thanks#for all your help,#Manager {John}!"
+ ">We're gonna miss#you, {John}! We#really will!"
+ ">I hate to say it,#but it's time to#say goodbye!"
+ ">~DwGoodbye, goodbye!/p#That's all, folks!/p#See you later!/p/p/p/p/p/p/p~8V/p";

//line[171] = "You've arrived at#the land of#everlasting sun!/p##Stay and enjoy#the good things#in Hawai!";
line[171] = "Alright, have#fun in the#island of sun!";

line[172] = "Tomatoes have the#power to turn#anything red."
+ ">While eating, Meg#decided to take#one, and_"
+ ">~PR_used it to turn#the " + icon_paint + "White Paint#into " + icon_red_paint + "Red Paint!";

line[173] = "~&H/pDogs know the#way to magic suits#that help you!#Ribbit!";