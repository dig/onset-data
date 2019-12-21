# onset-data
Authors: Digital

### Features
* Set camera to pan a location.
* Set camera on paths.

### Installation
Download all files from this repository and place them inside your package.
Add the following to your client_scripts in package.json,
```json
    "data/util.lua",
    "data/weapons.lua"
```
Add the following to your server_scripts in package.json,
```json
    "data/util.lua",
    "data/weapons.lua"
```

### Example
```lua
-- Display weapon ID 5's name.
AddPlayerChat(GetWeaponName(5))

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
* **weaponName** Search for a weapon ID from it's name. Example: Deagle
<br />Returns a weapon ID integer, if weapon cannot be found then 0 will be returned.
