local app = select(2,...);

local expansionID = 10;
--start of nerubian raid -- 91493
--earthen cosmetic 92566

--Name, Description, Label, classMask, patchID, sources, requiredFact, noLongerObtainable
----classMask:    (35=Plate, 68=Mail, 3592=Leather, 400=Cloth)
local db = {
--Siren Isle set
{"Tidecrasher",nil,"Siren Isle",35,110007,{231312,231314,231288,231309,231313,231310,231315,231311,231654,}},
{"Hydraflayer",nil,"Siren Isle",68,110007,{231334,231336,231292,231331,231335,231332,231337,231333,231653,}},
{"Bloodscout",nil,"Siren Isle",3592,110007,{99956,231328,231291,231324,231329,231325,231330,231326,231652,}},
{"Rune Scribe",nil,"Siren Isle",400,110007,{231321,{231319,231323},{231289,231290},231316,{231320,231650},231317,231322,231318,}},

--Cruise
{"Southsea Cruise",nil,"Siren Isle, Cruise",0,110007,{231391,{231299,231300},{231389,231390},231388,}},
{"Paradise Beach",nil,"Siren Isle, Cruise",0,110007,{231395,{231301,24223},{231393,231394},231392,}},
{"Salvage Rig",nil,"Siren Isle, Cruise",0,110007,{231398,{231302,231303},231397,231396,}},
{"Sun-Soaked",nil,"Siren Isle, Cruise",0,110007,{231426,231260,231307,231403,231402,}},

--Siren Isle Pirate Garb
{"Bilgeswabby",nil,"Siren Isle, Pirate Garb",0,110007,{96243,{96271,231356,231386},{231295,231296},231338,231339,231413,}},
{"Pilfered Mariner",nil,"Siren Isle, Pirate Garb",0,110007,{231298,{96273,231358,231384},231348,96235,{231342,231387},231347,231412,}},
{"Salt-Stained Sea",nil,"Siren Isle, Pirate Garb",0,110007,{231297,{96274,231357,231385},231349,231345,{231343,231350},231346,231414,}},

{"Rusty Bruiser",nil,"Siren Isle, Rusty Bruiser",0,110007,{231304,231400,231401,231399,231424,231308}},

--Dorn Defender (plate)
{"Earthen Landlubber","Siren Isle","Dorn Defender Armaments",35,110007,{225040,225042,225037,225043,225041,225038,225044,225039,225036,}},
{"Kyros's Spare",nil,"Dorn Defender Armaments",35,110000,{225074,225079,225075,225080,225078,225076,225081,225077,219034,}},
{"Sedimentary",nil,"Dorn Defender Armaments",35,110000,{220537,220539,220534,220540,220538,220535,220541,220536,}},
--Algari (mail)
{"Earthen Islander","Siren Isle","Algari Chainmail",68,110007,{225031,225033,225028,225034,225032,225029,225035,225030,225027,}},
{"Aevery's Spare",nil,"Algari Chainmail",68,110000,{225069,225071,225066,225072,225070,225067,225073,225068,}},
{"Chitinoid",nil,"Algari Chainmail",68,110000,{220529,220531,220526,220532,220530,220527,220533,220528,220509,}},
--Coreway Regalia (leather)
{"Earthen Deckhand","Siren Isle","Coreway Regalia",3592,110007,{225045,225024,225020,225025,225023,225021,225026,225022,225019,}},
{"Azra's Spare",nil,"Coreway Regalia",3592,110000,{225060,225065,225064,225062,225061,225058,225063,225059,}},
{"Lockstitch",nil,"Coreway Regalia",3592,110000,{220521,220523,220518,220524,220522,220519,220525,220520,220508,}},
--Threads of Awakening (cloth)
{"Earthen Scallywag","Siren Isle","Threads of Awakening",400,110007,{225014,225016,225011,225017,225015,225012,225018,225013,225010,}},
{"Nisa's Spare",nil,"Threads of Awakening",400,110000,{225050,225056,225054,225049,225055,225052,225051,225053,225057,}},
{"Alighted",nil,"Threads of Awakening",400,110000,{220513,220515,220510,220516,220514,220511,220517,220512,}},

--Underground Gear (Delver's
{"Timely Tourist's","","Underground Gear",35,110005,{222898,222900,222895,222901,222899,222896,222902,222897,222878,}},
{"Algari Competitor's","","Underground Gear",35,110000,{198892,198894,198889,198895,198893,198890,198896,198891,}},
{"Begrimed","","Underground Gear",35,110000,{218521,218523,218518,218524,218522,218519,218525,218520,}},

{"Timely Tourist's","","Underground Gear",68,110005,{222906,222908,222903,222909,222907,222904,222910,222905,}},
{"Algari Competitor's","","Underground Gear",68,110000,{198883,198884,198882,198885,198886,198881,198888,198887,}},
{"Pierced","","Underground Gear",68,110000,{218513,218515,218510,218516,218514,218511,218517,218512,}},

{"Timely Tourist's","","Underground Gear",3592,110005,{222914,222916,222911,222917,222915,222912,222918,222913,}},
{"Distressed","","Underground Gear",3592,110000,{218505,218507,218502,218508,218506,218503,218509,218504,}},
{"Algari Competitor's","","Underground Gear",3592,110000,{198875,198876,198874,198877,198878,198873,198880,198879,}},

{"Timely Tourist's","","Underground Gear",400,110005,{222922,222924,222919,222925,222923,222920,222926,222921,222877,}},
--{"Dark Agent's","","Underground Gear",400,110000,{219168,219177,{219160,219286},219180,219172,219195,219183,219166,219187,}},
{"Moth-Ridden","","Underground Gear",400,110000,{218497,218499,{220464,218494},218500,218498,218495,218501,218496,220491,}},
{"Algari Competitor's","","Underground Gear",400,110000,{198868,198865,{198870,219628},198871,198864,198866,198867,198869,198872,}},

--hallowfall cloth dark/red
{"Consecrated","","Hallowfall Gear",400,110000,{219609,219612,219610,219607,219611,219599,219602,219598,}},

--earthen attire
{"Earthen","Protector","Earthen Attire",0,110000,{220301,220306,220302,220304,220307,220305,220303},nil,nil,{[3]=true,[34]=true,[84]=true,[85]=true}},
{"Earthen","Stoneward","Earthen Attire",0,110000,{220298,220295,220297,220300,220299,220296},nil,nil,{[3]=true,[34]=true,[84]=true,[85]=true}},
{"Earthen","Adventurer","Earthen Attire",0,110000,{220289,220292,220291,220294,220290,220293},nil,nil,{[3]=true,[34]=true,[84]=true,[85]=true}},
{"Earthen","Smith","Earthen Attire",0,110000,{222962,220314,220316,220318,220317,220315},nil,nil,{[3]=true,[34]=true,[84]=true,[85]=true}},
{"Earthen","Merchant","Earthen Attire",0,110000,{220308,220311,220322,220313,220312,220321},nil,nil,{[3]=true,[34]=true,[84]=true,[85]=true}},
{"Earthen","Gatherer","Earthen Attire",0,110000,{218092,220323,220319,220310,220325,220324,220309},nil,nil,{[3]=true,[34]=true,[84]=true,[85]=true}},

};

--"Wrath of the Lich King: PvP" 20th anniversary s6 recolors
--4144 leather 
--4145 plate (green)
--4146 Mail
--4147 plate (purple)
--4148 Cloth

--"The Burning Crusade: Dungoen" 20th anniversary recolors
--4125 leather tw blue
--4126 leather red
--4127 leather brown
--4128 leather purple
--4129 mail tw brown
--4130 mail blue
--4131 mail purple
--4132 mail red
--4133 plate tw purple
--4134 plate red
--4135 plate dungeon silver
--4136 plate silver
--4137 cloth 1 tw blue
--4138 cloth 1 purple
--4139 cloth 1 red
--4140 cloth 1 white
--4141 cloth 2 tw brown
--4142 cloth 2 green
--4143 cloth 2 red

--[setID] = "label"
local altLabelDB = {
[3877] = "Arathi Attire",
[3876] = "Arathi Attire",
[3518] = "Arathi Attire",
[4227] = "Arathi Attire",
[4228] = "Arathi Attire",
[4149] = "Underground Gear",
[4150] = "Underground Gear",
[4151] = "Underground Gear",
[4152] = "Underground Gear",
[4175] = "Plunderstorm",
[3875] = "Plunderstorm",
}
--/script printTable(C_TransmogSets.GetSetInfo(3875))
local altNoteDB = {
[3877] = "Spreading the Light",
[3876] = "Hallowfall Quests",
[3518] = "Hallowfall Arathi Renown";
[4227] = "Siren Isle",
[4228] = "Siren Isle",
[4175] = "Plunderstorm 2025",
[3875] = "Trading Post",
}

local altPatchID = {
[3518] = 110007,
[3875] = 110007,
[3891] = 110007,--coreway Regalia
[3890] = 110007,--algari Chainmail
[3889] = 110007,--dorn defender armraments
[3892] = 110007,--threads of awakening
}

--Used to add alternate appearances to blizzard sets
--SetID, OriginalSourceID, AlternateApperanceID
local altAppearancesDB = {
{4175,230261,230326},--Plunderlord's Stormridden Finery, Eyepatch

--20th Anniversary
{3870,220739,220756},--Druid Chest
{3873,219971,230286},--Warlock chest
{3868,220383,230285},--Mage chest
{3865,220658,230287},--Priest chest
{3871,220115,230290},--Paladin robeless pants
{3866,220797,230288},--Shaman robes/pants
--11.0 ends at 94162

--DK 91493, helms 91641
{3719,222558,222562},--Mythic Shoulders
{3719,222551,222555},--Mythic Belt
{3719,222572,222576},--mythic helm
{3711,194510,222560},--Normal SHoulders
{3711,194509,222553},--Normal belt
{3711,194512,222574},--normal helm
{3720,222556,222559},--lfr shoulders
{3720,222549,222552},--lfr belt
{3720,222570,222573},--lfr helm
{3835,217715,217717},--Elite shoulders
{3835,217723,217725},--Elite belt
{3835,217699,217701},--elite helm
{3822,217714,217716},--glad shoulders
{3822,217722,217724},--glad belt
{3822,217698,217700},--glad helm
{3718,222557,222561},--heroic shoudlers
{3718,222550,222554},--heroic belt
{3718,222571,222575},--heroic helm

--Druid 91556
{3726,222102,222106},--mythic helm
{3726,222088,222092},--mythic shoulders
{3726,222081,222085},--mythic belt
{3727,194566,222104},--norm helm
{3727,194564,222090},--norm shoulders
{3727,194563,222083},--norm belt
{3725,222101,222105},--heroic helm
{3725,222087,222091},--heroic shoulders
{3725,222080,222084},--heroic belt
{3728,222100,222103},--lfr helm
{3728,222086,222089},--lfr shoulders
{3728,221275,222082},--lfr belt
{3824,217166,217168},--glad helm
{3824,217182,217184},--glad shoulders
{3824,217190,217192},--glad belt
{3837,217167,217169},--elite helm
{3837,217183,217185},--elite shoulders
{3837,217191,217193},--elite belt

--DH 91820, gloves 91967
{3722,222027,222031},--mythic helm
{3722,222013,222017},--mythic shoulders
{3722,222006,222010},--mythic belt
{3722,222034,222038},--mythic gloves
{3723,194575,222029},--normal helm
{3723,194573,222015},--normal shoulders
{3723,194572,222008},--normal belt
{3723,194576,222036},--normal gloves
{3836,217243,217245},--elite helm
{3836,217259,217261},--elite shoulders
{3836,217267,217269},--elite belt
{3836,217235,217237},--elite gloves
{3721,222026,222030},--heroic helm
{3721,222012,222016},--heroic shoulders
{3721,222005,222009},--heroic belt
{3721,222033,222037},--heroic gloves
{3823,217242,217244},--glad helm
{3823,217258,217260},--glad shoulders
{3823,217266,217268},--glad belt
{3823,217234,217236},--glad gloves
{3724,222025,222028},--lfr helm
{3724,222011,222014},--lfr shoulders
{3724,222004,222007},--lfr belt
{3724,222032,222035},--lfr gloves

--Paladin 92027
{3747,194503,222661},--normal helm
{3747,194501,222647},--normal shoulders
{3746,222659,222663},--mythic helm
{3746,222645,222649},--mythic shoulders
{3841,217775,217777},--elite helm
{3841,217791,217793},--elite shoulders
{3745,222658,222662},--heroic helm
{3745,222644,222648},--heroic shoulders
{3828,217774,217776},--glad helm
{3828,217790,217792},--glad shoulders
{3748,222657,222660},--lfr helm
{3748,222643,222646},--lfr shoulders

--Evoker 92093
{3731,194539,222333},--normal helm
{3731,194537,222319},--normal shoulders
--{3731,194536,222312},--normal belt
{3825,217470,217472},--glad helm
{3825,217486,217488},--glad shoulders
--{3825,217494,217496},--glad belt
{3729,222330,222334},--heroic helm
{3729,222316,222320},--heroic shoulders
--{3729,222309,222313},--heroic belt
{3732,222329,222332},--lfr helm
{3732,222315,222318},--lfr shoulders
--{3732,222308,222311},--lfr belt
{3838,217471,217473},--elite helm
{3838,217487,217489},--elite shoulders
--{3838,217495,217497},--elite belt
{3730,222331,222335},--mythic helm
{3730,222317,222321},--mythic shoulders
--{3730,222310,222314},--mythic belt

--Monk 92171
{3742,222181,222185},--mythic helm
{3742,222167,222171},--mythic shoulders
{3743,194557,222183},--normal helm
{3743,194555,222169},--normal shoulders
{3744,222179,222182},--lfr helm
{3744,222165,222168},--lfr shoulders
{3840,217319,217321},--elite helm
{3840,217335,217337},--elite shoulders
{3741,222180,222184},--heroic helm
{3741,222166,222170},--heroic shoulders
{3827,217318,217320},--glad helm
{3827,217334,217336},--glad shoulders

--Priest 92259, gloves 92325, chest 92397, shoulders 92544 
{3749,221866,221870},--heroic helm
{3749,221852,221856},--heroic shoulders
{3749,221845,221849},--heroic belt
{3749,221873,221877},--heroic gloves
{3749,221887,221889},--heroic chest
{3751,194593,221869},--normal helm
{3751,194591,221855},--normal shoulders
{3751,194590,221848},--normal belt
{3751,194594,221876},--normal gloves
{3751,194596,221888},--normal chest
{3829,217014,217016},--glad helm
{3829,217030,217032},--glad shoulders
{3829,217038,217040},--glad belt
{3829,217006,217008},--glad gloves
{3829,216990,216992},--glad chest
{3750,221867,221871},--mythic helm
{3750,221853,221857},--mythic shoulders
{3750,221846,221850},--mythic belt
{3750,221874,221878},--mythic gloves
{3750,229638,221890},--mythic chest
{3842,217015,217017},--elite helm
{3842,217031,217033},--elite shoulders
{3842,217039,217041},--elite belt
{3842,217007,217009},--elite gloves
{3842,216991,216993},--elite chest
{3752,221865,221868},--lfr helm
{3752,221851,221854},--lfr shoulders
{3752,221844,221847},--lfr belt
{3752,221872,221875},--lfr gloves
--{3752,221886,},--lfr chest --missing

--Warrior 92403
{3767,194494,222740},--normal helm
{3767,194492,222726},--normal shoulders
{3845,217851,217853},--elite helm
{3845,217867,217869},--elite shoulders
{3768,222736,222739},--lfr helm
{3768,222722,222725},--lfr shoulders
{3766,222738,222742},--mythic helm
{3766,222724,222728},--mythic shoulders
{3832,217850,217852},--glad helm
{3832,217866,217868},--glad shoulders
{3765,222737,222741},--heroic helm
{3765,222723,222727},--heroic shoulders

--Hunter 92475
{3735,194530,222412},--normal helm
{3735,194528,222398},--normal shoulders
{3839,217547,217549},--elite helm
{3839,217563,217565},--elite shoulders
{3736,222408,222411},--lfr helm
{3736,222394,222397},--lfr shoulders
{3734,222410,222414},--mythic helm
{3734,222396,222400},--mythic shoulders
{3826,217546,217548},--glad helm
{3826,217562,217564},--glad shoulders
{3733,222409,222413},--heroic helm
{3733,222395,222399},--heroic shoulders

--Rogue 92745, back 93245
{3755,194546,222244},--normal shoulders
{3753,222241,222245},--heroic shoulders
{3843,217411,217413},--elite shoulders
{3756,222240,222243},--lfr shoulders
{3754,222242,222246},--mythic shoulders
{3830,217410,217412},--glad shoulders

--Shaman 92802 (pvp sets have robe and chest vars)
{3759,194521,222495},--normal helm
{3759,194519,222481},--normal shoulders
{3758,222493,222497},--mythic helm
{3758,222479,222483},--mythic shoulders
{3844,217623,217625},--elite helm
{3844,217639,217641},--elite shoulders
{3844,217599,221645},--elite robe
{3757,222492,222496},--heroic helm
{3757,222478,222482},--heroic shoulders
{3760,222491,222494},--lfr helm
{3760,222477,222480},--lfr shoulders
{3831,217622,217624},--glad helm
{3831,217638,217640},--glad shoulders
{3831,217598,221644},--glad robe

--Mage 92965, gloves 93115, chest 93121
{3738,221788,221792},--mythic helm
{3738,221774,221778},--mythic shoulders
{3738,221809,221813},--mythic chest
{3738,221767,221771},--mythic waist
{3738,221795,221799},--mythic gloves
{3739,194602,221790},--normal helm
{3739,194600,221776},--normal shoulders
{3739,194605,221811},--normal chest
{3739,194599,221769},--normal waist
{3739,194603,221797},--normal gloves
{3737,221787,221791},--heroic helm
{3737,221773,221777},--heroic shoulders
{3737,221808,221812},--heroic chest
{3737,221766,221770},--heroic waist
{3737,221794,221798},--heroic gloves
{3821,216938,216940},--glad helm
{3821,216954,216956},--glad shoulders
{3821,216914,216916},--glad chest
{3821,216962,216964},--glad waist
{3821,216930,216932},--glad gloves
{3740,221786,221789},--lfr helm
{3740,221772,221775},--lfr shoulders
{3740,221807,221810},--lfr chest
{3740,221765,221768},--lfr waist
{3740,221793,221796},--lfr gloves
{3834,216939,216941},--elite helm
{3834,216955,216957},--elite shoulders
{3834,216915,216917},--elite chest
{3834,216963,216965},--elite waist
{3834,216931,216933},--elite gloves

--Warlock 93037, waists are duplicate appIDs (june 30th)
{3763,194584,221950},--normal helm
{3763,194582,221936},--normal shoulders
--{3763,194581,221929},--normal waist
{3846,217091,217093},--elite helm
{3846,217107,217109},--elite shoulders
--{3846,217115,217117},--elite waist
{3762,221948,221952},--mythic helm
{3762,221934,221938},--mythic shoulders
--{3762,221927,221931},--mythic waist
{3833,217090,217092},--glad helm
{3833,217106,217108},--glad shoulders
--{3833,217114,217116},--glad waist
{3761,221947,221951},--heroic helm
{3761,221933,221937},--heroic shoulders
--{3761,221926,221930},--heroic waist
{3764,221946,221949},--lfr helm
{3764,221932,221935},--lfr shoulders
--{3764,221925,221928},--lfr waist

--Delver's Cloth 91102
{3640,193881,218291},--Robe version (underground teal)
--{,220464,218494},--Robe version (?? green)
{4152,220209,219286},--Robe version (?? red)
--{,198870,219628},--Robe version (?? yellow)

--Hallowfall Cloth 85070
{3658,219899,219790},--robes (world red)
{3881,218222,220133},--robes (delves blue)
--{,,219610},--robes (?? dark/red) --chest only missing
{3699,216830,216862},--chest only (s1 aspirant yellow)

--Educator's Knowledge cosmetic 84622
{3522,218091,217956},--chest red
{3523,218090,217955},--chest purple
{3524,218089,217954},--chest green
{3525,218088,217953},--chest blue
{3526,218087,217952},--chest black
}

function AddToCollection()
  for i = 1, #db do
    if (C_TransmogCollection.GetSourceInfo(db[i][6][1])) then --checks if this is an actual set. Only needed for checking sets that are only viewable on the ptr but not yet live.
      local data = {};
      data.classMask = db[i][4];
      data.note = db[i][2];
      data.label = db[i][3];
      data.uiOrder = #db - i;
      data.name = db[i][1];
      data.patchID = db[i][5];
      data.requiredFaction = db[i][7];
      data.favorite = false;
      data.expansionID = expansionID;
      if db[i][8] == true then
        data.noLongerObtainable = true;
      end
      data.raceID = db[i][9];
      
      data.setID = (expansionID + 1) * app.SetsFrame.ExpandedID + db[i][6][1];
      
      data.sources = {};
      for j=1,#db[i][6] do 
        if type(db[i][6][j]) == "table" then
          if not data.altSources then data.altSources = {}; data.altSourceNumbers = {}; end
          local isKnown = false;
          --for a,b in pairs(C_TransmogCollection.GetAllAppearanceSources(C_TransmogCollection.GetSourceInfo(db[i][6][j][1]).visualID)) do
          for a,b in pairs(C_TransmogCollection.GetAllAppearanceSources(app.AppID(db[i][6][j][1]))) do
            if C_TransmogCollection.PlayerKnowsSource(b) then
              isKnown = true;
              break;
            end
          end
          data.sources[db[i][6][j][1]] = isKnown;
          data.altSources[db[i][6][j][1]] = {}
          for k=1,#db[i][6][j] do
            app.AppID(db[i][6][j][k])
            tinsert(data.altSources[db[i][6][j][1]], db[i][6][j][k]);
          end
          --data.altSources[db[i][6][j][1]] = {db[i][6][j][1], db[i][6][j][2]};
          data.altSourceNumbers[db[i][6][j][1]] = 1;
        else
          local isKnown = false;
          --for a,b in pairs(C_TransmogCollection.GetAllAppearanceSources(C_TransmogCollection.GetSourceInfo(db[i][6][j]).visualID)) do
          for a,b in pairs(C_TransmogCollection.GetAllAppearanceSources(app.AppID(db[i][6][j]))) do
            if C_TransmogCollection.PlayerKnowsSource(b) then
              isKnown = true;
              break;
            end
          end
          data.sources[db[i][6][j]] = isKnown;
        end
      end
      
      data.description = data.note; --remove this later
      
      app.SetsFrame.AddSetToTables(data);
    end
  end
  
  for i = 1, #altAppearancesDB do
    app.SetsFrame.AddAltAppearancesToTables(altAppearancesDB[i][1],altAppearancesDB[i][2],altAppearancesDB[i][3]);
  end
end

app.ExpandedCallbacks[expansionID] = AddToCollection;
app.altAppearancesDB[expansionID] = altAppearancesDB;
app.altLabelDB[expansionID] = altLabelDB;
app.altNoteDB[expansionID] = altNoteDB;
app.altPatchID[expansionID] = altPatchID;
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