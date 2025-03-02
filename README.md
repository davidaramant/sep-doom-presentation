# sep-doom-presentation

## Credits

* Mikoportal compatibility - Taken from Fishytza's `fcw_mikocompat-take2.pk3` found on the [ZDoom Forums](https://forum.zdoom.org/viewtopic.php?t=76809&)
* Skyboxes - `SB_DooM.zip` (did not include author information; don't remember where I downloaded it from)
* AFADoomer's [Wolf3D TC](https://github.com/AFADoomer/Wolf3D/)
* [Kick Attack!](https://www.doomworld.com/idgames/levels/doom2/j-l/kickdm2)
* [Chex Quest 3](https://www.chexquest3.com/downloads/)
* Hovertank 3D sprites - downloaded from somewhere online

## Aliases for Strafe Running

INI file location:

* Windows: `Documents\My Games\GZDoom\gzdoom.ini`
* macOS: `~/Library/Preferences/gzdoom.ini`  

```
[Doom.ConsoleAliases]
Name=-sr50left
Command=-strafe; -left; -moveleft; -forward
Name=+sr50left
Command=+strafe; +left; +moveleft; +forward
Name=+sr40right
Command=+moveright; +forward
Name=-sr50right
Command=-strafe; -right; -moveright; -forward
Name=-sr40right
Command=-moveright; -forward
Name=+sr50right
Command=+strafe; +right; +moveright; +forward
Name=-sr40left
Command=-moveleft; -forward
Name=+sr40left
Command=+moveleft; +forward
```
