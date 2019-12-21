# onset-data
Authors: Digital

Feel free to submit pull requests, I plan on adding all class names for objects, vehicles, doors, weapons and clothing.

### Features
* Adds all weapon class names, WEAPON_COLT, WEAPON_DEAGLE, etc.
* Adds all vehicle class names, VEHICLE_GARBAGE_TRUCK_01, VEHICLE_NASCAR_01, etc.
* Useful functions for vehicles & weapons.

### Installation
Download all files from this repository and place them inside your package in a folder called data.
```packages/mypackage/data/```<br />
Add the following to your client_scripts in package.json,
```json
    "data/util.lua",
    "data/clothing.lua",
    "data/doors.lua",
    "data/objects.lua",
    "data/vehicles.lua",
    "data/weapons.lua"
```
Add the following to your server_scripts in package.json,
```json
    "data/util.lua",
    "data/clothing.lua",
    "data/doors.lua",
    "data/objects.lua",
    "data/vehicles.lua",
    "data/weapons.lua"
```

### Example
```lua
-- Display weapon WEAPON_COLT's name.
AddPlayerChat(GetWeaponName(WEAPON_COLT)) -- or GetWeaponName(5)

-- Find a weapon ID by its name.
local _myWeaponID = GetWeaponByName('Deagle')
AddPlayerChat(_myWeaponID)
```

### Functions
#### GetVehicleName
Find a vehicle's name from its ID.
```lua
GetVehicleName(vehicleID)
```
* **vehicleID** A vehicle ID. Example: 5
<br />Returns a string, if vehicle cannot be found then false will be returned.

#### GetVehicleByName
Find a vehicle ID by its name or alias.
```lua
GetVehicleByName(vehicleName)
```
* **vehicleName** The vehicle name you are looking for. Example: Ambulance
<br />Returns a vehicle ID integer, if vehicle cannot be found then 0 will be returned.

#### GetWeaponName
Find a weapon's name from its ID.
```lua
GetWeaponName(weaponID)
```
* **weaponID** A weapon ID. Example: 5
<br />Returns a string, if weapon cannot be found then false will be returned.

#### GetWeaponByName
Find a weapon ID by its name or alias.
```lua
GetWeaponByName(weaponName)
```
* **weaponName** The weapon name you are looking for. Example: Deagle
<br />Returns a weapon ID integer, if weapon cannot be found then 0 will be returned.
