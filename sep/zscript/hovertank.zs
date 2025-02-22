class HovertankKid : Actor
{
	Default
	{
		Radius 8;
		Height 16;
	}
	States
	{
		Spawn:
			KIDB A 12;
			KIDB B 12;
			Loop;
	}
}

class HovertankSquid : Actor
{
	Default
	{
		Radius 8;
		Height 16;
	}
	States
	{
		Spawn:
			SQUD A 6;
			SQUD B 6;
			SQUD C 6;
			SQUD D 6;
			Loop;
	}
}