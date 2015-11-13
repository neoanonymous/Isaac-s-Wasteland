// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: customGroup2.sqf
//	@file Author: AgentRev, JoSchaap

if (!isServer) exitWith {};

private ["_group", "_pos", "_nbUnits", "_unitTypes", "_uPos", "_unit"];

_group = _this select 0;
_pos = _this select 1;
_nbUnits = param [2, 7, [0]];
_radius = param [3, 10, [0]];

_unitTypes =
[
	"C_man_hunter_1_F","C_man_p_beggar_F","C_man_p_beggar_F_afro",
	"C_man_p_fugitive_F","C_man_p_shorts_1_F","C_man_polo_1_F",
	"C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F",
	"C_man_p_beggar_F","C_man_p_beggar_F_afro",
	"C_man_p_fugitive_F","C_journalist_F","C_Orestes",
	"C_man_polo_5_F","C_man_polo_6_F","C_man_shorts_1_F",
	"C_man_shorts_2_F","C_man_shorts_3_F","C_man_shorts_4_F",
	"C_man_w_worker_F","C_man_p_beggar_F","C_man_p_beggar_F_afro",
	"C_man_p_fugitive_F"
];

for "_i" from 1 to _nbUnits do
{
	_uPos = _pos vectorAdd ([[random _radius, 0, 0], random 360] call BIS_fnc_rotateVector2D);
	_unit = _group createUnit [_unitTypes call BIS_fnc_selectRandom, _uPos, [], 0, "Form"];
	_unit setPosATL _uPos;

	removeAllWeapons _unit;
	removeAllAssignedItems _unit;
	removeVest _unit;
	removeBackpack _unit;
	
	_unit addUniform "U_B_CombatUniform_mcam";
	_unit addVest "V_PlateCarrier2_rgr";
	_unit addHeadgear "H_HelmetB_plain_mcamo";
	_unit addGoggles "G_Balaclava_blk";


	switch (true) do
	{
		// Grenadier every 3 units
		case (_i % 3 == 0):
		{
			_unit addVest "V_PlateCarrierGL_rgr";
			_unit addHeadgear "H_HelmetB_desert";
			_unit addMagazine "1Rnd_HE_Grenade_shell";
			_unit addMagazine "30Rnd_556x45_Stanag";
			_unit addWeapon "arifle_TRG21_GL_F";
			_unit addPrimaryWeaponItem "optic_Holosight";
			_unit addMagazine "1Rnd_HE_Grenade_shell";
			_unit addMagazine "1Rnd_HE_Grenade_shell";
			_unit addMagazine "1Rnd_SmokeRed_Grenade_shell";
			_unit addMagazine "30Rnd_556x45_Stanag";
			_unit addMagazine "30Rnd_556x45_Stanag";
			_unit addMagazine "30Rnd_556x45_Stanag";
			_unit addMagazine "HandGrenade";
			_unit addMagazine "SmokeShellPurple";
		};
		// RPG every 7 units, starting from second one
		case ((_i + 5) % 7 == 0):
		{
			_unit addVest "V_PlateCarrierGL_rgr";
			_unit addHeadgear "H_HelmetB_black";
			_unit addBackpack "B_Kitbag_mcamo";
			_unit addMagazine "30Rnd_556x45_Stanag";
			_unit addWeapon "arifle_TRG20_F";
			_unit addPrimaryWeaponItem "optic_Holosight";
			_unit addMagazine "Titan_AT";
			_unit addWeapon "launch_Titan_short_F";
			_unit addMagazine "Titan_AT";
			_unit addMagazine "Titan_AT";
			_unit addMagazine "30Rnd_556x45_Stanag";
			_unit addMagazine "30Rnd_556x45_Stanag";
			_unit addMagazine "30Rnd_556x45_Stanag";
			_unit addMagazine "HandGrenade";
			_unit addMagazine "SmokeShellPurple";
		};
		// Rifleman
		default
		{
			if (_unit == leader _group) then
			{
				_unit addMagazine "30Rnd_556x45_Stanag";
				_unit addWeapon "arifle_TRG21_F";
				_unit addMagazine "30Rnd_556x45_Stanag";
				_unit addMagazine "30Rnd_556x45_Stanag";
				_unit addHeadgear "H_HelmetSpecB_paint1";
				_unit addMagazine "HandGrenade";
				_unit addMagazine "SmokeShellPurple";
				_unit addPrimaryWeaponItem "optic_Hamr";
				_unit setRank "SERGEANT";
			}
			else
			{
				_unit addMagazine "30Rnd_556x45_Stanag";
				_unit addWeapon "arifle_TRG20_F";
				_unit addMagazine "30Rnd_556x45_Stanag";
				_unit addMagazine "30Rnd_556x45_Stanag";
				_unit addMagazine "HandGrenade";
				_unit addMagazine "SmokeShellPurple";
				_unit addPrimaryWeaponItem "optic_Aco";
			};
		};
	};

	_unit addPrimaryWeaponItem "acc_flashlight";
	_unit enablegunlights "forceOn";

	_unit addRating 1e11;
	_unit spawn refillPrimaryAmmo;
	_unit call setMissionSkill;
	_unit addEventHandler ["Killed", server_playerDied];
};
