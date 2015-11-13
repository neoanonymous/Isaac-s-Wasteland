//	@file Version: 1.1
//	@file Name: gearLevel8.sqf
//	@file Author: Cael817, based of something i found
//	@file Created: 20140808 15:21


if (((getPlayerUID player) in call gearLevel8)) then {

player setVariable ["cmoney", (player getVariable "cmoney") + 20000, true];

removeAllWeapons player;
//removeUniform player;
//removeallitems player;
removeVest player;
removeBackpack player;
removeGoggles player;
removeHeadgear player;

player addBackpack "B_Carryall_mcamo";
player addUniform "U_I_FullGhillie_sard";
player addBackpack "B_Carryall_mcamo";
player addVest "V_PlateCarrierGL_blk";	
player addWeapon "Binocular";
player linkItem "ItemGPS";
player linkItem "NVGoggles";
player addGoggles "";
player addHeadgear "H_HelmetLeaderO_oucamo";


player addMagazines ["rh_30rnd_68x43_match", 15];
player addWeapon "RH_m16a6";
player addPrimaryWeaponItem "optic_Nightstalker";
player addPrimaryWeaponItem "RH_qdss_nt4";
player addMagazines ["SatchelCharge_Remote_Mag", 1];
player selectWeapon "RH_m16a6";

};
