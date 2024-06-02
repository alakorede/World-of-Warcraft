local app = select(2,...);

local expansionID = 4;

--Name, Description, Label, classMask, patchID, sources, requiredFact
----classMask:    (35=Plate, 68=Mail, 3592=Leather, 400=Cloth
local db = {
--SoO Extra Sets
{"Kor'kron Dark Shaman","","Siege of Orgrimmar Drop Set",64,50300,{57073,57074,57075,57076,57077,57078,57079,57080,}},

--Mogu'shan Vaults Plate
{"Everbright","","Mogu'shan Vaults",35,50003,{54377,54375,54378,54373,54376,54372,54374,54371,}},
{"Elder Tortoiseshell","","Mogu'shan Vaults",35,50003,{54482,54481,54480,54477,54476,54479,54478,54474,}},
{"Dawnblade's","","Mogu'shan Vaults",35,50003,{54422,54424,54429,54426,54427,54430,54425,54428,}},
{"Cliffbreaker","","Mogu'shan Vaults",35,50003,{54345,54347,54348,54349,54350,54351,54352,54353,}},
--Mogu'shan Vaults Mail
{"Ordon Legend-Keeper","","Mogu'shan Vaults",68,50003,{54380,54381,54382,54383,54384,54385,54386,54387,}},
{"Earthen Harmony","","Mogu'shan Vaults",68,50003,{44021,44175,44185,44251,45320,46079,46223,46262,}},
{"Empyreal Focus","","Mogu'shan Vaults",68,50003,{44134,44171,44180,44226,44253,44288,45981,46321,}},
{"Crimsonscale","","Mogu'shan Vaults",68,50003,{54388,54389,54390,54391,54392,54393,54394,54395,}},
--Mogu'shan Vaults Leather
{"Imperion","","Mogu'shan Vaults",3592,50003,{54488,54485,54490,54489,54487,54486,54484,54483,}},
{"Fire-Chanter","","Mogu'shan Vaults",3592,50003,{54344,54341,54343,54337,54338,54339,54340,54342,}},
{"Cranefeather","","Mogu'shan Vaults",3592,50003,{54406,54407,54408,54409,54410,54411,54412,54413,}},
--Mogu'shan Vaults Cloth
{"Amaranthine","","Mogu'shan Vaults",400,50003,{54444,54442,54446,54440,54441,54445,54447,54443,}},
{"Cloudscorcher","","Mogu'shan Vaults",400,50003,{54363,54364,54365,54366,54367,54368,54369,54370,}},
{"Jade Dust","","Mogu'shan Vaults",400,50003,{54435,54437,54433,54434,54439,54432,54438,54436,}},

--Crafted Plate
--Crafted Mail
--Crafted Leather
--Crafted Cloth


--Dungeon Plate
{"Lightning Rod","","Dungeon (MoP)",35,50002,{48525,48531,48530,48526,48528,48529,48527,48524,}},
{"Masterwork Lightsteel","","Dungeon (MoP)",35,50002,{42216,42215,42220,42217,42221,42214,42219,42218,}},
{"Ghost-Forged","","Dungeon (MoP)",35,50002,{42210,42213,42209,42208,42212,42211,42206,42207,}},

--Dungeon Mail
{"Swarmcall","","Dungeon (MoP)",68,50002,{40708,40737,40745,40751,40758,40760,40763,40962,}},
{"Tidehunter","","Dungeon (MoP)",68,50002,{45274,40704,40710,40741,40746,40752,40979,42118,}},
{"Stormbrew","","Dungeon (MoP)",68,50002,{46343,46344,46345,46346,46347,46348,46349,46350,}},

--Dungeon Leather
{"Hozen-Crafted","","Dungeon (MoP)",3592,50002,{46374,46368,46367,46372,46370,46371,46369,46373,}},
{"Doubtridden","","Dungeon (MoP)",3592,50002,{40707,40735,40756,40764,40929,40982,41000,41295,}},
{"Darkbinder","","Dungeon (MoP)",3592,50002,{40701,40709,40754,40961,40973,40988,41290,42116,}},
{"Forgotten","","Dungeon (MoP)",3592,50002,{46359,46365,46366,46361,46363,46362,46364,46360,}},

--Dungeon Cloth
{"Firewool","","Dungeon (MoP)",400,50002,{46375,46376,46377,46378,46379,46380,46381,46382,}},
{"Darkened","","Dungeon (MoP)",400,50002,{40703,40736,40749,40761,{40964,41833},40970,40985,41006,}},
{"Fermenting","","Dungeon (MoP)",400,50002,{40742,40755,40924,40971,40987,40998,41289,{45141,41841},}},

--Alt Dungeon Set
{"Koegler","","Dungeon Alt (MoP)",400,50002.5,{45671,45679,45694,45703,45708,45719,}},

--Leveling Plate
{"Glass Lake","","Leveling (MoP)(Set 1)",35,50001,{40594,40603,40612,40621,40630,40639,40648,40630,}},
{"Brick","","Leveling (MoP)(Set 1)",35,50001,{41589,41590,41592,41587,41591,41593,41588,41595,}},
{"Narsong","","Leveling (MoP)(Set 1)",35,50001,{41094,41103,41112,41121,41130,41139,41148,41157,}},

{"Goldtalon","","Leveling (MoP)(Set 2)",35,50001.5,{42710,42719,42728,42737,42746,42755,42764,42773,}},
{"Wasteland","","Leveling (MoP)(Set 2)",35,50001.5,{42341,42350,42359,42368,42377,42386,42395,42404,}},
{"Highpeak","","Leveling (MoP)(Set 2)",35,50001.5,{41746,41747,41748,41749,41750,41751,41752,41754,}},
{"Serenity","","Leveling (MoP)(Set 2)",35,50001.5,{41871,41880,41889,41898,41907,41916,41925,41934,}},

--Leveling Mail
{"Earthmover","","Leveling (MoP)(Set 1)",68,50001,{42709,42718,42727,42736,42745,42754,42763,42772,}},
{"Willow","","Leveling (MoP)(Set 1)",68,50001,{41649,41650,41651,41652,41653,41654,41655,41656,}},
{"Dreaming Spirit","","Leveling (MoP)(Set 1)",68,50001,{41870,41879,41888,41897,41906,41915,41924,41933,}},
{"Wasteland","","Leveling (MoP)(Set 1)",68,50001,{42340,42349,42358,42367,42376,42385,42394,42403,}},

{"Faded Forest","","Leveling (MoP)(Set 2)",68,50001.5,{41241,41196,41205,41214,41223,41232,41250,41259,}},
{"Deepwild","","Leveling (MoP)(Set 2)",68,50001.5,{41093,41102,41111,41120,41129,41138,41147,41156,}},
{"Jade Witch","","Leveling (MoP)(Set 2)",68,50001.5,{40593,40602,40611,40620,40629,40638,40647,40656,}},

--Leveling Leather
{"Swamp","","Leveling (MoP)(Set 1)",3592,50001,{41665,41666,41667,41668,41669,41670,41671,41672,}},
{"Blackthicket","","Leveling (MoP)(Set 1)",3592,50001,{40592,40601,40610,40619,40628,40637,40646,40655,}},
{"Faded Forest","","Leveling (MoP)(Set 1)",3592,50001,{41240,41195,41204,41213,41222,41231,41249,41258,}},
{"Mortbreath","","Leveling (MoP)(Set 1)",3592,50001,{41092,41101,41110,41119,41128,41137,41146,41155,}},

{"Sapfly","","Leveling (MoP)(Set 2)",3592,50001.5,{42802,42811,42820,42829,42838,42847,42856,42865,}},
{"Wasteland","","Leveling (MoP)(Set 2)",3592,50001.5,{42339,42348,42357,42366,42375,42384,42393,42402,}},
{"Mistlurker","","Leveling (MoP)(Set 2)",3592,50001.5,{42708,42717,42726,42735,42744,42753,42762,42771,}},
{"Mushan","","Leveling (MoP)(Set 2)",3592,50001.5,{41869,41878,41887,41896,41905,41914,41923,41932,}},

--Leveling Cloth
{"Nayeli","","Leveling (MoP)(Set 1)",400,50001,{41091,41100,41109,41118,41127,41136,41145,41154,}},
{"Faded Forest","","Leveling (MoP)(Set 1)",400,50001,{41239,41194,41203,41212,41221,41230,41248,41257,}},
{"Ambermist","","Leveling (MoP)(Set 1)",400,50001,{40591,40600,40609,40618,40627,40636,40645,40654,}},

{"Brewer's","","Leveling (MoP)(Set 2)",400,50001.5,{41657,41658,41659,41660,41661,41662,41663,41664,}},
{"Mistborne","","Leveling (MoP)(Set 2)",400,50001.5,{42707,42716,42725,42734,42743,42752,42761,42770,}},
{"Windwool","","Leveling (MoP)(Set 2)",400,50001.5,{41823,41824,{41825,41890},41826,41827,41828,41829,41830,}},

--Plate pandaren set
{"Spring","","Pandaren",35,50000,{37513,37516,37519,37523,37526,37529}},
{"Summer","","Pandaren",35,50000,{38067,38076,38079,38070,38073,38064}},
{"Autumn","","Pandaren",35,50000,{38096,38093,38102,38090,38099,}},

--Mail pandaren set
{"Summer","Shared with Leather, but won't unlock both types at once.","Pandaren",68,50000,{38069,38063,38075,38078,38072,38066,}},
{"Autumn","Shared with Leather, but won't unlock both types at once.","Pandaren",68,50000,{38098,38092,38095,38101,38089,}},
{"Winter","Shared with Leather, but won't unlock both types at once.","Pandaren",68,50000,{37512,37515,37518,37522,37525,37528}},

--Leather pandaren set
{"Summer","Shared with Mail, but won't unlock both types at once.","Pandaren",3592,50000,{38069,38063,38075,38078,38072,38066,}},
{"Autumn","Shared with Mail, but won't unlock both types at once.","Pandaren",3592,50000,{38098,38092,38095,38101,38089,}},
{"Winter","Shared with Mail, but won't unlock both types at once.","Pandaren",3592,50000,{37512,37515,37518,37522,37525,37528}},

--Cloth pandaren set
{"Trainee's","","Pandaren",400,50000,{36895,36894,39119,39104}},
{"Spring","","Pandaren",400,50000,{38100,38091,38097,38094,38088,}},
{"Summer","","Pandaren",400,50000,{38071,38062,38074,38077,38065,38068,}},
{"Winter","","Pandaren",400,50000,{37511,37514,37517,37521,37524,37527,}},
};

--Used to add alternate appearances to blizzard sets
--SetID, OriginalSourceID, AlternateApperanceID
local altAppearancesDB = {
{421,52387,61896}, --Siege of Orgrimmar, Mail/Shaman, Chest/Robe (Normal)
{422,52632,61898}, --Siege of Orgrimmar, Mail/Shaman, Chest/Robe (Mythic)
{423,52273,61897}, --Siege of Orgrimmar, Mail/Shaman, Chest/Robe (LFR)

{557,52453,57092}, --Siege of Orgrimmar, Leather/Druid, Chest/Robe (Normal)

{425,51060,51055}, --Throne of Thunder, Mail/Shaman, Chest/Robe (Heroic)
{424,50062,50057}, --Throne of Thunder, Mail/Shaman, Chest/Robe (Normal)
{426,50436,50431}, --Throne of Thunder, Mail/Shaman, Chest/Robe (LFR)

{510,50015,49631}, --Throne of Thunder, Leather/Monk, Chest/Robe (Normal)
{512,50389,50218}, --Throne of Thunder, Leather/Monk, Chest/Robe (LFR)
{511,51013,50842}, --Throne of Thunder, Leather/Monk, Chest/Robe (Heroic)

{338,44975,44970}, --Heart of Fear, Mail/Shaman, Chest/Robe (Heroic)
{427,43647,46990}, --Heart of Fear, Mail/Shaman, Chest/Robe (Normal)
{428,44527,44697}, --Heart of Fear, Mail/Shaman, Chest/Robe (LFR)

{579,44556,46685}, --Heart of Fear, Plate/DK, Chest/Robe (LFR)
{578,43676,46992}, --Heart of Fear, Plate/DK, Chest/Robe (Normal)
{580,44780,46654}, --Heart of Fear, Plate/DK, Chest/Robe (Heroic)

{277,43265,47810}, --Season 12, Plate/Paladin, Chest/Robe (Gladiator)
{196,43002,48776}, --Season 12, Plate/Paladin, Chest/Robe (Honor)
}

--Legion alt appearances at 35559

function AddToCollection()
  for i = 1, #db do
    local data = {};
    data.classMask = db[i][4];
    data.note = db[i][2];
    data.label = db[i][3];
    data.uiOrder = i;
    data.name = db[i][1];
    data.patchID = db[i][5];
    data.requiredFaction = db[i][7];
    data.favorite = false;
    data.expansionID = expansionID;
    if db[i][8] == true then
      data.noLongerObtainable = true;
    end
    
    data.setID = (expansionID + 1) * app.SetsFrame.ExpandedID + db[i][6][1];
    
    data.sources = {};
    for j=1,#db[i][6] do 
      if type(db[i][6][j]) == "table" then
        if not data.altSources then data.altSources = {}; data.altSourceNumbers = {}; end
        data.sources[db[i][6][j][1]] = false--C_TransmogCollection.GetSourceInfo(db[i][6][j][1]).isCollected;
        data.altSources[db[i][6][j][1]] = {db[i][6][j][1], db[i][6][j][2]};
        data.altSourceNumbers[db[i][6][j][1]] = 1;
      else
        data.sources[db[i][6][j]] = false--C_TransmogCollection.GetSourceInfo(db[i][6][j]).isCollected;
      end
    end
    
    app.SetsFrame.AddSetToTables(data);
  end
  
  for i = 1, #altAppearancesDB do
    app.SetsFrame.AddAltAppearancesToTables(altAppearancesDB[i][1],altAppearancesDB[i][2],altAppearancesDB[i][3]);
  end
end

app.ExpandedCallbacks[expansionID] = AddToCollection;
app.altAppearancesDB[expansionID] = altAppearancesDB;
--do
--  for i = 1, #altAppearancesDB do
--    app.ExpandedAltAppearances[altAppearancesDB[i][1]] = {altAppearancesDB[i][2],altAppearancesDB[i][3]};
--  end
--end

--data:
----classMask:    yes (simply use 35=Plate, 68=Mail, 3592=Leather, 400=Cloth)
----collected:    no
----description:  yes
----expansionID:  no (file dependent can hardcode)
----favorite:     no
----hidden...:    no
----label:        yes (source i.e. dungeon/leveling/islands)
----limitedTime:  no
----name:         yes
----patchID:      yes (for sorting, 80300 = patch 8.3)
----requiredFact: yes
----setID:        yes (auto gened)
----uiOrder:      yes (might just always put 0, for sorting)
----sources:      myAddition, list of items in the set