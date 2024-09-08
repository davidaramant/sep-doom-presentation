// Light

class KickColumn : Column
{
	States
	{
	Spawn:
		K000 A -1 BRIGHT;
		Stop;
	}
}

class KickTechLamp : TechLamp
{
	States
	{
	Spawn:
		K001 ABCD 4 BRIGHT;
		Loop;
	}
}

// Obstacle

class KickTechPillar : TechPillar
{
	States
	{
	Spawn:
		K002 A -1;
		Stop;
	}
}

// Key

class KickRedCard : RedCard
{
	States
	{
	Spawn:
		K003 A 10;
		K003 B 10 bright;
		loop;
	}
}

class KickYellowCard : YellowCard
{
	States
	{
	Spawn:
		K004 A 10;
		K004 B 10 bright;
		loop;
	}
}

class KickBlueCard : BlueCard
{
	States
	{
	Spawn:
		K005 A 10;
		K005 B 10 bright;
		loop;
	}
}

// Health

class KickMedikit : Medikit
{
	States
	{
	Spawn:
		K006 A -1;
		Stop;
	}
}

class KickStimpack : Stimpack
{
	States
	{
	Spawn:
		K007 A -1;
		Stop;
	}
}

class KickHealthBonus : HealthBonus
{
	States
	{
	Spawn:
		K008 ABCDCB 6;
		Loop;
	}
}

class KickArmorBonus : ArmorBonus
{
	States
	{
	Spawn:
		K009 ABCDCB 6;
		loop;
	}
}

// Ammunition

class KickClip : Clip
{
	States
	{
	Spawn:
		K010 A -1;
		Stop;
	}
}

class KickShell : Shell
{
	States
	{
	Spawn:
		K011 A -1;
		Stop;
	}
}

class KickShellBox : ShellBox
{
	States
	{
	Spawn:
		K012 A -1;
		Stop;
	}
}

class KickRocketBox : RocketBox
{
	States
	{
	Spawn:
		K013 A -1;
		Stop;
	}
}

class KickClipBox : ClipBox
{
	States
	{
	Spawn:
		K014 A -1;
		Stop;
	}
}

class KickRocketAmmo : RocketAmmo
{
	States
	{
	Spawn:
		K015 A -1;
		Stop;
	}
}

class KickCell : Cell
{
	States
	{
	Spawn:
		K016 A -1;
		Stop;
	}
}

class KickCellPack : CellPack
{
	States
	{
	Spawn:
		K017 A -1;
		Stop;
	}
}

// Powerup

class KickSoulsphere : Soulsphere
{
	States
	{
	Spawn:
		K018 ABCDCB 6 Bright;
		Loop;
	}
}

// Weapon

class KickRocketLauncher : RocketLauncher
{
	States
	{
	Ready:
		K019 A 1 A_WeaponReady;
		Loop;
	Deselect:
		K019 A 1 A_Lower;
		Loop;
	Select:
		K019 A 1 A_Raise;
		Loop;
	Fire:
		K019 B 8 A_GunFlash;
		K019 B 12 A_FireMissile;
		K019 B 0 A_ReFire;
		Goto Ready;
	Flash:
		K020 A 3 Bright A_Light1;
		K020 B 4 Bright;
		K020 CD 4 Bright A_Light2;
		Goto LightDone;
	Spawn:
		K021 A -1;
		Stop;
	}
}

class KickRocket : Rocket
{
    Default
    {
        SeeSound "kick_attack/weapons/rocklf";
    }
	States
	{
	Spawn:
		K040 A 1 Bright;
		Loop;
	Death:
		K040 B 8 Bright A_Explode;
		K040 C 6 Bright;
		K040 D 4 Bright;
		Stop;
	BrainExplode:
		K040 BC 10 Bright;
		K040 D 10 A_BrainExplode;
		Stop;
	}
}

class KickPlasmaRifle : PlasmaRifle
{
	States
	{
	Ready:
		K022 A 1 A_WeaponReady;
		Loop;
	Deselect:
		K022 A 1 A_Lower;
		Loop;
	Select:
		K022 A 1 A_Raise;
		Loop;
	Fire:
		K022 A 3 A_FirePlasma;
		K022 B 20 A_ReFire;
		Goto Ready;
	Flash:
		K023 A 4 Bright A_Light1;
		Goto LightDone;
		K023 B 4 Bright A_Light1;
		Goto LightDone;
	Spawn:
		K024 A -1;
		Stop;
	}
}

class KickPlasmaBall : PlasmaBall
{
    Default
    {
		DeathSound "kick_attack/weapons/plasmax";
    }
	States
	{
	Spawn:
		K038 AB 6 Bright;
		Loop;
	Death:
		K039 ABCDE 4 Bright;
		Stop;
	}
}

class KickShotgun : Shotgun
{
	States
	{
	Ready:
		K025 A 1 A_WeaponReady;
		Loop;
	Deselect:
		K025 A 1 A_Lower;
		Loop;
	Select:
		K025 A 1 A_Raise;
		Loop;
	Fire:
		K025 A 3;
		K025 A 7 A_FireShotgun;
		K025 BC 5;
		K025 D 4;
		K025 CB 5;
		K025 A 3;
		K025 A 7 A_ReFire;
		Goto Ready;
	Flash:
		K026 A 4 Bright A_Light1;
		K026 B 3 Bright A_Light2;
		Goto LightDone;
	Spawn:
		K027 A -1;
		Stop;
	}
}

class KickChaingun : Chaingun
{
	States
	{
	Ready:
		K028 A 1 A_WeaponReady;
		Loop;
	Deselect:
		K028 A 1 A_Lower;
		Loop;
	Select:
		K028 A 1 A_Raise;
		Loop;
	Fire:
		K028 AB 4 A_FireCGun;
		K028 B 0 A_ReFire;
		Goto Ready;
	Flash:
		K029 A 5 Bright A_Light1;
		Goto LightDone;
		K029 B 5 Bright A_Light2;
		Goto LightDone;
	Spawn:
		K030 A -1;
		Stop;
	}
}

class KickFist : Fist
{
	States
	{
	Ready:
		K041 A 1 A_WeaponReady;
		Loop;
	Deselect:
		K041 A 1 A_Lower;
		Loop;
	Select:
		K041 A 1 A_Raise;
		Loop;
	Fire:
		K041 B 4;
		K041 C 4 A_Punch;
		K041 D 5;
		K041 C 4;
		K041 B 5 A_ReFire;
		Goto Ready;
	}
}

class KickPistol : Pistol
{
	States
	{
	Ready:
		K042 A 1 A_WeaponReady;
		Loop;
	Deselect:
		K042 A 1 A_Lower;
		Loop;
	Select:
		K042 A 1 A_Raise;
		Loop;
	Fire:
		K042 A 4;
		K042 B 6 A_FirePistol;
		K042 C 4;
		K042 B 5 A_ReFire;
		Goto Ready;
	Flash:
		K043 A 7 Bright A_Light1;
		Goto LightDone;
		K043 A 7 Bright A_Light1;
		Goto LightDone;
 	Spawn:
		K044 A -1;
		Stop;
	}
}

class KickBulletPuff : BulletPuff
{
	States
	{
	Spawn:
		K036 A 4 Bright;
		K036 B 4;
	Melee:
		K036 CD 4;
		Stop;
	}
}

// Monster

class KickShotgunGuy : ShotgunGuy
{
    Default
    {
        SeeSound "kick_attack/shotguy/sight";
		AttackSound "kick_attack/shotguy/attack";
		PainSound "kick_attack/shotguy/pain";
		DeathSound "kick_attack/shotguy/death";
		ActiveSound "kick_attack/shotguy/active";
        DropItem "KickShotgun";
    }
	States
	{
	Spawn:
		K031 AB 10 A_Look;
		Loop;
	See:
		K031 AABBCCDD 3 A_Chase;
		Loop;
	Missile:
		K031 E 10 A_FaceTarget;
		K031 F 10 BRIGHT A_SposAttackUseAtkSound;
		K031 E 10;
		Goto See;
	Pain:
		K031 G 3;
		K031 G 3 A_Pain;
		Goto See;
	Death:
		K031 H 5;
		K031 I 5 A_Scream;
		K031 J 5 A_NoBlocking;
		K031 K 5;
		K031 L -1;
		Stop;
	XDeath:
		K031 M 5;
		K031 N 5 A_XScream;
		K031 O 5 A_NoBlocking;
		K031 PQRST 5;
		K031 U -1;
		Stop;
	Raise:
		K031 L 5;
		K031 KJIH 5;
		Goto See;
	}
}

class KickDoomImp : DoomImp
{
    Default
	{
		SeeSound "kick_attack/imp/sight";
		PainSound "kick_attack/imp/pain";
		DeathSound "kick_attack/imp/death";
		ActiveSound "kick_attacl/imp/active";
	}
	States
	{
	Spawn:
		K032 AB 10 A_Look;
		Loop;
	See:
		K032 AABBCCDD 3 A_Chase;
		Loop;
	Melee:
	Missile:
		K032 EF 8 A_FaceTarget;
		K032 G 6 A_KickTroopAttack ;
		Goto See;
	Pain:
		K032 H 2;
		K032 H 2 A_Pain;
		Goto See;
	Death:
		K032 I 8;
		K032 J 8 A_Scream;
		K032 K 6;
		K032 L 6 A_NoBlocking;
		K032 M -1;
		Stop;
	XDeath:
		K032 N 5;
		K032 O 5 A_XScream;
		K032 P 5;
		K032 Q 5 A_NoBlocking;
		K032 RST 5;
		K032 U -1;
		Stop;
	Raise:
		K032 ML 8;
		K032 KJI 6;
		Goto See;
	}

    void A_KickTroopAttack()
	{
		let targ = target;
		if (targ)
		{
			if (CheckMeleeRange())
			{
				int damage = random[pr_troopattack](1, 8) * 3;
				A_StartSound ("kick_attack/imp/melee", CHAN_WEAPON);
				int newdam = targ.DamageMobj (self, self, damage, "Melee");
				targ.TraceBleed (newdam > 0 ? newdam : damage, self);
			}
			else
			{
				// launch a missile
				SpawnMissile (targ, "KickDoomImpBall");
			}
		}
	}
}

class KickDoomImpBall : DoomImpBall
{
    Default
    {
        SeeSound "kick_attack/imp/attack";
		DeathSound "kick_attack/imp/shotx";
    }
	States
	{
	Spawn:
		K037 AB 4 BRIGHT;
		Loop;
	Death:
		K037 CDE 6 BRIGHT;
		Stop;
	}
}

class KickLostSoul : LostSoul
{
    Default
    {
		PainSound "kick_attack/skull/pain";
		DeathSound "kick_attack/skull/death";
		ActiveSound "kick_attack/skull/active";
    }
	States
	{
	Spawn:
		K033 AB 10 BRIGHT A_Look;
		Loop;
	See:
		K033 AB 6 BRIGHT A_Chase;
		Loop;
	Missile:
		K033 C 10 BRIGHT A_FaceTarget;
		K033 D 4 BRIGHT A_SkullAttack;
		K033 CD 4 BRIGHT;
		Goto Missile+2;
	Pain:
		K033 E 3 BRIGHT;
		K033 E 3 BRIGHT A_Pain;
		Goto See;
	Death:
		K033 F 6 BRIGHT;
		K033 G 6 BRIGHT A_Scream;
		K033 H 6 BRIGHT;
		K033 I 6 BRIGHT A_NoBlocking;
		K033 J 6;
		K033 K 6;
		Stop;
	}
}

class KickDemon : Demon
{
    Default
    {
        SeeSound "kick_attack/demon/sight";
		AttackSound "kick_attack/demon/melee";
		PainSound "kick_attack/demon/pain";
		DeathSound "kick_attack/demon/death";
		ActiveSound "kick_attack/demon/active";
    }
	States
	{
	Spawn:
		K034 AB 10 A_Look;
		Loop;
	See:
		K034 AABBCCDD 2 Fast A_Chase;
		Loop;
	Melee:
		K034 EF 8 Fast A_FaceTarget;
		K034 G 8 Fast A_SargAttack;
		Goto See;
	Pain:
		K034 H 2 Fast;
		K034 H 2 Fast A_Pain;
		Goto See;
	Death:
		K034 I 8;
		K034 J 8 A_Scream;
		K034 K 4;
		K034 L 4 A_NoBlocking;
		K034 M 4;
		K034 N -1;
		Stop;
	Raise:
		K034 N 5;
		K034 MLKJI 5;
		Goto See;
	}
}

class KickSpiderMastermind : SpiderMastermind
{
    Default
    {
        PainSound "kick_attack/spider/pain";
        ActiveSound "kick_attack/spider/active";
    }
	States
	{
	Spawn:
		K035 AB 10 A_Look;
		Loop;
	See:
		K035 A 3 A_Metal;
		K035 ABB 3 A_Chase;
		K035 C 3 A_Metal;
		K035 CDD 3 A_Chase;
		K035 E 3 A_Metal;
		K035 EFF 3 A_Chase;
		Loop;
	Missile:
		K035 A 20 BRIGHT A_FaceTarget;
		K035 G 4 BRIGHT A_SPosAttackUseAtkSound;
		K035 H 4 BRIGHT A_SposAttackUseAtkSound;
		K035 H 1 BRIGHT A_SpidRefire;
		Goto Missile+1;
	Pain:
		K035 I 3;
		K035 I 3 A_Pain;
		Goto See;
	Death:
		K035 J 20 A_Scream;
		K035 K 10 A_NoBlocking;
		K035 LMNOPQR 10;
		K035 S 30;
		K035 S -1 A_BossDeath;
		Stop;
	}
}