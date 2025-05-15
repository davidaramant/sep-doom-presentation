//===========================================================================
//
// Sergeant / Shotgun guy (Bipedicus)
//
//===========================================================================

class MyFlemoidusBipedicus : FlemoidusBipedicus
{
    Default
    {
        // TODO
        SeeSound "kick_attack/shotguy/sight";
		AttackSound "kick_attack/shotguy/attack";
		PainSound "kick_attack/shotguy/pain";
		DeathSound "kick_attack/shotguy/death";
		ActiveSound "kick_attack/shotguy/active";
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
		CQ01 F 10 BRIGHT A_SposAttackUseAtkSound; // TODO
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
        // TODO
        SeeSound "kick_attack/shotguy/sight";
		AttackSound "kick_attack/shotguy/attack";
		PainSound "kick_attack/shotguy/pain";
		DeathSound "kick_attack/shotguy/death";
		ActiveSound "kick_attack/shotguy/active";
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
		CQ02 F 8 A_PosAttack; // TODO
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
		CQ14 A 7 A_FireShotgun;
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
}