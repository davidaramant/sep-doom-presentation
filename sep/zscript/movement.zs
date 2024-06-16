class PlayerMarker : Actor
{
	Default
	{
		Radius 16;
		Height 56;
		RenderStyle "Translucent";
		Alpha 0.75;
	}
	States
	{
		Spawn:
			PLAY A -1;
			Stop;
	}
}

class ProgressMarker : Actor
{
	Default
	{
		Radius 8;
		Height 16;
		+NOGRAVITY;
	}
	States
	{
		Spawn:
			PLSS A 10;
			PLSS B 10;
			Loop;
	}
}