//===========================================================================
//
// Sergeant / Shotgun guy (Bipedicus)
//
//===========================================================================

class MyFlemoidusBipedicus : FlemoidusBipedicus
{
    Default
    {
        SeeSound "chex_quest/shotguy/sight";
		AttackSound "chex_quest/shotguy/attack";
		PainSound "chex_quest/shotguy/pain";
		DeathSound "chex_quest/shotguy/death";
		ActiveSound "chex_quest/shotguy/active";
		BloodType "ChexBlood";
		+NOBLOODDECALS
    }
	States
	{
	Spawn:
		CQ01 AB 10 A_Look;
		Loop;
	See:
		CQ01 AABBCCDD 3 A_Chase;
		Loop;
	Missile:
		Stop;
	Melee:
        CQ01 E 10 A_FaceTarget;
		CQ01 F 10 BRIGHT A_ChexSposAttackUseAtkSound;
		CQ01 E 10;
		Goto See;
	Pain:
		CQ01 G 3;
		CQ01 G 3 A_Pain;
		Goto See;
	Death:
		CQ01 H 5;
		CQ01 I 5 A_Scream;
		CQ01 J 5 A_NoBlocking;
		CQ01 K 5;
		CQ01 L -1;
		Stop;
	XDeath:
		CQ01 M 5;
		CQ01 N 5 A_XScream;
		CQ01 O 5 A_NoBlocking;
		CQ01 PQRST 5;
		CQ01 U -1;
		Stop;
	Raise:
		CQ01 L 5;
		CQ01 KJIH 5;
		Goto See;
	}

	void A_ChexSPosAttackUseAtkSound()
	{
		if (target)
		{
			A_StartSound(AttackSound, CHAN_WEAPON);
			A_FaceTarget();
			double bangle = angle;
			double slope = AimLineAttack(bangle, MISSILERANGE);
		
			for (int i=0 ; i<3 ; i++)
			{
				double ang = bangle + Random2[SPosAttack]() * (22.5/256);
				int damage = Random[SPosAttack](1, 5) * 3;
				LineAttack(ang, MISSILERANGE, slope, damage, "Hitscan", "ChexQuestBulletpuff");
			}
		}
	}
}

//===========================================================================
//
// Commonus
//
//===========================================================================

class MyFlemoidusCommonus : FlemoidusCommonus
{
    Default
    {
        SeeSound "chex_quest/shotguy/sight";
		AttackSound "chex_quest/shotguy/attack";
		PainSound "chex_quest/shotguy/pain";
		DeathSound "chex_quest/shotguy/death";
		ActiveSound "chex_quest/shotguy/active";
		BloodType "ChexBlood";
		+NOBLOODDECALS
    }
	States
	{
	Spawn:
		CQ02 AB 10 A_Look;
		Loop;
	See:
		CQ02 AABBCCDD 4 A_Chase;
		Loop;
	Missile:
		Stop;
    Melee:
		CQ02 E 10 A_FaceTarget;
		CQ02 F 8 A_ChexPosAttack;
		CQ02 E 8;
		Goto See;
	Pain:
		CQ02 G 3;
		CQ02 G 3 A_Pain;
		Goto See;
	Death:
		CQ02 H 5;
		CQ02 I 5 A_Scream;
		CQ02 J 5 A_NoBlocking;
		CQ02 K 5;
		CQ02 L -1;
		Stop;
	XDeath:
		CQ02 M 5;
		CQ02 N 5 A_XScream;
		CQ02 O 5 A_NoBlocking;
		CQ02 PQRST 5;
		CQ02 U -1;
		Stop;
	Raise:
		CQ02 K 5;
		CQ02 JIH 5;
		Goto See;
    }

	void A_ChexPosAttack()
	{
		if (target)
		{
			A_FaceTarget();
			double ang = angle;
			double slope = AimLineAttack(ang, MISSILERANGE);
			A_StartSound("chex_quest/pistol", CHAN_WEAPON);
			ang  += Random2[PosAttack]() * (22.5/256);
			int damage = Random[PosAttack](1, 5) * 3;
			LineAttack(ang, MISSILERANGE, slope, damage, "Hitscan", "ChexQuestBulletpuff");
		}
	}
}

class MyChexGasTank : ChexGasTank
{
  States
  {
	Spawn:
		CQ03 A -1 Bright;
		Stop;
  }
}

class MyChexFlagOnPole : ChexFlagOnPole
{
	States
	{
	Spawn:
		CQ04 A -1;
		Stop;
	}
}

class MyPropHangingPlant1 : NonsolidMeat2
{
	Default
	{
		Height 64;
	}
	States
	{
	Spawn:
		CQ05 A -1;
		Stop;		
	}
}

class MyPropHangingPlant2 : NonsolidMeat3
{
	Default
	{
		Height 64;
	}
	States
	{
	Spawn:
		CQ06 A -1;
		Stop;
	}
}

class MyBowlOfFruit : BowlOfFruit
{
	States
	{
	Spawn:
		CQ07 A -1;
		Stop;
	}
}

class MyBowlOfVegetables : BowlOfVegetables
{
	States
	{
	Spawn:
		CQ08 A -1;
		Stop;
	}
}

class MySlimeRepellent : SlimeRepellent
{
	States
	{
	Spawn:
		CQ09 ABCDCB 6;
		Stop;
	}
}

class MyChexArmor : ChexArmor
{
	States
	{
	Spawn:
		CQ10 A 6;
		CQ10 B 7 bright;
		loop;
	}
}

class MyMiniZorchPack : MiniZorchPack
{
	States
	{
	Spawn:
		CQ11 A -1;
		Stop;
	}
}

class MyLargeZorchPack : LargeZorchPack
{
	States
	{
	Spawn:
		CQ12 A -1;
		Stop;
	}
}

// SHTG=CQ14
// SHTF=CQ15
class MyLargeZorcher : LargeZorcher
{
	Default
	{
		Inventory.PickupSound "chex_quest/weapon_pickup";
		Weapon.SlotNumber 3;
	}
	States
	{
	Ready:
		CQ14 A 1 A_WeaponReady;
		Loop;
	Deselect:
		CQ14 A 1 A_Lower;
		Loop;
	Select:
		CQ14 A 1 A_Raise;
		Loop;
	Fire:
		CQ14 A 3;
		CQ14 A 7 A_FireLargeZorcher;
		CQ14 BC 5;
		CQ14 D 4;
		CQ14 CB 5;
		CQ14 A 3;
		CQ14 A 7 A_ReFire;
		Goto Ready;
	Flash:
		CQ15 A 4 Bright A_Light1;
		CQ15 B 3 Bright A_Light2;
		Goto LightDone;
	Spawn:
		CQ13 A -1;
		Stop;
	}

	action void A_FireLargeZorcher()
	{
		if (player == null)
		{
			return;
		}

		A_StartSound ("chex_quest/weapons/shotgf", CHAN_WEAPON);
		Weapon weap = player.ReadyWeapon;
		if (weap != null && invoker == weap && stateinfo != null && stateinfo.mStateType == STATE_Psprite)
		{
			if (!weap.DepleteAmmo (weap.bAltFire, true, 1))
				return;
			
			player.SetPsprite(PSP_FLASH, weap.FindState('Flash'), true);
		}
		player.mo.PlayAttacking2 ();

		double pitch = BulletSlope ();

		for (int i = 0; i < 7; i++)
		{
			GunShot (false, "ChexQuestBulletPuff", pitch);
		}
	}
}

class ChexQuestBulletPuff : BulletPuff
{
	States
	{
	Spawn:
		CQ16 A 4 Bright;
		CQ16 B 4;
	Melee:
		CQ16 CD 4;
		Stop;
	}
}

class ChexBlood : Actor
{
	States
	{
	Spawn:
		CQ17 CBA 8;
		Stop;
	Spray:
		SPRY ABCDEF 3;
		SPRY G 2;
		Stop;
	}
}

class MySuperBootspork : SuperBootspork
{
	Default
	{
		Weapon.UpSound "chex_quest/weapons/sawup";
		Weapon.ReadySound "chex_quest/weapons/sawidle";
		Inventory.PickupSound "chex_quest/weapon_pickup";
		Weapon.SlotNumber 1;
	}
	States
	{
	Ready:
		CQ19 CD 4 A_WeaponReady;
		Loop;
	Deselect:
		CQ19 C 1 A_Lower;
		Loop;
	Select:
		CQ19 C 1 A_Raise;
		Loop;
	Fire:
		CQ19 AB 4 A_ChexSaw;
		CQ19 B 0 A_ReFire;
		Goto Ready;
	Spawn:
		CQ18 A -1;
		Stop;
	}

	action void A_ChexSaw(sound fullsound = "chex_quest/weapons/sawfull", sound hitsound = "chex_quest/weapons/sawhit", int damage = 2, class<Actor> pufftype = "ChexQuestBulletPuff", int flags = 0, double range = 0, double spread_xy = 2.8125, double spread_z = 0, double lifesteal = 0, int lifestealmax = 0, class<BasicArmorBonus> armorbonustype = "ArmorBonus")
	{
		FTranslatedLineTarget t;

		if (player == null)
		{
			return;
		}

		if (pufftype == null)
		{
			pufftype = 'ChexQuestBulletPuff';
		}
		if (damage == 0)
		{
			damage = 2;
		}
		if (!(flags & SF_NORANDOM))
		{
			damage *=  random[Saw](1, 10);
		}
		if (range == 0)
		{ 
			range = MeleeRange + MELEEDELTA + (1. / 65536.); // MBF21 SAWRANGE;
		}

		double ang = angle + spread_xy * (Random2[Saw]() / 255.);
		double slope = AimLineAttack (ang, range, t) + spread_z * (Random2[Saw]() / 255.);

		Weapon weap = player.ReadyWeapon;
		if (weap != null && !(flags & SF_NOUSEAMMO) && !(!t.linetarget && (flags & SF_NOUSEAMMOMISS)) && !weap.bDehAmmo &&
			invoker == weap && stateinfo != null && stateinfo.mStateType == STATE_Psprite)
		{
			if (!weap.DepleteAmmo (weap.bAltFire))
				return;
		}

		int puffFlags = (flags & SF_NORANDOMPUFFZ) ? LAF_NORANDOMPUFFZ : 0;

		Actor puff;
		int actualdamage;
		[puff, actualdamage] = LineAttack (ang, range, slope, damage, 'Melee', pufftype, puffFlags, t);

		if (!t.linetarget)
		{
			if ((flags & SF_RANDOMLIGHTMISS) && (Random[Saw]() > 64))
			{
				player.extralight = !player.extralight;
			}
			A_StartSound (fullsound, CHAN_WEAPON);
			return;
		}

		if (flags & SF_RANDOMLIGHTHIT)
		{
			int randVal = Random[Saw]();
			if (randVal < 64)
			{
				player.extralight = 0;
			}
			else if (randVal < 160)
			{
				player.extralight = 1;
			}
			else
			{
				player.extralight = 2;
			}
		}

		if (lifesteal && !t.linetarget.bDontDrain)
		{
			if (flags & SF_STEALARMOR)
			{
				if (armorbonustype == null)
				{
					armorbonustype = "ArmorBonus";
				}
				if (armorbonustype != null)
				{
					BasicArmorBonus armorbonus = BasicArmorBonus(Spawn(armorbonustype));
					armorbonus.SaveAmount = int(armorbonus.SaveAmount * actualdamage * lifesteal);
					armorbonus.MaxSaveAmount = lifestealmax <= 0 ? armorbonus.MaxSaveAmount : lifestealmax;
					armorbonus.bDropped = true;
					armorbonus.ClearCounters();

					if (!armorbonus.CallTryPickup (self))
					{
						armorbonus.Destroy ();
					}
				}
			}

			else
			{
				GiveBody (int(actualdamage * lifesteal), lifestealmax);
			}
		}

		A_StartSound (hitsound, CHAN_WEAPON);
			
		// turn to face target
		if (!(flags & SF_NOTURN))
		{
			double anglediff = deltaangle(angle, t.angleFromSource);

			if (anglediff < 0.0)
			{
				if (anglediff < -4.5)
					angle = t.angleFromSource + 90.0 / 21;
				else
					angle -= 4.5;
			}
			else
			{
				if (anglediff > 4.5)
					angle = t.angleFromSource - 90.0 / 21;
				else
					angle += 4.5;
			}
		}
		if (!(flags & SF_NOPULLIN))
			bJustAttacked = true;
	}
}