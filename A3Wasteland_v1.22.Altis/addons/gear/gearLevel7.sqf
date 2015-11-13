//	@file Version: 1.1
//	@file Name: gearLevel7.sqf
//	@file Author: Cael817, based of something i found
//	@file Created: 20140808 15:20


if (((getPlayerUID player) in call gearLevel7)) then {

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


player addMagazines ["RH_30rnd_762x35_match", 15];
player addWeapon "rh_hb_b";
player addPrimaryWeaponItem "optic_Nightstalker";
player addPrimaryWeaponItem "rh_hbsd";
player addMagazines ["SatchelCharge_Remote_Mag", 1];
player selectWeapon "rh_hb_b";

};
