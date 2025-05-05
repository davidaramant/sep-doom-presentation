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