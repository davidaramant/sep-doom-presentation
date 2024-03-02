version "4.9.0"

class MikoCompatHandler : StaticEventHandler
{
	override void WorldThingSpawned (WorldEvent e)
	{
		let mo = e.thing;
		//Console.Printf("Creating MikoCompatThinker for an instance of " .. mo.GetClassName());
		MikoCompatThinker.Create(mo);
	}
}

class MikoCompatThinker : Thinker
{
	const FLOOR_THRESHOLD = -32768;
	Actor owner;

	static void Create (Actor mo)
	{
		let thonker = new("MikoCompatThinker");
		thonker.ChangeStatNum(STAT_FIRST_THINKING); //Tick before any actor ticks!
		thonker.owner = mo;
	}

	override void Tick ()
	{
		if (!owner)
		{
			Destroy(); //No owner == no reason to exist
			return;
		}

		if (owner.floorZ <= FLOOR_THRESHOLD) //Are we in a mikoportal sector?
		{
			bool voodooDoll = (owner.player && owner.player.mo != owner);

			// Keep the Z velocity reasonable - if we don't do this then we'll
			// start floating downward very slowly (despite the downward velocity being much greater)
			// No, I'm not kidding.
			// (Seems like the renderer can't handle the speed and causes an optical illusion?)
			if (!voodooDoll)
				owner.vel.z = max(owner.vel.z, -180);

			if (owner.ceilingZ - owner.floorZ - 16 < owner.height)
			{
				//For miko_01.wad's voodoo doll - if the vertical space is too small
				//then just keep it slightly above its "floorz" - this allows it to
				//slide across the floor.
				owner.SetZ(owner.floorZ + 1);
			}
			else if (voodooDoll && owner.pos.z <= FLOOR_THRESHOLD)
			{
				//Special case for voodoo dolls used for the "conveyor belt linedef scripting" trick.
				//It makes a difference on brexit.wad speedwise.
				owner.SetZ(owner.ceilingZ);
			}
			else if (!voodooDoll && owner.pos.z + owner.vel.z <= FLOOR_THRESHOLD && owner.pos.xy != owner.spawnPoint.xy)
			{
				//For miko_01.wad's health bonus next to the voodoo doll - check if the actor has
				//moved away from its "spawnPoint" before setting Z.
				//If this isn't done, that health bonus would start teleporting to the ceiling constantly.
				//
				//Notice the "owner.pos.z + owner.vel.z" check. We're trying to teleport to the ceiling
				//*before* hitting the floor - that way we avoid hearing DoomGuy's unf sound
				//and the result is much closer to what you would get in Chocolate Doom.
				owner.SetZ(owner.ceilingZ);
			}
		}
	}
}
