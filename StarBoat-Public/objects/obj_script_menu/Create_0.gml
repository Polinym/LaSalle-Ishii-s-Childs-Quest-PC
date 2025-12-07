var blank = "";
line[128] = blank; for (var i = 0; i < 128; i++) {line[i] = blank;}
var prompt = "#  Yes  No/?";
var line_john_used = "{John}#used /A.>";
var line_managic = "{John}#used Managic!";

line[0] = "System line 0";
line[1] = "Nuts!| There's#no one here!/p#_let's go home./p|~f0"; //1 (0)
line[2] = "_|It's dead out#there!| *Sigh*/p/p~f9"; //2-4 (1)
line[3] = "Eh, not a bad#turn-out./p"; //5-8 (2)
line[4] = "Boy, what a crowd!|#Here we go!/p"; //5-8 (3)
line[5] = "A full house!|#Thanks, everyone!/p|#OK, let's go!/p";

line[6] = "Meg, Liz, and#Ely exchanged#witty banter!|/}";
line[7] = "Liz shared an#amusing anecdote!|/}";
line[8] = "~&L_it was awful!|#Major letdown!|/}";
line[9] = "Nothing!|/}";
line[10] = "~&cAmazing job!|#Earned /A AP!|/}";
line[11] = "Time's up!|#YOU FAILED!/p/p"
line[12] = "The Warriors swear#they'll do their#best next time!~f1/^|/}"; 
line[13] = "You won over#the audience!/^/p~&o/p/rConcert complete!|#SUCCESS!/^"
+ "/p/rThe band earned#$/A!| All right!/p/p";

line[14] = "The band performed#/A!/p"
+ "/r/1The Warriors#totally got down!/0|/}";
line[16] = "~&cThey sounded#beautiful!";
line[17] = "/1\"Didn't you play#that already?\"";
line[18] = "/1\"Huh?|#That again?!\"";
line[19] = "/1\"You already sang#that song!\"";

line[20] = "The girls acted#out the skit,#\"/A\""
+ "/p/r~&s(DIALOGUE)|#(PLOT)|#(MORAL)/%/}";
line[21] = "~&cIt deeply moved#the audience!";
//line 18 repeats here
line[22] = "/1\"What the-?!|#A third time?\"";
line[23] = "/1\"How many times#must you try it?!\"";
line[24] = "/p/rEarned#/A AP!|/}";

line[25] = "You won over#the audience!/^|~&o"
+ "/p/rSUCCESS!| #The girls gleam#with confidence!/%/p/}";

line[26] = "~&p\"/1Mr. {John},#I'm thirsty!\"/p/x/p";
line[27] = "/A's#Stress#hit#100%!/x/p";

line[28] = "None to use.";
line[29] = "{John} knows#no Managic!";
line[30] = "There's no one#there.";

line[31] = "{John} used#water to quench#/A's thirst!/p/x/p";
line[32] = "{John} gave#/A water,| but she#wasn't thirsty!/p";

line[33] = line_john_used + "Ineffective.";
line[34] = "Can't discard!";
line[35] = "{John} left#/A.";

line[36] = "So smelly!";
line[37] = "{John}#used the Shield#of Grace!/p"
+ ">/1\"_LADY ENGLISH?!|#IMPUDENT STRUMPET\"/0#Shield of Grace#protects {John}!/p/p";
line[38] = "{John}#painted the area.|#How magical!";
line[39] = "{John} ate#the /A.>/B{John}#recovered HP!";
line[40] = line_john_used + "/p/M/p/p";
line[41] = line_john_used + "{John}#attacked with#kindness!"
+ ">Ineffective.";
line[42] = line_john_used + "{John}#\"buttered up\"#the enemy!"
+ ">Ineffective.";
line[43] = "{John}#used /A.|/r"
+ "{John} waved the#S-Cape,| and was#able to flee!/p/p/R/p";
line[44] = line_john_used + "{John} held it up.|#Nothing happened.";
line[45] = "{John}#drank the#/A."
+ ">His hex faded#away!";
line[46] = "{John}#drank the#/A."
+ ">{John} did a lil'#jig! \"Wowza!\"";
line[47] = "{John}#peered through#the " + scr_icon("secret_lens") + "Secret Lens!~s+/p";
line[48] = "{John}#put away the#" + scr_icon("secret_lens") + "Secret Lens!~s-/p";

line[49] = "/A#begins to attack!/p/p";
line[50] = "/A launched#a surprise attack!/p";
line[51] = "{John} met#/A!/p|";

line[52] = "{John}#spoke cleverly!!!|#A terrific play!|~&a/*/p";
line[53] = "{John} attalks!|#\"/A\"|~&a/*/p";
line[54] = "{John} ignored!/p";
line[55] = "{John} ran away!/p|";
line[56] = "{John} ran away,/p#but was blocked!/p";

line[57] = "In the midst of#battle,| {John} can't #remember how!/p";
line[58] = line_managic + "/p/rNICEPLOSION!!!/p~&a/*/p";
line[59] = "{John}#used " + scr_icon("candy") + "Candy./p/r"
+ "{John}#offered a gift!#\"I insist!\"|/*/p";
line[60] = "{John}#used " + scr_icon("nicesword") + "Nicesword./p/r"
+ "{John}#attacked with#kindness!|/*/p";
line[61] = "{John}#used " + scr_icon("butter_sword") + "Butter#Sword./p/r"
+ "{John}#\"buttered up\"#the enemy!|/*/p";

line[62] = "{John}'s words#had no effect!/p";
line[63] = "Dealt#/A damage!/p|";
line[64] = "He wasn't heard!/p|";

line[65] = "Enemy#called /A /B!|#"
+ "/1\"Eek! {John},#help!\"/0/p~&e/s/p";

line[66] = "Enemy#used curse words!|#HEX!|~&e/s/p";
line[67] = "The enemy#/A|~&e/s/p";
line[68] = "/A damage#to /B!/p";
line[69] = "{John}#is unfased!/p";
line[70] = "{John} took#/A damage!/p";

line[71] = "{John} gave up_/p/p/p/p";
line[72] = "/A's Stress#hit 100%!!!/p/p/p/p";
line[73] = "\"Ah! Thanks!\"|#The enemy became#nice to you!/p";

line[74] = "/p{John} has won#the day!/p/p";
line[75] = "/p{John} calmed#the enemy!/p/p"
+ "#Received $/A./p/p";
line[76] = "{John}'s words#won the battle!/p/p#/r"
+ "Popularity#rose by /A!|#Received $/B./p/p";
line[77] = "The enemy became#a SW fan!/p/p Gained#"
+ "/A Popularity#and $/B!/p/p";

line[78] = line_managic + "/p~&h/f/p/r/A{John}#recovered HP!/p";
line[79] = line_managic + "/p/rNICEPLOSION!!!/p/rIneffective now.";
line[80] = line_managic + "/p/r{John}#cured the band's#thirst!~ma/p/x/p";
line[81] = line_managic + "/p/r{John}#made the girls#relax!~mr/p/x";
line[82] = line_managic + "/p/r{John}#made the girls#relax!~mr/p";

line[83] = "{John}#searched around.>";
line[84] = "{John} found#" + scr_icon("indigo_paint") + "Indigo Paint!|#Nice!/p";
line[85] = "~&h/f/p/HA magic field#fulled healed#{John}!/p";
line[86] = "Found /A#Suit!/p#But,| it was#too /B#to wear./p";
line[87] = "{John} found#/A!#|Huzzah!/p";
line[88] = "{John} found#/A,#but has too many#items now.";
line[89] = "What's this?| It's#the " + scr_icon("stars_shoes") + "Star's Shoes!#/pThere's even three#pairs!| Woohoo!~*S";
line[90] = "A wild sea turtle#appeared there!/p/p/T";
line[91] = "Got a bottle!/p#And there's a#photo inside!/p/p~C7/p";
line[92] = "Found zilch.";

line[93] = "{John} can sense#something here,#but it can't#quite be seen!";

line[94] = "/1Bye!";
line[95] = "/1Please come#again.";
line[96] = "/1Thanks!|";

line[97] = "/1The#/A,#right? That OK?" + prompt;
line[98] = "/1The#/A,#right? That OK?" + prompt;
line[99] = "/1The /A,#right? That OK?" + prompt;
line[100] = "/1The /A,#right? That OK?" + prompt;

line[101] = "/1Certainly.|#That plane will#be departing soon.";
line[102] = "/1Sorry, tickets#are sold out now.";
line[103] = "This /A?#" + prompt;
line[104] = "/1See anything?#" + prompt;
line[105] = "Sorry, you don't#have enough cash!";

line[106] = "Hey, it looks like#you've got a#" + scr_icon("banana") + "Banana, customer!"
 + ">I'll just squeeze#the yellow stuff#out of it,| and_"
 + ">Presto!|#Here's your#" + scr_icon("yellow_paint") + "Yellow Paint,#sir!~PY";

line[107] = "Sorry, I need#more /A to#make that!";
line[108] = "/1You're carrying#too much!#Come again!";
line[109] = "/1Sir, you don't#have enough!";
line[110] = "/1Thank you!|#Continue shopping?" + prompt;
line[111] = "/1Sir! You already#have that!";
line[112] = "/1This equipment is#actually worse!";
line[113] = "/1Thank you! I'll#equip your band#with this new#stuff.";
line[114] = "/1You can't afford#that.";
line[115] = "/1Yes, certainly.|#Enjoy!/p/p";
line[116] = "/1Have a good#night!";
line[117] = "/1What else?";
line[118] = "/1Very well.|#Please stay again!";

line[119] = "Move to where you#think the turtle#will come and#press A Button!";
line[120] = "Gotcha!/p#{John} took the#" + scr_icon("crystal_ball") + "Crystal Ball from#the turtle's maw!/p~I9";
line[121] = "Darn./p#But don't lose#heart!";

line[122] = "~&t/1Good morning!|#Sleep well?/p" + prompt;
line[123] = "But the enemy#can't understand#him!/p";
line[124] = "But {John}#can't understand#him!/p";

line[125] = "{John} found#a pile of money!#It's $/A!";
line[126] = "{John}#drank the#/A."
+ ">{John} danced#a lil' jig!/p~&h/f~m0/p#Recovered 20 MP!";
line[127] = "{John}#drank the#/A./p/f~m1/p"
+ ">{John}#recovered all of#his MP!| Cheezy!";

line[128] = "{John} put on#the /A Suit.";
line[129] = "{John} took off#the /A Suit.";
line[130] = "{John} found#the /A Suit!"
+ ">It looked too#/B to#wear, but he#took it anyway.";


line[131] = "{John} found#a " + scr_icon("banana") + "Yummy Banana!#Mmm, delicious!";

line[132] = "The curse on#{John} is too#strong for it!";