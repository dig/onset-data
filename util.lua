--[[
  @author Digital.
  @url https://github.com/dig/onset-data
]]

--[[
  Objects
]]

--[[
  Vehicles
]]
function GetVehicleName(vehicleID)
  if VEHICLE_DATA[vehicleID] == nil then return false end
  return VEHICLE_DATA[vehicleID]['name']
end

function GetVehicleByName(vehicleName)
  for i, v in ipairs(VEHICLE_DATA) do
    -- Name
    if string.lower(v['name']) == string.lower(vehicleName) then
      return i
    end

    -- Alias
    for _, va in ipairs(VEHICLE_DATA[i]['alias']) do
      if string.lower(va) == string.lower(vehicleName) then
        return i
      end
    end
  end

  return 0
end

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