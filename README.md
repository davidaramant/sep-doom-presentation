# sep-doom-presentation

## Mikoportal compatibility

Taken from Fishytza's `fcw_mikocompat-take2.pk3` found on the [ZDoom Forums](https://forum.zdoom.org/viewtopic.php?t=76809&).

## Aliases for Strafe Running

INI file location:

* Windows: `Documents\My Games\GZDoom\gzdoom.ini`
* macOS: TBD  

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