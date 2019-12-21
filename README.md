# onset-data
Authors: Digital

Feel free to submit pull requests, I plan on adding all class names for objects, vehicles, doors, weapons and clothing.

### Features
* Adds all weapon class names, WEAPON_COLT, WEAPON_DEAGLE, etc.
* Useful functions for weapons.

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
AddPlayerChat(GetWeaponName(WEAPON_COLT))

-- Find a weapon ID by its name.
local _myWeaponID = GetWeaponByName('Deagle')
AddPlayerChat(_myWeaponID)
```

### Functions
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
