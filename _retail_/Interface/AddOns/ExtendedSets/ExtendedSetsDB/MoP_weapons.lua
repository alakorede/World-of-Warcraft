local app = select(2,...);

local expansionID = 5;

--Name, Label, Difficulty, patchID, notes top line, notes bottom line, sources, requiredFact, isPvP, noLongerObtainable
----sources(17):
--1) Axe
--2) 2hAxe
--3) Bow
--4) XBow
--5) Dagger
--6) Fist
--7) Gun
--8) Mace
--9) 2hMace
--10) Off-hand
--11) Polearm
--12) Shield
--13) Staff
--14) Sword
--15) 2hSword
--16) Wand
--17) Warglaive

--Item Quality Colors (for item link source)
--0 - Grey/Trash
--1 - White/Common
--2 - Green/Uncommon
--3 - Blue/Rare
--4 - Purple/Epic
--5 - Orange/Legendary
--6 - Artifact
--7 - Heirloom

--1 = Warrior
--2 = Paladin
--4 = Hunter
--8 = Rogue
--16 = Priest
--32 = Death Knight
--64 = Shaman
--128 = Mage
--256 = Warlock
--512  = Monk
--1024 = Druid
--2048 = Demon Hunter
--4096 = Evoker
local db = {
--Remix Class Arsenals
{"Holy Avenger","Remix: Pandaria Class Sets",app.GetColoredClassNameString("Paladin"),100207,"i:217832:4:Arsenal Armaments of the Holy Avenger","Only usable by "..app.GetColoredClassNameString("Paladin"),{{12,200455},{9,200456},{8,200457},},nil,nil,2,2},
{"Webbed Soulforged","Remix: Pandaria Class Sets",app.GetColoredClassNameString("Death Knight"),100207,"i:217824:4:Arsenal Webbed Soulforged Weaponfy","Only usable by "..app.GetColoredClassNameString("Death Knight"),{{2,200480},{14,200481},{15,200482},},nil,nil,2,32},
{"Fanatical Champion's","Remix: Pandaria Class Sets",app.GetColoredClassNameString("Warrior"),100207,"i:217825:4:Arsenal Fanatical Champion's Aggression","Only usable by "..app.GetColoredClassNameString("Warrior"),{{12,200491},{14,200492},{15,200493},},nil,nil,2,1},

{"Gold Hoarder","Remix: Pandaria Class Sets",app.GetColoredClassNameString("Evoker"),100207,"i:217821:4:Arsenal Treasure of the Gold Hoarder","Only usable by "..app.GetColoredClassNameString("Evoker"),{{13,200515},{10,200516},{14,200517},},nil,nil,2,4096},
{"Dreadsquall Hunter's","Remix: Pandaria Class Sets",app.GetColoredClassNameString("Hunter"),100207,"i:217820:4:Arsenal Dreadsquall Hunter's Preference","Only usable by "..app.GetColoredClassNameString("Hunter"),{{11,200527},{3,200528},{7,200529},},nil,nil,2,4},
{"Krag'wa's Disciple","Remix: Pandaria Class Sets",app.GetColoredClassNameString("Shaman"),100207,"i:217819:4:Arsenal Tools of Krag'wa's Disciple","Only usable by "..app.GetColoredClassNameString("Shaman"),{{12,200521},{1,200522},{6,200523},},nil,nil,2,64},

{"Aldrachi Blasphemer's","Remix: Pandaria Class Sets",app.GetColoredClassNameString("Demon Hunter"),100207,"i:217828:4:Arsenal Aldrachi Blasphemer's Glaives","Only usable by "..app.GetColoredClassNameString("Demon Hunter"),{{17,200486},{17,200487},},nil,nil,2,2048},
{"Ela'lothen's Rebirth","Remix: Pandaria Class Sets",app.GetColoredClassNameString("Druid"),100207,"i:217829:4:Arsenal Ela'lothen's Blessings of Rebirth","Only usable by "..app.GetColoredClassNameString("Druid"),{{5,200473},{6,200474},{13,200475},{13,191196}},nil,nil,2,1024},
{"Shado-Pan Watcher","Remix: Pandaria Class Sets",app.GetColoredClassNameString("Monk"),100207,"i:217827:4:Arsenal Shado-Pan Watcher Arenal","Only usable by "..app.GetColoredClassNameString("Monk"),{{6,200497},{13,200498},{13,200499},},nil,nil,2,512},
{"Igneous Onyx","Remix: Pandaria Class Sets",app.GetColoredClassNameString("Rogue"),100207,"i:217830:4:Arsenal Igneous Onyx Blades","Only usable by "..app.GetColoredClassNameString("Rogue"),{{5,200461},{14,200463},{5,200462},},nil,nil,2,8},

{"Sin'dorei Magister's","Remix: Pandaria Class Sets",app.GetColoredClassNameString("Mage"),100207,"i:217823:4:Arsenal Sin'dorei Magister's Enchantment","Only usable by "..app.GetColoredClassNameString("Mage"),{{14,200509},{13,200510},{10,200511},},nil,nil,2,128},
{"Abyssal Cult","Remix: Pandaria Class Sets",app.GetColoredClassNameString("Priest"),100207,"i:217831:4:Arsenal Secrets of the Abyssal Cult","Only usable by "..app.GetColoredClassNameString("Priest"),{{10,200458},{8,200459},{13,200460},},nil,nil,2,16},
{"Temptation's Call","Remix: Pandaria Class Sets",app.GetColoredClassNameString("Warlock"),100207,"i:217826:4:Arsenal Instruments of Temptation's Call","Only usable by "..app.GetColoredClassNameString("Warlock"),{{5,200503},{10,200504},{13,200505},},nil,nil,2,256},

--Siege of Orgrimmar
{"Pride's Fall","Siege of Orgrimmar","Raid Finder",50400,nil,nil,{{11,56612},{13,56522},{9,56569},{13,56503},{15,56507},{11,56210},{13,56628},{13,56614},{13,56447},{2,56638},{14,56564},{8,56456},{14,56589},{1,56553},{8,56641},{5,56562},{8,56556},{14,56627},{1,56621},{1,56579},{5,56484},{5,56623},{8,56527},{6,56467},{14,56492},{3,56509},{4,56466},{3,56620},{16,56600},{7,56572},{12,55820},{12,56570},{12,55842},{12,56508},{10,56610},{10,56541},{10,56478},{10,56642},}},
{"Pride's Fall","Siege of Orgrimmar","Normal",50400,"Note: Heroic drops these same appearances.",nil,{{11,55913},{13,55846},{9,55906},{13,55844},{15,55840},{13,55935},{13,55845},{13,55722},{2,55685},{14,55907},{8,55723},{14,55922},{1,55887},{8,55898},{5,55806},{8,55897},{14,55933},{1,55932},{1,55912},{5,55807},{5,55805},{5,55934},{8,55871},{6,55765},{14,55804},{3,55852},{4,55766},{3,55853},{16,55925},{7,55914},{12,55842},{12,55843},{12,55820},{12,55841},{12,55821},{10,55880},{10,55879},{10,55783},{10,55881},}},
{"Pride's Fall","Siege of Orgrimmar","Mythic",50400,nil,nil,{{11,56210},{13,56120},{9,56167},{13,56101},{15,56105},{11,56171},{13,56226},{13,56212},{13,56045},{2,56236},{14,56162},{8,56054},{14,56187},{1,56151},{8,56239},{5,55807},{8,56154},{14,56225},{1,56219},{1,56177},{5,56160},{5,56082},{5,56221},{8,56125},{6,56065},{14,56090},{3,56107},{4,56064},{3,56218},{16,56198},{7,56170},{12,56195},{12,56168},{12,56095},{12,56106},{10,56208},{10,56139},{10,56076},{10,56240},}},

--Throne of Thunder
{"The Emperor","Throne of Thudner","Raid Finder",50200,nil,nil,{{13,50188},{13,50238},{13,50179},{11,50305},{13,50300},{2,50311},{15,50202},{8,50269},{6,50197},{5,50282},{8,49765},{5,50287},{1,50194},{5,49640},{14,50296},{5,50257},{1,50210},{14,50174},{8,50315},{1,50168},{6,50297},{4,50244},{3,50203},{16,50189},{7,50288},{12,50278},{12,50299},{12,50216},{12,50312},{10,50230},{10,50316},{10,50107},}},
{"The Emperor","Throne of Thudner","Normal",50200,nil,nil,{{13,49604},{13,49653},{13,49596},{11,49791},{13,49784},{2,49790},{15,49612},{8,49748},{6,49614},{5,49766},{8,49765},{5,49781},{1,49613},{5,49640},{14,49774},{5,49739},{1,49621},{14,49587},{8,49796},{1,49580},{6,49783},{4,49662},{3,49622},{16,49609},{7,49773},{12,49756},{12,50122},{12,49630},{12,50106},{10,49645},{10,50107},{10,49775},}},
{"The Emperor","Throne of Thudner","Heroic",50200,nil,nil,{{13,50812},{13,50862},{13,50803},{11,50929},{13,50924},{2,50935},{15,50826},{8,50893},{6,50821},{5,50906},{8,49765},{5,50911},{1,50818},{5,49640},{14,50920},{5,50881},{1,50834},{14,50798},{8,50939},{1,50792},{6,50921},{4,50868},{3,50827},{16,50813},{7,50912},{12,50902},{12,50923},{12,50840},{12,50936},{10,50854},{10,49775},{10,50916},}},

--Terrace of Endless Spring
{"The Waterspeaker","Terrace of Endless Spring","Raid Finder",50004,nil,nil,{{13,44747},{13,44757},{2,44768},{14,44769},{14,44751},{5,44734},{5,44772},{7,44754},}},
{"The Waterspeaker","Terrace of Endless Spring","Normal",50004,nil,nil,{{13,44374},{13,44384},{2,44395},{14,44396},{14,44378},{5,44350},{5,44399},{7,44381},}},
{"The Waterspeaker","Terrace of Endless Spring","Heroic",50004,nil,nil,{{13,44988},{13,44998},{2,45002},{14,45000},{14,44993},{5,44836},{5,44995},{7,44996},}},

--Heart of Fear
{"The Swarm","Heart of Fear","Raid Finder",50004,nil,nil,{{6,44736},{8,44737},{14,44735},{5,44734},{10,44706},}},
{"The Swarm","Heart of Fear","Normal",50004,nil,nil,{{6,44358},{8,44359},{14,44352},{5,44350},{10,44310},}},
{"The Swarm","Heart of Fear","Heroic",50004,nil,nil,{{6,44841},{8,44843},{14,44840},{5,44836},{10,44818},}},

--Mogu'shan Vaults
{"Sleeping Emperor","Mogu'shan Vaults","Raid Finder",50004,nil,nil,{{11,44665},{15,44683},{5,44638},{1,44676},{6,44657},{8,44688},{3,44685},{16,44680},{12,44659},{12,44666},{10,45190},}},
{"Sleeping Emperor","Mogu'shan Vaults","Normal",50004,nil,nil,{{11,44246},{15,44287},{5,44135},{1,44280},{6,44186},{8,44292},{3,44289},{16,44284},{12,44188},{12,44247},{10,46318},}},
{"Sleeping Emperor","Mogu'shan Vaults","Heroic",50004,nil,nil,{{12,44889},{12,44898},{10,40213},{11,44894},{15,44907},{5,44865},{1,44908},{6,44883},{8,44917},{3,44913},{16,44910},}},
};

local function GetFormattedLabel(label)
  if not label then return "" end
  local labelTable = {}
  for out in gmatch(label,"[^:]+") do
    tinsert(labelTable,out);
  end
  if labelTable[1] == "a" then
    return "Achievement: "..GetAchievementLink(labelTable[2]);
  elseif labelTable[1] == "i" then
    local itemID = labelTable[2];
    local itemLink = select(2,GetItemInfo(itemID));
    if itemLink then
      return "Item: "..itemLink;
    else
      local _,_,_,color = GetItemQualityColor(labelTable[3]);
      local retLabel = "Item: \124c"..color.."\124Hitem:"..itemID;
      if labelTable[5] then
        retLabel = retLabel..":::::::::::"..labelTable[5];
      end
      retLabel = retLabel.."\124h["..labelTable[4].."]\124h\124r"
      return retLabel;
    end
  elseif labelTable[1] == "q" then
    local str = "Quest:"
    for i = 2,#labelTable do
      local questID = labelTable[i];
      local questName = QuestUtils_GetQuestName(questID);
      str = str.." \124cffffff00\124Hquest:"..questID.."\124h["..questName.."]\124h\124r";
    end
    return str;
  elseif labelTable[1] == "r" then
    local tier = tonumber(labelTable[2]);
    local factionName = GetFactionInfoByID(labelTable[3]);
    local repStr = "";
    if tier == 1 then repStr = "Friendly with "
    elseif tier == 2 then repStr = "Honored with "
    elseif tier == 3 then repStr = "Revered with "
    elseif tier == 4 then repStr = "Exalted with "
    elseif tier == 5 then repStr = "Paragon Box from "
    end
    return repStr.."\124cffffff00"..factionName.."\124r";
  else
    return label; --moving the description to the previously unused 5th slot
  end
end

local function AddToCollection()
  local patch = select(4,GetBuildInfo());
  for i = 1, #db do
    if (db[i][4] <= patch) then
      local data = {};
      data.name = db[i][1];
      data.label = db[i][2];
      data.difficulty = db[i][3];
      data.patchID = db[i][4];
      --data.sources = db[i][7];
      data.sources = {};
      data.requiredFaction = db[i][8];
      data.isPvP = db[i][9];
      if db[i][10] == 2 then
        data.limitedTimeSet = true;
      else
        data.noLongerObtainable = db[i][10];
      end
      data.favorite = false;
      data.expansionID = expansionID;
      
      data.setID = expansionID * 1000 + (#db - i);
      
      data.sources={}
      for j=1,#db[i][7] do
        local _,appID,_,icon = C_TransmogCollection.GetAppearanceSourceInfo(db[i][7][j][2])
        if appID then
          tinsert(data.sources, db[i][7][j]);
          local index = #data.sources;
          local s = C_TransmogCollection.GetAllAppearanceSources(appID);
          local isCollected = false;
          for i=1,#s do
            if C_TransmogCollection.GetSourceInfo(s[i]).isCollected then
              isCollected = true;
              break;
            end
          end
          
          data.icon = icon;
          
          if not data.sources[index][3] and db[i][5] then data.sources[index][3] = db[i][5]; end
          data.sources[index][5] = GetFormattedLabel(data.sources[index][3]);
          if not data.sources[index][4] and db[i][6] then data.sources[index][4] = db[i][6]; end
          data.sources[index][6] = GetFormattedLabel(data.sources[index][4]);
          
          data.sources[index][3] = isCollected;
          data.sources[index][4] = appID;
        end
      end
      
      if #data.sources > 0 then
        app.AddWeaponSetToTables(data);
      end
    end
  end
end

app.WeaponCallbacks[expansionID] = AddToCollection;