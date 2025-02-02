local app = select(2,...);

local expansionID = 11;

--Name, Label, Difficulty, patchID, desc1, desc2, sources, specialSource: (1 = pvp, 2 = trading post), time: (1 = no longer obtainable, 2 = limited time set), requiredFact, 
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

--Start of SL: 82432(raid 2h mace), 83206, 83606
local db = {
--clockwork
{"Clockwork","Clockwork","Golden",110007,nil,nil,{{9,230844},{6,230849},{7,230862},{12,230868},},2},
{"Clockwork","Clockwork","Violet",110007,nil,nil,{{9,230845},{6,230851},{7,230860},{12,230871},},2},
{"Clockwork","Clockwork","Blue",110007,nil,nil,{{9,230846},{6,230848},{7,230861},{12,230869},},2},
{"Clockwork","Clockwork","Green",110007,nil,nil,{{9,230847},{6,230850},{7,230863},{12,230870},},2},

--lunar weapons starting at 98809
{"Lunar","Lunar New Year","Crimson",110007,nil,nil,{{10,230823},{5,230827},{11,230831},{8,230835},},2},
{"Lunar","Lunar New Year","Azure",110007,nil,nil,{{10,230824},{5,230829},{11,230832},{8,230836},},2},
{"Lunar","Lunar New Year","Gold",110007,nil,nil,{{10,230825},{5,230830},{11,230833},{8,230837},},2},
{"Lunar","Lunar New Year","Violet",110007,nil,nil,{{10,230826},{5,230828},{11,230834},{8,230838},},2},

--Siren isle
{"Tideflayer","Siren Isle","Sea Pirates",110007,nil,"Vendor: Taljori",{{13,231266},{13,231265},{12,231411},{11,231423},{14,231259},{5,231281},{6,231279},{14,231258},}},
{"Bloodwake","Siren Isle","Vrykul",110007,nil,"Vendor: Taljori",{{12,231410},{3,231306},{3,231305},{15,231255},{15,231256},{8,231268},{8,231267},{16,231254},}},

--Neruba-ar Palace (S1 raid)
{"Fateweaved","Nerub-ar Palace","Raid Finder",110000,nil,nil,{{2,221210},{11,200655},{13,221204},{13,221213},{9,221174},{1,221216},{5,221180},{8,218463},{14,220599},{17,221195},{5,218314},{8,221183},{6,221186},{4,221201},{3,220605},{6,218454},{12,221222},{12,200654},{10,218312},}},
{"Fateweaved","Nerub-ar Palace","Normal",110000,nil,nil,{{2,194752},{11,194758},{13,194734},{13,194742},{9,194733},{1,194746},{5,194739},{8,194743},{14,194737},{17,194736},{5,221160},{8,194749},{6,194754},{4,194745},{3,194744},{6,218454},{12,221111},{12,194731},{10,194732},}},
{"Fateweaved","Nerub-ar Palace","Heroic",110000,nil,nil,{{2,221211},{11,220603},{13,221205},{13,221214},{9,221175},{1,221217},{5,221181},{8,221193},{14,220600},{17,221196},{5,221199},{8,221184},{6,221187},{4,221202},{3,220606},{6,218454},{12,221223},{12,221178},{10,221208},}},
{"Fateweaved","Nerub-ar Palace","Mythic",110000,nil,nil,{{2,221212},{11,220604},{13,221206},{13,221215},{9,221176},{1,221218},{5,221182},{8,221194},{14,220601},{17,221197},{5,221200},{8,221185},{6,221188},{4,221203},{3,220607},{6,218454},{12,221224},{12,221179},{10,221209},}},

--S1 pvp --1h mace missing for glad and elite (should be at 84702 and 84703)
{"Forged Gladiator","TWW Season 1","Aspirant's",110000,nil,nil,{{15,216902},{1,216897},{17,216904},{8,216905},{10,216903},{13,216901},{5,216898},{16,216913},{7,216907},{8,216899},{11,216900},{12,216906},},1},
{"Forged Gladiator","TWW Season 1","Gladiator",110000,nil,nil,{{1,217902},{13,217921},{8,217908},{5,217912},{2,217917},{12,217916},{6,217913},{12,217910},{10,217909},{11,217905},{3,217907},{4,217914},{13,217906},{17,217904},{5,217903},{14,217919},{9,217918},},1},
{"Forged Gladiator","TWW Season 1","Elite",110000,nil,nil,{{1,222810},{13,222817},{8,222819},{5,222812},{2,222825},{12,222822},{6,222823},{12,222821},{10,222820},{11,222814},{3,222824},{4,222818},{13,222815},{17,222813},{5,222811},{14,222828},{9,222826},},1},

--arathi --orange is Season 1 Aspirant's
{"Radiant","Arathi",nil,110000,nil,nil,{{1,218239},{17,218228},{8,218236},{10,218230},{5,218238},{16,218235},{7,218234},{8,218237},{11,218233},{12,218229},{13,218232},{15,218231},}},--blue
{"Algari","Arathi",nil,110000,nil,nil,{{15,219970},{1,219985},{17,220199},{10,220198},{5,220101},{7,219969},{8,220099},{11,219967},{12,220196},{13,219968},}},--red--appID:90938 should be missing wand 
{"Everforged","Arathi",nil,110000,nil,nil,{{1,219544},{17,219534},{10,219583},{13,219584},{5,219531},{16,220368},{7,219452},{8,219535},{11,219541},{12,219525},}},--black--appID:84670 should be missing 2hSword
--appID: 90916,90917, or 90920 should be the missing red and black 1hMaces

--dungeon (all 3 difficulties use Somber Fate(red) appearances)
{"Somber Fate","Ancient Forged","Red (Dungeon)",110007,nil,nil,{{13,219031},{14,219101},{5,219061},{17,219028},{13,218970},{8,218986},{1,218971},{5,218984},{10,218997},{12,219016},{11,219093},{11,219062},{11,219021},{12,218985},{15,219081},{8,219075},{4,219036},{9,218433},{9,218425},{3,218978},{14,219038},{6,219037},{7,219017},}},
{"Ancient Forged","Ancient Forged","Orange (World Drops)",110007,nil,nil,{{8,220545},{15,219540},{9,219551},{11,220552},{11,220551},{1,220343},{2,219536},{14,220547},{17,220557},{10,220555},{9,219542},{7,220548},{14,220546},{12,220556},{5,220542},{13,220554},{13,220553},{8,220544},{5,220543},}},--{4,223029}, invisible crossbow
{"Ironclaw","Ancient Forged","Silver (Profession)",110007,nil,nil,{{9,219559},{14,219557},}},
{"Earthen Deckhand","Ancient Forged","Silver/Black (Siren Isle)",110007,"Siren Isle",nil,{{7,225170},{4,223029},{3,225169},{15,225156},{11,225151},{2,225157},{9,225160},{11,225153},{11,225152},{13,225166},{13,225167},{17,225165},{14,225149},{14,225150},{8,225158},{8,225159},{6,225164},{5,225163},{5,225162},{1,225147},{12,225154},{12,225155},{10,225168},}},

--nerubian
{"Timely Tourist","Deep Dwellers",nil,100005,"Anniversary 2024","Found in Chromie's and Timely Goodie Bags",{{13,222891},{10,222892},{5,222880},{8,222886},{1,222949},{14,219552},{11,222888},{14,222883},{13,222890},{11,222889},{1,222950},{8,222881},{2,222887},{12,222893},{7,222885},{4,222946},{5,222948},{5,222879},},nil,2},
{"Earthen Traveler's","Deep Dwellers",nil,110000,nil,nil,{{1,218360},{4,218287},{5,193926},{6,218289},{10,193921},{8,218361},{11,218363},{13,218286},{14,193928},{15,218285},{12,193920},{2,218288},{7,218364},{5,193927},{8,224558},{1,218290},}},
{"Arathi","Deep Dwellers",nil,110000,nil,nil,{{15,220495},{14,223927},{13,220493},{11,220492},{8,220498},{10,220504},{5,220499},{1,220496},{12,220502},{2,220500},{7,220494},{5,224048},{11,224047},{13,193937},{14,224041},}},
{"Deep Terror","Deep Dwellers",nil,110000,nil,nil,{{15,219204},{14,219192},{13,219190},{11,219206},{8,219201},{10,219189},{6,219205},{5,219193},{4,219199},{1,219200},{12,219188},{2,219203},{7,219191},{5,219554},}},
{"Inquisitor's","Deep Dwellers",nil,110000,nil,nil,{{13,219585},{11,222951},{6,219539},{1,219560},{2,219561},{10,219582},{12,219565},{13,219586},}},

--{8,218584},{8,218583}, torch unlit and lit, doesn't really match anything else

--earthen
{"Earthen","Earthen",nil,110000,nil,nil,{{1,220327},{5,220328},{13,220329},{2,220332},{14,220331},{12,220330},}},

--farm
{"Hillhelm","Farmhand's",nil,110000,nil,nil,{{8,222830},{10,222831},{9,222944},{9,222845},{8,222945},}},

--{"G1","misc 2",nil,110000,nil,nil,{{1,219055},{9,219005},{2,219930},{14,219533},}},

--plunderlord's recolor (trading post)
{"Plunderlord Radiant","Plunderlord's (TP)",nil,110000,nil,nil,{{1,222859},{13,222855},{14,222858},{15,222857},{7,222856},},2},
--Coreway trading post
{"Coreway","Coreway",nil,110000,nil,nil,{{1,224046},{8,222807},{8,222808},{1,222803},{9,222802},{13,222804},{10,222805},{9,222801},},2},
--dornogal trading post
{"Dornogal Guard","Dornogal",nil,110000,nil,nil,{{12,222798},{8,222800},{1,222799},{11,222806},},2},
--riptide trading post
{"Riptide","Riptide",nil,110000,nil,nil,{{14,219712},{5,219706},{6,219703},{16,219716},{2,219715},},2},

--pre-patch event
{"Dalaran Defender","TWW Pre-Patch",nil,110000,nil,nil,{{5,218264},{14,218246},{8,218260},{16,218259},{11,218257},{12,218256},{9,218253},{15,218251},{13,218249},{10,218248},{4,218244},{1,218241},}},
{"Arcane Prisoner","TWW Pre-Patch",nil,110000,nil,nil,{{10,222935},{4,222937},{6,222936},{12,222809},},nil,2},--this was rares on isle of dorn except shield which was fished

--winter veil
{"Candied","Winter Veil",nil,110007,nil,nil,{{15,227766},{13,227765},{5,227764},{9,227763},{14,193800},{12,229194},},2},
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
    local itemLink = select(2,C_Item.GetItemInfo(itemID));
    if itemLink then
      return "Item: "..itemLink;
    else
      local _,_,_,color = C_Item.GetItemQualityColor(labelTable[3]);
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
    local factionName = C_Reputation.GetFactionDataByID(labelTable[3]).name;
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
      data.requiredFaction = db[i][10];
      if db[i][8] == 1 then
        data.isPvP = true;
      elseif db[i][8] == 2 then
        data.tp = true;
        if db[i][5] == nil then
          db[i][5] = "Trading Post";
        elseif db[i][6] == nil then
          db[i][6] = "Trading Post";
        end
      end
      if db[i][9] == 1 then
        data.noLongerObtainable = true;
      elseif db[i][9] == 2 then
        data.limitedTimeSet = true;
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