local app = select(2,...);

local expansionID = 4;

--Name, Description, Label, classMask, patchID, sources, requiredFact
----classMask:    (35=Plate, 68=Mail, 3592=Leather, 400=Cloth
local db = {
--MoP: Remix --start 91045
--{"test","test","test",0,50000,{55775}},

--Alt Dungeon Cloth Set
{"Koegler","","Dungeon Alt (MoP)",400,50002.5,{45671,45679,45694,45703,45708,45719,}},

--Cloth pandaren set
{"Trainee's","","Pandaren",400,50000,{36895,36894,39119,39104}},
};

--Used to add alternate appearances to blizzard sets
--SetID, OriginalSourceID, AlternateApperanceID
local altAppearancesDB = {
{489,61767,196577},--SoO, Paladin, Chest/Robe (lfr)--remix
{487,57097,196593},--SoO, Paladin, Chest/Robe (normal)--remix
{488,61768,196584},--SoO, Paladin, Chest/Robe (mythic)--remix
{488,61567,196586},--SoO, Paladin, funky pants (mythic)

{421,57093,52382}, --Siege of Orgrimmar, Mail/Shaman, Chest/Robe (Normal)
{421,57082,52380},--SoO,Shaman,Pants/skirt (normal)
{422,61764,52625}, --Siege of Orgrimmar, Mail/Shaman, Chest/Robe (Mythic)
{422,61097,52623},--SoO,Shaman,Pants/skirt (mythic)
{423,61763,52292}, --Siege of Orgrimmar, Mail/Shaman, Chest/Robe (LFR)
{423,61096,52265},--SoO,Shaman,Pants/skirt (lfr)

{559,61909,195840}, --Siege of Orgrimmar, Leather/Druid, Chest/Robe (lfr)
{557,61908,57092}, --Siege of Orgrimmar, Leather/Druid, Chest/Robe (Normal)
{559,52295,195846}, --Siege of Orgrimmar, Leather/Druid, pants/skirt (lfr)--remix
{558,52710,195847}, --Siege of Orgrimmar, Leather/Druid, pants/skirt (mythic)--remix

{508,61059,195935},--SoO, Monk, Chest/Robe (LFR)--remix
{508,61824,52351},--SoO, Monk, Pants/skirt (lfr)
{506,57090,195938},--SoO, Monk, Chest/Robe (normal)--remix
{506,61823,52424},--SoO, Monk, pants/skirt (normal)
{507,61060,195951},--SoO, Monk, Chest/Robe (mythic)--remix
{507,61825,52675},--SoO, Monk, Pants/skirt (mythic)


{525,61007,218931},--SoO, Cloth/Mage, Chest/Robe (LFR)--remix
{525,61007,52359},--SoO, Cloth/Mage, non-puffy robe (LFR)
{523,57095,52939},--SoO,Cloth/Mage,non-puffy robe(Normal)
{523,57095,218932},--SoO,Cloth/Mage,Chest/Robe(Normal)--remix
{524,61008,218924},--SoO,Cloth/Mage,Chest/Robe(Mythic)--remix
{524,61008,52681},--SoO,Cloth/Mage,non-puffy robe(Mythic)

{457,61854,218936},--SoO,Cloth/Warlock,Chest/robe(LFR)--remix

{425,51050,51055}, --Throne of Thunder, Mail/Shaman, Chest/Robe (Heroic)
{424,50052,50057}, --Throne of Thunder, Mail/Shaman, Chest/Robe (Normal)
{426,50426,50431}, --Throne of Thunder, Mail/Shaman, Chest/Robe (LFR)

{510,49623,49631}, --Throne of Thunder, Leather/Monk, Chest/Robe (Normal)
{512,50204,50218}, --Throne of Thunder, Leather/Monk, Chest/Robe (LFR)
{511,50828,50842}, --Throne of Thunder, Leather/Monk, Chest/Robe (Heroic)

{562,50198,218941},--ToT, Leather/Druid, Chest/Robe (lfr)--remix
{560,49619,195837},--ToT, Leather/Druid, Chest/Robe (Normal)--remix
{561,50822,218940},--ToT, Leather/Druid, Chest/Robe (heroic)--remix

{459,50196,195596},--ToT, Cloth/Warlock, No puffy robes (LFR)
{458,49615,218935},--ToT, Cloth/Warlock, chest/robe (normal)--remix
{460,50820,218934},--ToT, Cloth/Warlock, chest/robe (heroic)--remix

{338,46656,44970}, --Heart of Fear, Mail/Shaman, Chest/Robe (Heroic)
{427,46613,46990}, --Heart of Fear, Mail/Shaman, Chest/Robe (Normal)
{428,46687,44697}, --Heart of Fear, Mail/Shaman, Chest/Robe (LFR)

{579,44556,46685}, --Heart of Fear, Plate/DK, Chest/Robe (LFR)
{578,43676,46992}, --Heart of Fear, Plate/DK, Chest/Robe (Normal)
{580,44780,46654}, --Heart of Fear, Plate/DK, Chest/Robe (Heroic)

{565,44713,195792},--HoF,Leather/Druid,Chest/Robe (LFR)--remix
{563,44317,195808},--HoF,Leather/Druid,Chest/Robe (normal)--remix
{564,44828,218939},--HoF,Leather/Druid,Chest/Robe (heroic)--remix

{462,44756,218933},--HoF, Cloth/Warlock, Chest/Robe (LFR)--remix
{462,44756,44610},--HoF, Cloth/Warlock, puffy robes (LFR)

{277,43265,47810}, --Season 12, Plate/Paladin, Chest/Robe (Gladiator)
{196,43002,48776}, --Season 12, Plate/Paladin, Chest/Robe (Honor)
{1060,43435,43434}, --Season 12, Plate/Paladin, Chest/Robe (Elite)

{3372,41890,41825}, --MoP: World Cloth 1 (green) (shirt tight cuffs)
{3372,41890,220820}, --MoP: World Cloth 1 (green) (shirt loose cuffs)
{3365,62542,41841}, --MoP:Dungeon Cloth (original)
{3369,45298,41833}, --MoP:Dungeon Cloth (purple)
{3408,45528,42736}, --Mop:world mail 1 (green/kilt)

{3438,196722,38100}, --alt id robe Vestments of Serenity (green)
{3439,196709,38071}, --alt id robe Vestments of Serenity (blue)
{3368,196729,37521}, --alt id robe Vestments of Serenity (white)

{3413,37516,196180}, --alt id Sun Pearl Clothing (green)

{3396,76116,195787}, --alt id Tian Monastery Boots (white)
{3395,38101,195782}, --alt id Tian Monastery Boots (red)
}

--91045

local altNoteDB = {
[3440] = "Ensemble on <Normal Raid Apparel> Vendor",
}

local altLabelDB = {

}

local altLabelAppendDB = {
[3413] = ' Cosmetic (1)', -- start Cosmetic sets
[3414] = ' Cosmetic (1)',
[3415] = ' Cosmetic (1)',
[3439] = ' Cosmetic (2)',
[3438] = ' Cosmetic (2)',
[3368] = ' Cosmetic (2)',
[3394] = ' Cosmetic (3)',
[3395] = ' Cosmetic (3)',
[3396] = ' Cosmetic (3)',
[3434] = ' Cosmetic (4)',
[3435] = ' Cosmetic (4)',
[3436] = ' Cosmetic (4)',
[3437] = ' Cosmetic (4)',
[3403] = ' Cosmetic (5)',
[3404] = ' Cosmetic (5)',
[3405] = ' Cosmetic (5)',
[3380] = ' Cosmetic (6)',
[3381] = ' Cosmetic (6)', -- end Cosmetic sets
[3423] = ' (1)', --start Plate World Sets
[3424] = ' (1)',
[3425] = ' (1)',
[3426] = ' (2)',
[3427] = ' (2)',
[3428] = ' (2)',
[3429] = ' (2)',
[3430] = ' (3)',
[3431] = ' (3)',
[3432] = ' (3)',
[3433] = ' (3)', --end Plate World sets
[3406] = ' (1)', --start Mail World Sets
[3407] = ' (1)',
[3408] = ' (1)',
[3409] = ' (1)',
[3410] = ' (2)',
[3411] = ' (2)',
[3412] = ' (2)',
[3416] = ' (3)',
[3417] = ' (3)',
[3418] = ' (3)',
[3419] = ' (3)', --end Mail World sets
[3386] = ' (1)', --start Leather World Sets
[3387] = ' (1)',
[3388] = ' (1)',
[3389] = ' (1)',
[3390] = ' (2)',
[3391] = ' (2)',
[3392] = ' (2)',
[3393] = ' (2)',
[3397] = ' (3)',
[3398] = ' (3)',
[3399] = ' (3)', --end Leather World sets
[3371] = ' (1)', --start Cloth World Sets
[3372] = ' (1)',
[3373] = ' (1)',
[3374] = ' (2)',
[3375] = ' (2)',
[3376] = ' (2)',
[3377] = ' (3)',
[3378] = ' (3)',
[3379] = ' (3)', --end Cloth World sets
}

local setsFlagRemix = {
[3368] = 400, --Vestments of serenity (white)
[3438] = 400, --                      (green)
[3439] = 400, --                      (blue)
[3394] = 3592, --Tian Monastary Clothing (blue)
[3395] = 3592, --                        (red)
[3396] = 3592, --                        (white)
[3415] = 35, --Sun Pearl Clothing (yellow)
[3414] = 35, --                   (red)
[3413] = 35, --                   (green)
[3434] = 400, --Robes of Quiet Reflection (brown)
[3435] = 400, --                          (green)
[3436] = 400, --                          (red)
[3437] = 400, --                          (yellow)
[3403] = true, --Kor'kron Shaman (cool)
[3404] = true, --Kor'kron Shaman (warm)
[3405] = 64, --Kor'kron Shaman (yellow)
[3380] = true, --Guise of the Shado-pan (dark)
[3381] = true, --Guise of the Shado-pan (original)
[3440] = true, --Battleplate of Resounding Rings
}

local itemsFlagRemix = {
--[setID] = { [sourceID] = true, },
[489] = {[196577] = true, },--SoO, Paladin, Chest/Robe (lfr)
[487] = {[196593] = true, },--SoO, Paladin, Chest/Robe (normal)
[488] = {[196584] = true, },--SoO, Paladin, Chest/Robe (mythic)

[559] = {[195846] = true, }, --Siege of Orgrimmar, Leather/Druid, pants/skirt (lfr)
[558] = {[195847] = true, }, --Siege of Orgrimmar, Leather/Druid, pants/skirt (mythic)

[508] = {[195935] = true, },--SoO, Monk, Chest/Robe (LFR)
[506] = {[195938] = true, },--SoO, Monk, Chest/Robe (normal)
[507] = {[195951] = true, },--SoO, Monk, Chest/Robe (mythic)

[525] = {[218931] = true, },--SoO, Cloth/Mage, Chest/Robe (LFR)
[523] = {[218932] = true, },--SoO,Cloth/Mage,Chest/Robe(Normal)
[524] = {[218924] = true, },--SoO,Cloth/Mage,Chest/Robe(Mythic)

[457] = {[218936] = true, },--SoO,Cloth/Warlock,Chest/robe(LFR)

[562] = {[218941] = true, },--ToT, Leather/Druid, Chest/Robe (lfr)
[560] = {[195837] = true, },--ToT, Leather/Druid, Chest/Robe (Normal)
[561] = {[218940] = true, },--ToT, Leather/Druid, Chest/Robe (heroic)

[458] = {[218935] = true, },--ToT, Cloth/Warlock, chest/robe (normal)
[460] = {[218934] = true, },--ToT, Cloth/Warlock, chest/robe (heroic)

[565] = {[195792] = true, },--HoF,Leather/Druid,Chest/Robe (LFR)
[563] = {[195808] = true, },--HoF,Leather/Druid,Chest/Robe (normal)
[564] = {[218939] = true, },--HoF,Leather/Druid,Chest/Robe (heroic)

[462] = {[218933] = true, },--HoF, Cloth/Warlock, Chest/Robe (LFR)

[3415] = { [196194] = true, }, --Sun Pearl Clothing, Yellow, Shoes

[3438] = {[196722] = true, }, --Vestments of Serenity robe alt id(green)
[3439] = {[196709] = true, }, --Vestments of Serenity robe alt id(blue)
[3368] = {[196729] = true, }, --Vestments of Serenity robe alt id(white)

[3434] = {[196732] = true, }, --robes of quiet reflection pants(brown)
[3434] = {[196731] = true, }, --robes of quiet reflection shoes(brown)
[3436] = {[196739] = true, }, --robes of quiet reflection pants(red)
[3436] = {[196740] = true, }, --robes of quiet reflection shoes(red)
[3435] = {[196735] = true, }, --robes of quiet reflection pants(green)
[3435] = {[196736] = true, }, --robes of quiet reflection shoes(green)
[3437] = {[196743] = true, }, --robes of quiet reflection pants(yellow)
[3437] = {[196744] = true, }, --robes of quiet reflection shoes(yellow)
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
    --local skip = false;
    --if ExS_Settings.hideMopRemix then
    --  if setsFlagRemix[altAppearancesDB[i][1]] then skip = true;
    --  elseif itemsFlagRemix[altAppearancesDB[i][1]] and itemsFlagRemix[altAppearancesDB[i][1]][altAppearancesDB[i][3]] then skip = true; end
    --end
    --if not skip then
      app.SetsFrame.AddAltAppearancesToTables(altAppearancesDB[i][1],altAppearancesDB[i][2],altAppearancesDB[i][3]);
    --end
  end
end

local function shouldUseMopRemix(data)
  data.isRemix = nil;
  if not setsFlagRemix[data.setID] then return true; end
  
  if type(setsFlagRemix[data.setID]) ~= 'number' and data.classMask == setsFlagRemix[data.setID] then
    return true;
  end
  
  local correctIDs = {
    [37516] = 196180,  --alt id Sun Pearl Clothing (green)
    [76116] = 195787,  --alt id Tian Monastery Boots (white)
    [38101] = 195782 } --alt id Tian Monastery Boots (red)
  
  local sources = C_TransmogSets.GetSetPrimaryAppearances(data.setID);
  for i=1,#sources do
    if correctIDs[sources[i].appearanceID] then
      if not C_TransmogCollection.GetSourceInfo(correctIDs[sources[i].appearanceID]).isCollected then
        return false;
      end
    elseif not sources[i].collected then
      return false;
    end
  end
  return true;
end

app.ExpandedCallbacks[expansionID] = AddToCollection;
app.altAppearancesDB[expansionID] = altAppearancesDB;
app.altLabelDB[expansionID] = altLabelDB;
app.altLabelAppendDB[expansionID] = altLabelAppendDB;
app.mopRemixFlag = setsFlagRemix;
app.mopItemRemixFlag = itemsFlagRemix;
app.altNoteDB[expansionID] = altNoteDB;
app.shouldUseMopRemix = shouldUseMopRemix;
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