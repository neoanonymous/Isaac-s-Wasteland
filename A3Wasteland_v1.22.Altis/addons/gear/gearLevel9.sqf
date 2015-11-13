//	@file Version: 1.0
//	@file Name: gearLevel9.sqf
//	@file Author: Cael817, based of something i found
//	@file Created: 20140808 15:23


if (((getPlayerUID player) in call gearLevel9)) then {

player setVariable ["cmoney", (player getVariable "cmoney") + 18500, true];

removeAllWeapons player;
removeUniform player;
//removeallitems player;
removeVest player;
removeBackpack player;
removeGoggles player;
removeHeadgear player;

player addBackpack "B_Carryall_mcamo";
player addUniform "U_B_FullGhillie_ard";
player addVest "V_PlateCarrierGL_blk";	
player linkItem "NVGoggles";
player linkItem "ItemGPS";
player addWeapon "Laserdesignator";
player addItem "MediKit";
player addGoggles "";
player addHeadgear "H_HelmetLeaderO_ocamo";

player addMagazines ["11Rnd_45ACP_Mag", 3];
player addWeapon "hgun_Pistol_heavy_01_F";
player addhandGunItem "optic_MRD";
player addhandGunItem "muzzle_snds_acp";


player addMagazines ["R3F_stinger_mag", 2];
player addMagazines ["r3f_10rnd_127x99_pei_m107", 8];
player addWeapon "R3F_stinger";
player addMagazines ["SatchelCharge_Remote_Mag", 1];
player addWeapon "R3F_M107_DES";
player addPrimaryWeaponItem "optic_Nightstalker";
player selectWeapon "R3F_M107_DES";

};
