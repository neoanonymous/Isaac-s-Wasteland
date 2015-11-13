//	@file Version: 1.01
//	@file Name: default_gear.sqf
//	@file Author: Mike Lowrey, Very much a copy of AgentRevs admins.sqf
//	@file Created: 20140906 01:45

/*
	The gear.sqf is to be place in the external config folder, that file overrides this one.
	If the external file isnt present the settings from this file is used instead.
	Add "[] execVM "addons\gear\gearCheck.sqf";"
	to the client\functions\spawnAction.sqf
	Add "[] execVM "addons\gear\default_gear.sqf";"
	to the main init.
*/

if (!isServer) exitWith {};

if (loadFile (externalConfigFolder + "gear.sqf") != "") then
{
	call compile preprocessFileLineNumbers (externalConfigFolder + "gear.sqf");
}
else
{

	/*******************************************************
	 Player UID examples :
	[
		"1234567887654321", // Meatwad
		"8765432112345678", // Master Shake
		"1234876543211234", // Frylock
		"1337133713371337"  // Carl
	];
	 Important: Don't put a comma (,) at the end of the last one
	********************************************************/

	// gearLevel1
	gearLevel1 = compileFinal str
	[
	 // Put player UIDs here
	];

	// gearLevel2
	gearLevel2 = compileFinal str
	[
		// put player UID here
	];

	// gearLevel3
	gearLevel3 = compileFinal str
	[
	
	];
	
	// gearLevel4
	gearLevel4 = compileFinal str
	[
		// Put player UIDs here
	];
	
	// gearLevel5
	gearLevel5 = compileFinal str
	[
		// Put player UIDs here
	];
	
	// gearLevel6
	gearLevel6 = compileFinal str
	[
	
	];
	
	// gearLevel7
	gearLevel7 = compileFinal str
	[
		"76561198020048396" // Bailey
	];
	
	// gearLevel8
	gearLevel8 = compileFinal str
	[
		
		"76561198045606846" //Jinks
	];
	
	// gearLevel9
	gearLevel9 = compileFinal str
	[
		"76561198157506976", // 49Lone82
		"76561198088088293" // Isaac
		
	];
	
	// gearLevel10
	gearLevel10 = compileFinal str
	[
		// put player UID here
	];

	/********************************************************/
};

if (typeName gearLevel1 == "ARRAY") then { gearLevel1 = compileFinal str gearLevel1 };
if (typeName gearLevel2 == "ARRAY") then { gearLevel2 = compileFinal str gearLevel2 };
if (typeName gearLevel3 == "ARRAY") then { gearLevel3 = compileFinal str gearLevel3 };
if (typeName gearLevel4 == "ARRAY") then { gearLevel4 = compileFinal str gearLevel4 };
if (typeName gearLevel5 == "ARRAY") then { gearLevel5 = compileFinal str gearLevel5 };
if (typeName gearLevel6 == "ARRAY") then { gearLevel6 = compileFinal str gearLevel6 };
if (typeName gearLevel7 == "ARRAY") then { gearLevel7 = compileFinal str gearLevel7 };
if (typeName gearLevel8 == "ARRAY") then { gearLevel8 = compileFinal str gearLevel8 };
if (typeName gearLevel9 == "ARRAY") then { gearLevel9 = compileFinal str gearLevel9 };
if (typeName gearLevel10 == "ARRAY") then { gearLevel10 = compileFinal str gearLevel10 };

publicVariable "gearLevel1";
publicVariable "gearLevel2";
publicVariable "gearLevel3";
publicVariable "gearLevel4";
publicVariable "gearLevel5";
publicVariable "gearLevel6";
publicVariable "gearLevel7";
publicVariable "gearLevel8";
publicVariable "gearLevel9";
publicVariable "gearLevel10";
