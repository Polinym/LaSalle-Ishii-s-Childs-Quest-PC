function scr_japan_lines_menu()
{
var prompt = "#  Yes  No/?";
var line_john_used = "{John}#used /A.>";
var line_managic = "{John}#used Managic!";

line[0] = "System line 0";
line[1] = "Nobody showed up!|#What the heck?!#|We'd better try#again later./p|~f0"; //1 (0)
line[2] = "There's hardly#anyone here.|#How pathetic./p/p~f9"; //2-4 (1)
line[3] = "Eh, not a bad#turn-out./p"; //5-8 (2)
line[4] = "We got a fair#amount of people!|#Let's give it#our all!/p"; //5-8 (3)
line[5] = "A full house!|#The crowd's full#of excitement!|#Let's get started!/p";

line[6] = "Kiriko plays the#straight-man!|#Rin the funny one!#Yuko plays along!";
line[7] = "Kiriko plays the#straight-man!|#Rin the funny one!#Yuko messes up!";
line[8] = "Major letdown!|#An unpleasant air#blows in.";
line[9] = "It didn't land!";
line[10] = "Excellent work!|#Earned /A of#the audience.";
line[11] = "It's hopeless!|#Time's up!#DING DING DING!/p/p"
line[12] = "Childs swears#they'll do their#best next time!/p~f1"; 
line[13] = "We win, we win!#||#Childs has won#over the audience!/p/p"
+ ">The band earned#$/a!| All right!/p/p";

line[14] = "Childs sang the#/A!"
+ ">Lalalaaa,#lalalaaa!#loo loo loo lee,#Lee lee lee loo!";
line[16] = "The girls'#beautiful voices#resounded!";
line[17] = "Huh?|#You already sang#that once.";
line[18] = "What?|#You did that#already!";
line[19] = "How many times#are you going to#play the same#song?";


line[20] = "Childs acted#out the skit,#\"/A\""
+ "/p>Cha-la-LAAAN!#Cha-la-la-la,#cha-la-LAAAAN!";
line[21] = "The girls' skit#caused a stir#of excitement!";
//line 18 repeats here
line[22] = "Wha-a-aat?!|That's the third#time!";
line[23] = "Really!|How many times#are you going#to do the same#thing?!"
line[24] = "/p/rWon over /A#of the audience!";

line[25] = "We win, we win!#||#Childs has won#over the audience!/p/p"
+ ">The concert is#a success!/p#Childs's faces#are beaming!";

line[26] = "~&p\"/1Hey, I gotta pee!\"/p/x/p";
line[27] = "/A's#Fussdo#hit#100%!/x/p";

line[28] = "You don't have#anything.";
line[29] = "{John} hasn't learned#any Managic yet.";
line[30] = "There's nobody#there.";

line[31] = "{John} gave a#diaper to /A.#Her urge to#pee went away!/p/x/p";
line[32] = "{John} gave a#diaper to /A,#but she didn't#have to go!/p";

line[33] = line_john_used + "But nothing#happened.";
line[34] = "You shouldn't#throw that away.";
line[35] = "John#threw away the#/A.";

line[36] = "P-peeee-YOO!";
line[37] = "{John}#used the #past mistakes!/p"
+ ">Mitsuzo repents!#\"I-I'm sorry.\",#he thought.#The power of#Mitsuzo's words#is halved!/p/p";
line[38] = "The stain on#{John}'s briefs#went away!#He's in his#shiny Sunday best!";
line[39] = "{John} ate#the /A.>/B{John}#recovered HP!";
line[40] = line_john_used + "/p/M/p/p";
line[41] = line_john_used + "BADUUM BADUUM!#The flat drum#echoed with#flattery!"
+ ">Nothing happened.";
line[42] = line_john_used + "*Crunchachrunch*#He grinded out#the seed of#happiness!"
line[43] = "{John}#used /A.|/r"
+ "Ka-pow!#It stunned the#enemy, allowing#{John} to#escape!/p/p/R/p"
line[44] = line_john_used + "{John} used#the item in vain.#Aw man!";
line[45] = "{John}#drank the#/A."
+ ">His body was#purged of the#poison!";
line[46] = "{John}#drank the#/A."
+ ">{John} danced#the Mambo!#OOOH MAMBO!";
line[47] = "{John}#peered through#the " + scr_icon("secret_lens") + "Secret Lens!~s+/p";
line[48] = "{John}#put away the#" + scr_icon("secret_lens") + "Secret Lens!~s-/p";

line[49] = "/A#begins to attack!/p/p";
line[50] = "You came across#/A!#The enemy#suddenly attacked!/p";
line[51] = "You came across#/A!/p|";

line[52] = "{John} flatters!#He spoke perfectly!|#A fountain of#flattery flows#forth!|~&a/*/p";
line[53] = "{John} flatters!|#\"/A\"|~&a/*/p";
line[54] = "{John} is on#guard!/p";
line[55] = "{John} and the#girls ran away./p|";
line[56] = "{John} and the#girls ran away,|#but they were#stopped!/p";

line[57] = "In the stress of#battle, he#couldn't get the#words right!#Dang it!/p";
line[58] = line_managic + "/p/rA fountain of#flattery flows#forth!/p~&a/*/p";
line[59] = "{John}#used the#assorted candy./p/r"
+ "{John}#offered a gift!#\"I insist!\"|/*/p";
line[60] = "{John}#used the flat#drum./p/r"
+ "BADUUM BADUUM!#The flat drum#echoed with#flattery!|/*/p";
line[61] = "{John}#used the seed#grinder./p/r"
+ "*Crunchachrunch*#He grinded out#the seed of#happiness!|/*/p";

line[62] = "But it had no#effect on Mitsuzo./p";
line[63] = "The enemy took#/A flattery!/p|";
line[64] = "But the enemy#didn't listen./p|";

line[65] = "The enemy touched#/A's /B!|#Tsun tsun!"
+ "#/1\"Eek! Creep!\"/0/p~&e/s/p";

line[66] = "The enemy used#venomous words!#{John} got#poisoned!|~&e/s/p";
line[67] = "The enemy used#/A.|~&e/s/p";
line[68] = "/A damage#to /B!/p";
line[69] = "{John}#paid it no mind!/p";
line[70] = "{John} took#/A damage!/p";

line[71] = "{John} was done in_/p/p/p/p";
line[72] = "/A's Fussdo#hit 100%!!!/p/p";
line[73] = "\"Ah! Thanks!\"|#The enemy's words#stopped and its#stress is gone!/p";

line[74] = "/pHurray!#You fully#flattered the#enemy!/p/p";
line[75] = "/p{John} fully#flattered the#enemy!/p/p"
+ "#Received $/A./p/p";
line[76] = "{John} fully#flattered the#enemy!#/p/pEarned"
+ "#/A Popularity and|#got $/B./p/p";
line[77] = "The enemy became#a SW fan!/p/p Gained#"
+ "/A Popularity#and $/B!/p/p";

line[78] = line_managic + "/p/f/p/r/A{John}#recovered HP!/p";
line[79] = line_managic + "/p/rA fountain of#flattery flows#forth!/p/rIneffective now.";
line[80] = line_managic + "/p/r{John}#removed the girls'#urge to pee.~ma/p/x/p";
line[81] = line_managic + "/p/r{John}#removed the fuss#of the girls!~mr/p/x";
line[82] = line_managic + "/p/r{John}#removed the fuss#of the girls!~mr/p";

line[83] = "{John} looked#around his feet.>";
line[84] = "{John} slipped off#his feet!#Oh hey, he fouund#some Indigo oil!"
line[85] = "/f/p/HOh my goodness!#{John}'s group was#fully healed!"
line[86] = "Found /A#Suit!/p#But,| it was#too /B#to wear./p";
line[87] = "What's this?#{John} found#/A!#|Huzzah!/p";
line[88] = "{John} found#/A,#but he has too#many items now.";
line[89] = "What's this?#Oh, you found the#Star's Shoes!#There's even#three pairs!"
+ ">But they're#kinda smelly_#You'd rather the#girls not wear#them_";
line[90] = "Looks like a#turtle is about#to surface there!/p/p/T";
line[91] = "What's this?#You found a#bottle! There's#some kind of#photo inside it./p/p~C7/p";
line[92] = "But he didn't#find anything.";

line[93] = "{John} can sense#something here,#but it can't#quite be seen!";

line[94] = "/1Come again!";
line[95] = "/1We look forward#to your next#visit!";
line[96] = "/1Thank you for#your patronage!|";

line[97] = "/1The#/A,#right? That OK?" + prompt;
line[98] = "/1The#/A,#right? That OK?" + prompt;
line[99] = "/1The /A,#right? That OK?" + prompt;
line[100] = "/1The /A,#right? That OK?" + prompt;

line[101] = "/1Certainly.|#That plane will#be departing soon.";
line[102] = "/1I'm sorry, but#that plane isn't#boarding now.#Please come again!";
line[103] = "This /A?#" + prompt;
line[104] = "/1Will you be#buying more?#" + prompt;
line[105] = "/1I'm very sorry,#dear honored sir!#You don't#have enough!";

line[106] = "Okay, I'll use#this banana peel as#the materials and#show it to my#toad, Marilyn."
 + ">Looky here! He's#dripping out some#drippy oil with#his sweat!#I'll collect it."
 + ">It's all done!#Here's your#yellow oil!#Please come again!~PY";

line[107] = "I need some#/A to#make that oil.#You'll need to#bring it to me.";
line[108] = "/1Sir, you're#carrying too much.#You'll have to#dispose of#something.";
line[109] = "/1I'm very sorry,#dear honored sir!#You don't#have enough!";
line[110] = "/1Thank you!|#Continue shopping?" + prompt;
line[111] = "/1Sir! You already#have that!";
line[112] = "/1Sir, what your#band is wearing#is better!";
line[113] = "/1Yes, thank you!#Don't worry,#we'll dispose of#what you're#currently wearing#here.";
line[114] = "/1Sir, you don't#got enough dough.";
line[115] = "/1Yes, certainly.|#Please, take your#time./p/p";
line[116] = "/1Then good night#to you all.";
line[117] = "/1What else can I#do for you?";
line[118] = "/1Very well.|#Please stay again!";

line[119] = "Where will the#turtle appear?#Move your boat#to the spot and#press the A Button.";
line[120] = "Nailed it!/p#{John} obtained#the turtle shell!/p~I9";
line[121] = "Oh phooey!|#That's too bad.#But don't lose#heart now!";
}