// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: playerSetupGear.sqf
//	@file Author: [GoT] JoSchaap, AgentRev

private ["_player", "_uniform", "_vest", "_headgear", "_goggles"];
_player = _this;

// Clothing is now defined in "client\functions\getDefaultClothing.sqf"

_uniform = [_player, "uniform"] call getDefaultClothing;
_vest = [_player, "vest"] call getDefaultClothing;
_headgear = [_player, "headgear"] call getDefaultClothing;
_goggles = [_player, "goggles"] call getDefaultClothing;

//if (_uniform != "") then { _player addUniform _uniform };
if (_uniform != "") then { _player forceAddUniform _uniform };
if (_vest != "") then { _player addVest _vest };
if (_headgear != "") then { _player addHeadgear _headgear };
if (_goggles != "") then { _player addGoggles _goggles };

sleep 0.1;

// Remove GPS
_player unlinkItem "ItemGPS";

// Remove radio
//_player unlinkItem "ItemRadio";

// Remove NVG
if (hmd _player != "") then { _player unlinkItem hmd _player };

// Add NVG
_player linkItem "NVGoggles";

_player addBackpack "B_FieldPack_blk";
_player forceAddUniform "U_BG_leader";
_player addVest "V_TacVestIR_blk";
_player addMagazines ["100Rnd_65x39_caseless_mag", 4];
_player addWeapon "arifle_MX_SW_F";
_player addPrimaryWeaponItem "optic_Hamr";
_player addItem "HandGrenade";
_player addItem "HandGrenade";
_player addWeapon "Binoculars";
_player addHeadgear "H_Beret_Colonel";
_player  addGoggles "G_Spectacles_Tinted";

//Switch loadous on uid's or default to base loadout
_uid = getPlayerUID player;
if !( (["[Admin]",(name player)] call fn_findString) >= 0) then
{
	switch (_uid) do 
	{
		/*
		case "UIDhere":
		{
			_player 
		};
		*/
		case "76561198088088293": //Isaac
		{
			_player setVariable ["cmoney", (player getVariable "cmoney") + 20000, true];

			removeAllWeapons _player;
			removeUniform _player;
			//removeallitems _player;
			removeVest _player;
			removeBackpack _player;
			removeGoggles _player;
			removeHeadgear _player;

			_player addBackpack "B_Carryall_mcamo";
			_player addUniform "U_I_FullGhillie_sard";
			_player addVest "V_PlateCarrierGL_blk";	
			_player linkItem "NVGoggles";
			_player linkItem "ItemGPS";
			_player addWeapon "Laserdesignator";
			_player addItem "MediKit";
			_player addGoggles "";
			_player addHeadgear "H_HelmetLeaderO_ocamo";

			_player addMagazines ["11Rnd_45ACP_Mag", 3];
			_player addWeapon "hgun_Pistol_heavy_01_F";
			_player addhandGunItem "optic_MRD";
			_player addhandGunItem "muzzle_snds_acp";


			_player addMagazines ["R3F_stinger_mag", 2];
			_player addMagazines ["r3f_10rnd_127x99_pei_m107", 8];
			_player addWeapon "R3F_stinger";
			_player addMagazines ["SatchelCharge_Remote_Mag", 1];
			_player addWeapon "R3F_M107_DES";
			_player addPrimaryWeaponItem "optic_Nightstalker";
			_player selectWeapon "R3F_M107_DES";
		};
		case "76561198158347092": //Brett
		{
			_player setVariable ["cmoney", (player getVariable "cmoney") + 20000, true];

			removeAllWeapons _player;
			removeUniform _player;
			//removeallitems _player;
			removeVest _player;
			removeBackpack _player;
			removeGoggles _player;
			removeHeadgear _player;

			_player addBackpack "B_Carryall_mcamo";
			_player addUniform "U_I_FullGhillie_sard";
			_player addVest "V_PlateCarrierGL_blk";	
			_player linkItem "NVGoggles";
			_player linkItem "ItemGPS";
			_player addWeapon "Laserdesignator";
			_player addItem "MediKit";
			_player addGoggles "";
			_player addHeadgear "H_HelmetLeaderO_ocamo";

			_player addMagazines ["11Rnd_45ACP_Mag", 3];
			_player addWeapon "hgun_Pistol_heavy_01_F";
			_player addhandGunItem "optic_MRD";
			_player addhandGunItem "muzzle_snds_acp";


			_player addMagazines ["R3F_stinger_mag", 2];
			_player addMagazines ["r3f_10rnd_127x99_pei_m107", 8];
			_player addWeapon "R3F_stinger";
			_player addMagazines ["SatchelCharge_Remote_Mag", 1];
			_player addWeapon "R3F_M107_DES";
			_player addPrimaryWeaponItem "optic_Nightstalker";
			_player selectWeapon "R3F_M107_DES";
		};
		case "76561198045606846"://Jinks
		{
			_player setVariable ["cmoney", (_player getVariable "cmoney") + 20000, true];

			removeAllWeapons _player;
			//removeUniform _player;
			//removeallitems _player;
			removeVest _player;
			removeBackpack _player;
			removeGoggles _player;
			removeHeadgear _player;

			_player addBackpack "B_Carryall_mcamo";
			_player addUniform "U_I_FullGhillie_sard";
			_player addBackpack "B_Carryall_mcamo";
			_player addVest "V_PlateCarrierGL_blk";	
			_player addWeapon "Binocular";
			_player linkItem "ItemGPS";
			_player linkItem "NVGoggles";
			_player addGoggles "";
			_player addHeadgear "H_HelmetLeaderO_oucamo";


			_player addMagazines ["rh_30rnd_68x43_match", 15];
			_player addWeapon "RH_m16a6";
			_player addPrimaryWeaponItem "optic_Nightstalker";
			_player addPrimaryWeaponItem "RH_qdss_nt4";
			_player addMagazines ["SatchelCharge_Remote_Mag", 1];
			_player selectWeapon "RH_m16a6";
		};
		case "76561198020048396"://Beaily
		{
			_player setVariable ["cmoney", (_player getVariable "cmoney") + 20000, true];

			removeAllWeapons _player;
			//removeUniform _player;
			//removeallitems _player;
			removeVest _player;
			removeBackpack _player;
			removeGoggles _player;
			removeHeadgear _player;

			_player addBackpack "B_Carryall_mcamo";
			_player addUniform "U_I_FullGhillie_sard";
			_player addBackpack "B_Carryall_mcamo";
			_player addVest "V_PlateCarrierGL_blk";	
			_player addWeapon "Binocular";
			_player linkItem "ItemGPS";
			_player linkItem "NVGoggles";
			_player addGoggles "";
			_player addHeadgear "H_HelmetLeaderO_oucamo";


			_player addMagazines ["RH_30rnd_762x35_match", 15];
			_player addWeapon "rh_hb_b";
			_player addPrimaryWeaponItem "optic_Nightstalker";
			_player addPrimaryWeaponItem "rh_hbsd";
			_player addMagazines ["SatchelCharge_Remote_Mag", 1];
			_player selectWeapon "rh_hb_b";
		};
		
	};
};

switch (true) do
{
	case (["_medic_", typeOf _player] call fn_findString != -1):
	{
		_player removeItem "FirstAidKit";
		_player addItem "Medikit";
	};
	case (["_engineer_", typeOf _player] call fn_findString != -1):
	{
		//_player addItem "MineDetector";
		_player addItem "Toolkit";
	};
	case (["_sniper_", typeOf _player] call fn_findString != -1):
	{
		_player addWeapon "Rangefinder";
	};
};

if (_player == player) then
{
	thirstLevel = 100;
	hungerLevel = 100;
};
