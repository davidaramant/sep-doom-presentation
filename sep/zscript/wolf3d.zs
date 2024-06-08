class ClassicDecoration : Actor
{
	Default
	{
		//$Category Wolfenstein 3D/Decorations
		//$NotAngled

		+SOLID		//Combining 'Solid' with a Height of 0 lets actors
		Radius 32;	// walk over these seamlessly if the actor has the
		Height 0;	// CANPASS flag...  Otherwise they are blocked.
	}

	States
	{
		Spawn:
			UNKN A -1;
			Stop;
	}
}

class HangingChandelier : ClassicDecoration
{
	Default
	{
		//$Title Hanging Chandelier
		-SOLID
		+SPAWNCEILING
		+NOGRAVITY
		Height 64;
	}

	States
	{
		Spawn:
			LIT3 A -1 Bright;
			Stop;
	}
} 

class PlantinVase : ClassicDecoration
{
	Default
	{
		//$Title Vase (with plant)
		Height 50;
	}

	States
	{
		Spawn:
			PLT2 A -1;
			Stop;
	}
} 

class GreenCeilingLight : ClassicDecoration
{
	Default
	{
		//$Title Ceiling Light (Green)
		-SOLID
		+SPAWNCEILING
		+NOGRAVITY
		Height 64;
	}

	States
	{
		Spawn:
			LIT5 A -1 Bright;
			Stop;
	}
}