--[[
  Objects
]]

--[[
  Vehicles
]]

--[[
  Weapons
]]
function GetWeaponName(weaponID)
  if WEAPON_DATA[weaponID] == nil then return false end
  return WEAPON_DATA[weaponID]['name']
end

function GetWeaponByName(weaponName)
  for i, v in ipairs(WEAPON_DATA) do
    -- Name
    if string.lower(v['name']) == string.lower(weaponName) then
      return i
    end

    -- Alias
    for _, va in ipairs(WEAPON_DATA[i]['alias']) do
      if string.lower(va) == string.lower(weaponName) then
        return i
      end
    end
  end

  return 0
end

--[[
  Doors
]]

--[[
  Clothing
]]