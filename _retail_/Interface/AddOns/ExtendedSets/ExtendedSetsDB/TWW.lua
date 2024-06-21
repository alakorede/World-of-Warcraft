local app = select(2,...);

local expansionID = 10;
--start of nerubian raid -- 91493

--Name, Description, Label, classMask, patchID, sources, requiredFact, noLongerObtainable
----classMask:    (35=Plate, 68=Mail, 3592=Leather, 400=Cloth)
local db = {

};

--[setID] = "label"
local altLabelDB = {

}

--Used to add alternate appearances to blizzard sets
--SetID, OriginalSourceID, AlternateApperanceID
local altAppearancesDB = {

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