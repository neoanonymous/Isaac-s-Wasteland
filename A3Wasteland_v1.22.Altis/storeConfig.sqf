// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
/*********************************************************#
# @@ScriptName: storeConfig.sqf
# @@Author: His_Shadow, AgentRev
# @@Create Date: 2013-09-16 20:40:58
#*********************************************************/

// This tracks which store owner the client is interacting with
currentOwnerName = "";

// Gunstore Weapon List - Gun Store Base List
// Text name, classname, buy cost

pistolArray = compileFinal str
[
	// Handguns
	["Uzi", "Cup_hgun_microuzi", 2550],
	["Beretta M9 RH Mod", "RH_m9", 650],
	["CZ 75 RH mod", "RH_cz75", 650],
	["CZ75 Compact CUP mod", "CUP_hgun_compact", 450],
	["CZ75 Duty CUP Mod", "CUP_hgun_duty", 850],
	["CZ75 Duty CUP Mod", "CUP_hgun_duty_m3x", 1050],
	["CX75 Phantom silenced Cup Mod", "cup_hgun_phantom_flashlight_snds", 1200],
	["CX75 Phantom W/Flashlight Cup Mod", "cup_hgun_phantom_flashlight", 1200],
	["CX75 Phantom Cup Mod", "cup_hgun_phantom", 1000],
	["Beretta M9 Camo RH Mod", "RH_m9c", 650],
	["Glock 17 RH mod", "RH_g17", 650],
	["Glock 17 Tan Cup mod", "cup_hgun_glock17", 651],
	["Glock 19 Tan RH mod", "rh_g19t", 850],
	["GSH-18 RH mod", "rh_gsh18", 750],
	["Colt Python RH mod", "RH_python", 650],
	["Desert Eagle RH mod", "RH_deagle", 1950],
	["Desert Eagle Gold RH mod", "RH_deagleg", 4550],
	["Desert Eagle Modern RH mod", "RH_deaglem", 3550],
	["Desert Eagle Silver RH mod", "RH_deagles", 3550],
	["Intractec TEC-9 RH mod", "rh_tec9", 2550],
	["P07 Pistol", "hgun_P07_F", 560],
	["Rook-40 Pistol", "hgun_Rook40_F", 650],
	["ACP-C2 Pistol", "hgun_ACPC2_F", 650],
	["Zubr Revolver", "hgun_Pistol_heavy_02_F", 650],
	["4-Five Pistol", "hgun_Pistol_heavy_01_F", 650]	
];

smgArray = compileFinal str
[
	["PDW2000 SMG", "hgun_PDW2000_F", 4500],
	["Sting SMG", "SMG_02_F", 4500],
	["Vermin SMG", "SMG_01_F", 4500],
	["MP5 9mm MOD ONLY", "R3F_MP5SD", 4500]
];

rifleArray = compileFinal str
[
	// Underwater Gun
	["SDAR Underwater Rifle", "arifle_SDAR_F", 100],

	// Assault Rifles
	["Vltor SBR Tan RH Mod", "rh_m4sbr", 750], // Mod item
	["Colt M16A4 EJ Mod", "ej_m16a4", 2350], // mod item
	["M16A4 GL RH Mod", "RH_m16a4gl", 2500], // mod item
	["M4 Carbine MOD ONLY", "ej_m4", 2350], // mod item
	["M4/M203 MOD ONLY", "ej_m4m203", 3550], // mod item
	["M4 Magpul RH Mod", "rh_m4m", 1500], // mod item
	["M4 Magpul Black RH Mod", "rh_m4m_b", 1550], // mod item
	["M4 Magpul Green RH Mod", "rh_m4m_g", 1550], // mod item
	["AAC Honey Badger RH Mod", "RH_hb", 750], // mod item
	["AAC Honey Badger Black RH Mod", "rh_hb_b", 750], // mod item
	["M16A6 Side Rail System RH Mod", "RH_m16a6", 1500], // mod item
	["M4A6 Side Rail System RH Mod", "RH_m4a6", 1500], // mod item
	["AR-10 RH Mod", "RH_ar10", 750], // mod item
	["HK416D Long RH Mod", "RH_hk416", 600], // mod item
	["HK416 Mid RH Mod", "rh_hk416s", 600], // mod item
	["HK416 CQB RH Mod", "rh_hk416c", 600], // mod item
	["M16A4 Matech RH Mod", "RH_m16a4_M", 1250], // mod item
	["M27 IAR RH Mod", "rh_m27iar", 750], // mod item
	["Mk 12 Mod 1 RH Mod", "RH_mk12mod1", 750], // mod item
	["Famas C HG Cammo R3F Mod", "r3f_famas_surb_hg_des", 750], // mod item
	["HK17 12 Inch HG R3F Mod", "r3f_hk417s_HG", 750], // mod item
	["HK417 12 Inch HG Cammo R3F Mod", "r3f_hk417s_HG_des", 775], // mod item
	["HK417 16 Inches R3F Mod", "r3f_hk417m", 750], // mod item
	["HK417 16 Inches Cammo R3F Mod", "r3f_hk417m_des", 775], // mod item
	["HK417 HG 16 Inches R3F Mod", "r3f_hk417m_hg", 750], // mod item
	["HK417 HG 16 Inches Cammo R3F Mod", "r3f_hk417m_hg_des", 775], // mod item
	["HK417 20 Inches R3F Mod", "r3f_hk417L", 750], // Mod item
	["HK417 20 Inches Cammo R3F Mod", "r3f_hk417L_des", 750], // Mod item
	["Gold AKS", "CUP_arifle_AKS_Gold", 500],  // mod item
	["AKM CUP Mod", "CUP_arifle_AKM", 150],  // mod item
	["AK74 CUP Mod", "CUP_arifle_AK74", 100],  // mod item
	["AK74 GP-25 CUP Mod", "CUP_arifle_AK74_GL", 175],  // mod item
	["SCAR H CUP Mod", "Cup_arifle_mk17_cqc_fg", 1200], // mod item
	["SCAR Light CUP Mod", "CUP_arifle_mk16_cqc_fg", 900], // mod item
	["XM8 CUP Mod", "Cup_arifle_xm8_railed", 900], 
	["FN FAL CUP Mod", "Cup_arifle_FNFAL", 1000],
	["G36 CUP Mod", "Cup_arifle_g36c", 500],
	["G36A CUP Mod", "Cup_arifle_g36a", 450],
	["Barret M107 .50cal MOD ONLY", "ej_M107", 12500],
	["M24 Desert MOD ONLY", "ej_m24d", 6000],
	["PGM Hecate II (Camo) MOD ONLY", "R3F_PGM_Hecate_II_DES", 15000],
	["PGM Polymer MOD ONLY", "r3f_pgm_hecate_II_poly", 15000],
	["M4 Super 90 Shotgun MOD ONLY", "R3F_M4S90", 1250],
	["AA12 CUP mod", "cup_sgun_aa12", 5600], // Mod item
	["Stalin's Rod", "CUP_arifle_ksvk_PSO3", 10000], // Mod item
	["The Brown Bear", "CuP_rifle_Lee_Enfield", 200], // Mod item
	["Barrett M107 .50 Cal AKA Satan's AssHole", "R3F_M107_DES", 12500], // Mod item
	
	
	
	["Mk20 Carbine", "arifle_Mk20C_plain_F", 150],
	["Mk20 Carbine (Camo)", "arifle_Mk20C_F", 150],
	["Mk20 Rifle", "arifle_Mk20_plain_F", 200],
	["Mk20 Rifle (Camo)", "arifle_Mk20_F", 200],
	["Mk20 EGLM Rifle", "arifle_Mk20_GL_plain_F", 250],
	["Mk20 EGLM Rifle (Camo)", "arifle_Mk20_GL_F", 250],
	["TRG-20 Carbine", "arifle_TRG20_F", 150],
	["TRG-21 Rifle ", "arifle_TRG21_F", 200],
	["TRG-21 EGLM Rifle", "arifle_TRG21_GL_F", 250],

	["Katiba Carbine", "arifle_Katiba_C_F", 150],
	["Katiba Rifle", "arifle_Katiba_F", 200],
	["Katiba GL Rifle", "arifle_Katiba_GL_F", 250],

	["MX Carbine", "arifle_MXC_F", 150],
	["MX Carbine (Black)", "arifle_MXC_Black_F", 175],
	["MX Rifle", "arifle_MX_F", 200],
	["MX Rifle (Black)", "arifle_MX_Black_F", 225],
	["MX 3GL Rifle", "arifle_MX_GL_F", 250],
	["MX 3GL Rifle (Black)", "arifle_MX_GL_Black_F", 275],

	// Markman Rifles
	["MXM Rifle", "arifle_MXM_F", 300],
	["MXM Rifle (Black)", "arifle_MXM_Black_F", 325],
	["DMR Rifle", "srifle_DMR_01_F", 375],
	["Mk18 ABR Rifle", "srifle_EBR_F", 450],
	["M110 MOD ONLY", "rh_m110", 1150], // mod item
	["MK11 MOD ONLY", "rh_mk11", 1150], // mod item
	["MK20 Scar H", "Cup_arifle_mk20", 1150],
	
	
	// DLC Markman Rifles
	["Mk14 7.62 mm (Camo)", "srifle_DMR_06_camo_F", 1150], // DLC item
	["Mk14 7.62 mm (Olive)", "srifle_DMR_06_olive_F", 1150], // DLC item
	["Mk-1 EMR 7.62 mm (Camo)", "srifle_DMR_03_multicam_F", 1152],
	["Mk-1 EMR 7.62 mm (Khaki)", "srifle_DMR_03_khaki_F", 1152],
	["Mk-1 EMR 7.62 mm (Sand)", "srifle_DMR_03_tan_F", 1152],
	["Mk-1 EMR 7.62 mm (Woodland)", "srifle_DMR_03_woodland_F", 1152],
	["Mk-1 EMR 7.62 mm (Black)", "srifle_DMR_03_F", 1152],
	["MAR-10 .338 (Black)", "srifle_DMR_02_F", 1300],
	["MAR-10 .338 (Camo)", "srifle_DMR_02_camo_F", 1300],
	["MAR-10 .338 (Sand)", "srifle_DMR_02_sniper_F", 1300], 
	["Cyrus 9.3 mm (Black)", "srifle_DMR_05_blk_F", 1300],
	["Cyrus 9.3 mm (Hex)", "srifle_DMR_05_hex_F", 1300],
	["Cyrus 9.3 mm (Tan)", "srifle_DMR_05_tan_f", 1300],
	["ASP-1 Kir 12.7 mm (Black)", "srifle_DMR_04_F", 2500],
	["ASP-1 Kir 12.7 mm (Tan)", "srifle_DMR_04_Tan_F", 2500],

	// Sniper Rifles
	["M320 LRR Sniper", "srifle_LRR_SOS_F", 10000],
	["M320 LRR Sniper (Camo)", "srifle_LRR_camo_SOS_F", 11500],
	["GM6 Lynx Sniper", "srifle_GM6_SOS_F", 11000],
	["GM6 Lynx Sniper (Camo)", "srifle_GM6_camo_SOS_F", 12500]
];
	
shotgunArray = compileFinal str
[
    // Shotguns
	
];

lmgArray = compileFinal str
[
	["FN M240B MOD ONLY", "ej_m240", 1250], // mod item
	["M249 SAW MOD ONLY", "ej_m249", 1250], // mod item
	["Mini Para 7.62MM HG MOD ONLY", "R3F_Minimi_762_HG", 1250], // mod item
	["Minimi Para 5.56x45 Mod Only", "r3f_minimi", 1250],  // mod item
	["The Motherfucking Pig CUP mod", "Cup_lmg_m60a4", 800], // mod item
	["MG36 CUP mod", "CUP_arifle_MG36", 400], // mod item
	["PKP CUP mod", "CUP_lmg_Pecheneg", 350], // mod item
	["MX SW LMG", "arifle_MX_SW_F", 300],
	["MX SW LMG (Black)", "arifle_MX_SW_Black_F", 325],
	["Mk200 LMG", "LMG_Mk200_F", 375],
	["Zafir LMG", "LMG_Zafir_F", 450],

	//DLC LMG
	["SPMG .338 (Black)", "MMG_02_black_F",2550],
	["SPMG .338 (MTP)", "MMG_02_camo_F", 2550],
	["SPMG .338 (Sand)", "MMG_02_sand_F", 2550],
	["Navid 9.3 mm (Hex)", "MMG_01_hex_F", 2550],
	["Navid 9.3 mm (Tan)", "MMG_01_tan_F", 2550]
];

launcherArray = compileFinal str
[
	["John Wayne Luncher CUP mod", "CUP_glaunch_M32", 6000], // Mod item
	["M79 AKA MEH BOOMSTICK CUP mod", "CUP_glaunch_M79", 1000],	// Mod item
	["M3 MAAWS W/O Scope CUP mod", "Cup_launch_MAAWS", 4000], // Mod item
	["M3 MAAWS W/Scope CUP mod", "Cup_launch_MAAWS_scope", 4500], // Mod item
	["AT4 CS R3F MOD", "r3f_at4cs", 3500], // mod item
	["ERYX R3F MOD", "R3F_ERYX", 4500], // mod item
	["Stinger AA R3F MOD", "R3F_stinger", 4500], // mod item
	["RPG-42 Alamut", "launch_RPG32_F", 400],
	["PCML", "launch_NLAW_F", 600],
	["Titan MPRL Compact (Tan)", "launch_Titan_short_F", 5500],
	["Titan MPRL Compact (Brown)", "launch_O_Titan_short_F", 5500],
	["Titan MPRL Compact (Olive)", "launch_I_Titan_short_F", 5500],
	["Titan MPRL AA (Desert)", "launch_Titan_F", 5500],
	["Titan MPRL AA (Hex)", "launch_O_Titan_F", 5500],
	["Titan MPRL AA (Digi)", "launch_I_Titan_F", 5500]

];

allGunStoreFirearms = compileFinal str (call pistolArray + call smgArray + call rifleArray + call shotgunArray + call lmgArray + call launcherArray);

staticGunsArray = compileFinal str
[
	["Vehicle Ammo Crate", "Box_NATO_AmmoVeh_F", 2500],
	["Static Titan AT 4Rnd (NATO)", "B_static_AT_F", 2500], // Static launchers only have 4 ammo, hence the low price
	["Static Titan AT 4Rnd (CSAT)", "O_static_AT_F", 2500],
	["Static Titan AT 4Rnd (AAF)", "I_static_AT_F", 2500],
	["Static Titan AA 4Rnd (NATO)", "B_static_AA_F", 3000],
	["Static Titan AA 4Rnd (CSAT)", "O_static_AA_F", 3000],
	["Static Titan AA 4Rnd (AAF)", "I_static_AA_F", 3000],
	["Mk30 HMG .50 Low tripod (NATO)", "B_HMG_01_F", 2000],
	["Mk30 HMG .50 Low tripod (CSAT)", "O_HMG_01_F", 2000],
	["Mk30 HMG .50 Low tripod (AAF)", "I_HMG_01_F", 2000],
	["Mk30A HMG .50 Sentry (NATO)", "B_HMG_01_A_F", 5000], // "A" = Autonomous = Overpowered
	["Mk30A HMG .50 Sentry (CSAT)", "O_HMG_01_A_F", 5000],
	["Mk30A HMG .50 Sentry (AAF)", "I_HMG_01_A_F", 5000],
	["Mk30 HMG .50 High tripod (NATO)", "B_HMG_01_high_F", 3000],
	["Mk30 HMG .50 High tripod (CSAT)", "O_HMG_01_high_F", 3000],
	["Mk30 HMG .50 High tripod (AAF)", "I_HMG_01_high_F", 3000],
	["Mk32 GMG 20mm Low tripod (NATO)", "B_GMG_01_F", 5000],
	["Mk32 GMG 20mm Low tripod (CSAT)", "O_GMG_01_F", 5000],
	["Mk32 GMG 20mm Low tripod (AAF)", "I_GMG_01_F", 5000],
	["Mk32A GMG 20mm Sentry (NATO)", "B_GMG_01_A_F", 10000],
	["Mk32A GMG 20mm Sentry (CSAT)", "O_GMG_01_A_F", 10000],
	["Mk32A GMG 20mm Sentry (AAF)", "I_GMG_01_A_F", 10000],
	["Mk32 GMG 20mm High tripod (NATO)", "B_GMG_01_high_F", 6000],
	["Mk32 GMG 20mm High tripod (CSAT)", "O_GMG_01_high_F", 6000],
	["Mk32 GMG 20mm High tripod (AAF)", "I_GMG_01_high_F", 6000],
	["Mk6 Mortar (NATO)", "B_Mortar_01_F", 12500],
	["Mk6 Mortar (CSAT)", "O_Mortar_01_F", 12500],
	["Mk6 Mortar (AAF)", "I_Mortar_01_F", 12500]
];

throwputArray = compileFinal str
[
	["CS gas", "SmokeShellYellow", 500],
	["Mini Grenade", "MiniGrenade", 50],
	["Frag Grenade", "HandGrenade", 100],
	["APERS Tripwire Mine", "APERSTripMine_Wire_Mag", 200],
	["APERS Bounding Mine", "APERSBoundingMine_Range_Mag", 250],
	["APERS Mine", "APERSMine_Range_Mag", 300],
	["Small I.E.D. Urban", "iedurbansmall_remote_mag", 1500],
	["Small I.E.D. (Dug-In)", "iedlandsmall_remote_mag", 1500],
	["Large I.E.D. Urban", "iedurbanbig_remote_mag", 2500],
	["Large I.E.D. (Dug-In)", "iedlandbig_remote_mag", 2500],
	["Claymore Charge", "ClaymoreDirectionalMine_Remote_Mag", 350],
	["M6 SLAM Mine", "SLAMDirectionalMine_Wire_Mag", 350],
	["AT Mine", "ATMine_Range_Mag", 400],
	["Explosive Charge", "DemoCharge_Remote_Mag", 450],
	["Explosive Satchel", "SatchelCharge_Remote_Mag", 500],
	["Smoke Grenade (White)", "SmokeShell", 50],
	["Smoke Grenade (Purple)", "SmokeShellPurple", 50],
	["Smoke Grenade (Blue)", "SmokeShellBlue", 50],
	["Smoke Grenade (Green)", "SmokeShellGreen", 50],
	["Smoke Grenade (Orange)", "SmokeShellOrange", 50],
	["Smoke Grenade (Red)", "SmokeShellRed", 50]
];

//Gun Store Ammo List
//Text name, classname, buy cost
ammoArray = compileFinal str
[
	[".357 Magunm", "RH_6rnd_357_mag", 15],
	["9M 15Rnd Mag", "RH_15rnd_9x19_m9", 15],
	["CZ75 16 Rnd Mag", "rh_16rnd_9x19_cz", 16],
	["CZ 10 Rnd compact", "cup_10rnd_9x19_compact", 15],
	["CZ 16Rnd m9x21", "15rnd_9x21_mag", 15],
	["18 Rnd 9mm", "cup_18rnd_9x19_phantom", 15],
	[".50 AE 7Rnd", "rh_7rnd_50_AE", 250],
	["Glock 17Rnd 9M mag", "rh_17rnd_9x19_g17", 20],
	["Glock 18Rnd 9M mag", "rh_18rnd_9x19_g18", 25],
	["Glock 33Rnd 9M mag", "rh_33rnd_9x19_g18", 40],
	["Glock 17 17Rnd 9M mag", "cup_17rnd_9x19_glock17", 20],
	["GSH-18 18Rnd Mag", "RH_18rnd_9x19_gsh", 20],
	["Tac9 32 Rnd Mag", "rh_32rnd_9x19_tac", 55],
	
	["9mm 16Rnd Mag", "16Rnd_9x21_Mag", 10],
	["9mm 30Rnd Mag", "30Rnd_9x21_Mag", 15],
	["9x19mm 30Rnd 13Dmg", "r3f_30rnd_9x19_mp5", 35],
	["7Rnd 12Gauge", "R3F_7rnd_M4S90", 100],
	["20 round Buck", "cup_20rnd_b_aa12_pellete", 100],
	["20 round Slug", "cup_20rnd_b_aa12_74slug", 150],
	["20 round HE", "cup_20rnd_b_aa12_he", 250],
	[".45 ACP 6Rnd Cylinder", "6Rnd_45ACP_Cylinder", 5],
	[".45 ACP 9Rnd Mag", "9Rnd_45ACP_Mag", 10],
	[".45 ACP 11Rnd Mag", "11Rnd_45ACP_Mag", 15],
	[".45 ACP 30Rnd Vermin Mag", "30Rnd_45ACP_MAG_SMG_01", 20],
	[".45 ACP 30Rnd Tracer (Green) Mag", "30Rnd_45ACP_Mag_SMG_01_tracer_green", 15],
	["5.56mm 20Rnd Underwater Mag", "20Rnd_556x45_UW_mag", 10],
	["5.56mm 30Rnd STANAG Mag", "30Rnd_556x45_Stanag", 20],
	["5.56mm 30Rnd Tracer (Green) Mag", "30Rnd_556x45_Stanag_Tracer_Green", 15],
	["5.56mm 30Rnd Tracer (Yellow) Mag", "30Rnd_556x45_Stanag_Tracer_Yellow", 15],
	["5.56mm 30Rnd Tracer (Red) Mag", "30Rnd_556x45_Stanag_Tracer_Red", 15],
	["5.56mm 30Rnd Minimi", "r3f_30rnd_556x45_famas", 35],
	["5.56mm 200Rnd Minimi mag", "r3f_200rnd_556x45_Minimi", 150], // Mod Item
	["M240 100rd Box Mag 5.56mm", "m240_mag", 250],
	["M249 100rd Box Mag", "m249_mag", 250],
	["5.56mm 10rd Mag", "M24_mag", 75],
	["7.62x35 30Rnd FMJ Low Dmg", "RH_30rnd_762x35_fmj", 25],
	["7.62x35 30Rnd Match High Dmg", "RH_30rnd_762x35_match", 50],
	["7.62 30Rnd M38", "RH_30rnd_762x35_m38", 25],
	["7.62x51 20Rnd", "rh_20rnd_762x51_ar10", 25],
	["7.62x51 20Rnd M80A1 Low Dmg", "rh_20rnd_762x51_m80A1", 75],
	["7.62x51 20Rnd MK31BLR High Dmg", "rh_20rnd_762x51_Mk316LR", 150],
	["7.62x51 20Rnd LFMJ38 Med Dmg", "rh_20rnd_762x51_LFmjsb", 125],
	["7.62x51 20Rnd", "20rnd_762x51_mag", 75],
	["7.62x51 20Rnd", "r3f_20Rnd_762x51_hk417", 50],
	["6.8x43 30Rnd FMJ Low Dmg", "rh_30rnd_68x43_fmj", 50],
	["6.8x43 30Rnd Match High Dmg", "rh_30rnd_68x43_match", 75],
	["6.5mm 30Rnd STANAG Mag", "30Rnd_65x39_caseless_mag", 20],
	["6.5mm 30Rnd Tracer (Red) Mag", "30Rnd_65x39_caseless_mag_Tracer", 15],
	["6.5mm 30Rnd Caseless Mag", "30Rnd_65x39_caseless_green", 20],
	["6.5mm 30Rnd Tracer (Green) Mag", "30Rnd_65x39_caseless_green_mag_Tracer", 15],
	["6.5mm 100Rnd Belt Case", "100Rnd_65x39_caseless_mag", 75],
	["6.5mm 100Rnd Tracer (Red) Belt Case", "100Rnd_65x39_caseless_mag_Tracer", 50],
	["6.5mm 200Rnd Belt Case", "200Rnd_65x39_cased_Box", 150],
	["6.5mm 200Rnd Tracer (Yellow) Belt Case", "200Rnd_65x39_cased_Box_Tracer", 125],
	["7.62mm 10Rnd Mag", "10Rnd_762x51_Mag", 15],
	["7.62mm 20Rnd Mag", "20Rnd_762x51_Mag", 25],
	["7.62mm 150Rnd Box", "150Rnd_762x54_Box", 150],
	["7.62mm 150Rnd Tracer (Green) Box", "150Rnd_762x54_Box_Tracer", 125],
	["7.62mm 100Rnd 15Dmg", "r3f_100rnd_762x51_minimi", 150],
	[".338 NM 10Rnd Mag", "10Rnd_338_Mag", 75], //DLC Ammo
	[".338 NM 130Rnd Belt", "130Rnd_338_Mag", 150], //DLC Ammo
	["9.3mm 10Rnd Mag", "10Rnd_93x64_DMR_05_Mag", 75], //DLC Ammo
	["9.3mm 150Rnd Belt", "150Rnd_93x64_Mag", 150], //DLC Ammo
	[".408 7Rnd Cheetah Mag", "7Rnd_408_Mag", 50],
	["12.7mm 5Rnd Mag", "5Rnd_127x108_Mag", 50],
	["12.7mm 5Rnd Armor-Piercing Mag", "5Rnd_127x108_APDS_Mag", 60],
	["12.7x99 7Rnd Ball Ammo", "R3F_7Rnd_127x99_PGM", 100],
	["12.7x99 7Rnd 120 Dmg", "r3f_7rnd_127x99_pei_pgm", 225],
	["12.7x99 10Rnd Ball Ammo", "r3f_10rnd_127x99_m107", 100],
	["12.7x99 10Rnd Raufoss Mk 211", "r3f_10rnd_127x99_pei_m107", 250],
    ["12.7mm 10Rnd Mag", "10Rnd_127x54_Mag", 55], //DLC Ammo
	["Barret 10rd Mag", "barret_mag", 75],
	["Barret SLAP 10rd Mag", "barretslap_mag", 100],
	["Barret HE 10rd Mag", "barrethe_mag", 125],
	["RPG-42 Anti-Tank Rocket", "RPG32_F", 250],              // Direct damage: high      | Splash damage: low    | Guidance: none
	["RPG-42 High-Explosive Rocket", "RPG32_HE_F", 250],      // Direct damage: medium    | Splash damage: medium | Guidance: none
	["PCML Anti-Tank Missile", "NLAW_F", 400],                // Direct damage: very high | Splash damage: low    | Guidance: laser, ground vehicles
	["Titan Anti-Tank Missile 1200Dmg", "Titan_AT", 1250],             // Direct damage: high      | Splash damage: low    | Guidance: mouse, laser, ground vehicles
	["Titan Anti-Personnel Missile 100Dmg", "Titan_AP", 550],        // Direct damage: low       | Splash damage: high   | Guidance: mouse, laser
	["Titan Anti-Air Missile 100Dmg", "Titan_AA", 1250],              // Direct damage: low       | Splash damage: medium | Guidance: aircraft
	["AT4 cs 800Dmg Missile", "r3f_at4cs_mag", 850], // mod ammo
	["ERYX Missile 1200Dmg", "R3F_ERYX_mag", 850], // mod ammo
	["Stinger AA Missile 100Dmg", "R3F_stinger_mag", 1000], // mod ammo
	["AC58 Anti-Tank", "r3f_ac58", 850], // mod ammo
	["APAV40 Anti-Personnel", "r3f_apav40", 500], // mod ammo
	["40mm HE Grenade Round", "1Rnd_HE_Grenade_shell", 125],
	["40mm 3Rnd HE Grenades", "3Rnd_HE_Grenade_shell", 250],
	["40mm Smoke Round (White)", "1Rnd_Smoke_Grenade_shell", 50],
	["40mm Smoke Round (Purple)", "1Rnd_SmokePurple_Grenade_shell", 50],
	["40mm Smoke Round (Blue)", "1Rnd_SmokeBlue_Grenade_shell", 50],
	["40mm Smoke Round (Green)", "1Rnd_SmokeGreen_Grenade_shell", 50],
	["40mm Smoke Round (Yellow)", "1Rnd_SmokeYellow_Grenade_shell", 50],
	["40mm Smoke Round (Orange)", "1Rnd_SmokeOrange_Grenade_shell", 50],
	["40mm Smoke Round (Red)", "1Rnd_SmokeRed_Grenade_shell", 50],
	["40mm 3Rnd Smokes (White)", "3Rnd_Smoke_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Purple)", "3Rnd_SmokePurple_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Blue)", "3Rnd_SmokeBlue_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Green)", "3Rnd_SmokeGreen_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Yellow)", "3Rnd_SmokeYellow_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Orange)", "3Rnd_SmokeOrange_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Red)", "3Rnd_SmokeRed_Grenade_shell", 100],
	["40mm Flare Round (White)", "UGL_FlareWhite_F", 25],
	["40mm Flare Round (Green)", "UGL_FlareGreen_F", 25],
	["40mm Flare Round (Yellow)", "UGL_FlareYellow_F", 25],
	["40mm Flare Round (Red)", "UGL_FlareRed_F", 25],
	["40mm Flare Round (IR)", "UGL_FlareCIR_F", 25],
	["40mm 3Rnd Flares (White)", "3Rnd_UGL_FlareWhite_F", 50],
	["40mm 3Rnd Flares (Green)", "3Rnd_UGL_FlareGreen_F", 50],
	["40mm 3Rnd Flares (Yellow)", "3Rnd_UGL_FlareYellow_F", 50],
	["40mm 3Rnd Flares (Red)", "3Rnd_UGL_FlareRed_F", 50],
	["40mm 3Rnd Flares (IR)", "3Rnd_UGL_FlareCIR_F", 50],
	["7.62x38 30rnd Mag", "CUP_30Rnd_762x39_AK47_M", 10],
	["1.27x108 5rnd Mag", "CUP_5Rnd_127x108_KSVK_M", 200],
	["5.45x39 30rnd Mag", "CUP_30Rnd_545x39_AK_M", 15],
	["40mm Vog-25 Grenade", "CUP_1Rnd_HE_GP25_M", 50],
	["6rnd M443 HEDP", "CUP_6Rnd_HE_M203", 400],
	["10rnd 303 Clip", "CUP_10x_303_M", 5],
	["20rnd 762x51 Mag", "CUP_20Rnd_762x51_B_SCAR", 100],
	["100rnd 762x51 Box", "CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M", 75],
	["30rnd 9x19 Mag", "Cup_30rnd_9x19_uzi", 15],
	["20rnd 762x51 FN FAL", "Cup_20rnd_762x51_fnfal_m", 25],
	["30rnd 556x45 G36", "Cup_556x45_g36", 15],
	["100rnd 556x45 Beta Mag", "Cup_100rnd_556x45_betacmag", 30],
	["MAAWS Heat", "CUP_MAAWS_HEAT_M", 600],
	["MAAWS HEDP", "Cup_MAAWS_HEDP_M", 600],
	["100rnd 762x54 Box", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M", 100]
];

//Gun Store item List
//Text name, classname, buy cost, item class
accessoriesArray = compileFinal str
[
	["Suppressor 9mm", "muzzle_snds_L", 50, "item"],
	["Suppressor .45 ACP", "muzzle_snds_acp", 75, "item"],
	["Suppressor 5.56mm", "muzzle_snds_M", 100, "item"],
	["Famas Suppressor", "r3f_silencieux_famas", 150, "item"], // Mod item
	["Famas Suppressor Desert", "r3f_silencieux_famas_des", 150, "item"], // Mod item
	["Suppressor 6.5mm", "muzzle_snds_H", 100, "item"],
	["Suppressor 6.5mm LMG", "muzzle_snds_H_MG", 125, "item"],
	["Honey Badger AAC MOD ONLY", "rh_hbsd", 50, "item"],  // mod item
	["Suppressor 7.62mm", "muzzle_snds_B", 125, "item"],
	["Saker Vltor Suppressor", "rh_saker", 150, "item"], // Mod item
	["Saker 7.62mm Suppressor", "rh_saker762", 150, "item"], // mod item
	["HK417 Suppressor", "r3f_silencieux_HK417", 150, "item"], // mod item
	["HK417 Suppressor", "r3f_silencieux_HK417_des", 150, "item"], // mod item
	["Suppressor .338 Black", "muzzle_snds_338_black", 250, "item"], // DLC Item
	["Suppressor .338 Green", "muzzle_snds_338_green", 250, "item"], // DLC Item
	["Suppressor .338 Sand", "muzzle_snds_338_sand", 250, "item"], // DLC Item
	["Suppressor 9.3mm Black", "muzzle_snds_93mmg", 250, "item"], // DLC Item
	["Suppressor 9.3mm Tan", "muzzle_snds_93mmg_tan", 250, "item"], // DLC Item
	["Barret Suppressor MOD ONLY", "50suppressor_ej", 1250, "item"],
	["M24 Suppressor MOD ONLY", "m24silencer_ej", 150, "item"], // mod item
	["Gemtech 9mm MOD ONLY", "RH_tundra", 75, "item"], // mod item
	["M110 Suppressor MOD ONLY", "RH_m110sd", 175, "item"], // mod item
	["NT4 6.8mm Suppressor MOD ONLY", "RH_qdss_nt4", 150, "item"], // mod item
	["Acog MOD ONLY", "rh_ta01nsn", 175, "item"], // mod item
	["Acog x20 MOD ONLY", "RH_ta01nsn_2d", 200, "item"], // mod item
	["Acog Ta31F RMR MOD ONLY", "rh_ta31rmr", 175, "item"], // mod item
	["Acog Ta31F RMR x20 MOD ONLY", "rh_ta31rmr_2d", 200, "item"], // mod item
	["Acog RCO Tan MOD ONLY", "RH_ta31rmr_tan", 175, "item"], // mod item
	["Acog RCO Tan x20 MOD ONLY", "RH_ta31rmr_tan_2d", 200, "item"], // mod item
	["Acog RCO Black MOD ONLY", "RH_ta31rco", 175, "item"], // mod item
	["Acog RCO Black x20 MOD ONLY", "RH_ta31rco_2d", 200, "item"], // mod item
	["Acog TA648 MOD ONLY", "RH_ta648", 175, "item"], // mod item
	["AimPoint MOD ONLY", "rh_compm2", 175, "item"], // mod item
	["AimPoint Low MOD ONLY", "rh_compm2l", 175, "item"], // mod item
	["AimPoint compm4s MOD ONLY", "RH_compm4s", 175, "item"], // mod item
	["AimPoint T1 RedDot MOD ONLY", "RH_t1", 175, "item"], // mod item
	["AN/PA31v1 LTWS MOD ONLY", "RH_pas13cl", 175, "item"], // mod item
	["AN/PA31v2 MTWS MOD ONLY", "RH_pas13cm", 175, "item"], // mod item
	["AN/PA31v2 MTWS MilDot", "RH_pas13ch", 175, "item"], // mod item
	["AN/PVS10 MOD ONLY", "RH_anpvs10", 175, "item"], // mod item
	["AN/PVS4 MOD ONLY", "RH_anpvs4", 350, "item"], // mod item
	["Barska Red Dot MOD ONLY", "RH_barska_rds", 150, "item"], // mod item
	["C-More RedDot MOD ONLY", "RH_cmore", 150, "item"], // mod item
	["Delft Scope MOD ONLY", "RH_delft", 175, "item"], // mod item
	["Diavari ZEISS Scope MOD ONLY", "r3f_zeiss", 175, "item"], // mod item
	["Diavari ZEISS Scope camo MOD ONLY", "r3f_zeiss_des", 175, "item"], // mod item
	["Elcan C79 MOD ONLY", "RH_c79", 175, "item"], // mod item
	["Elcan C79 x20 MOD ONLY", "RH_c79_2d", 200, "item"], // mod item
	["Elcan M145 MOD ONLY", "RH_m145", 175, "item"], // mod item
	["Eotech 553 MOD ONLY", "RH_eotech553", 175, "item"], // mod item
	["Eotech 553 Flip-Up x3 MOD ONLY", "RH_eotech553mag", 175, "item"], // mod item
	["Eotech EXP93 MOD ONLY", "RH_eotexps3", 175, "item"], // mod item
	["Eotech EXP93 X3 MOD ONLY", "RH_eothhs1", 200, "item"], // mod item
	["Felin Scope Mod Only", "R3F_FELIN", 100, "item"], // mod item
	["Felin Scope (Desert) Mod Only", "R3F_FELIN_DES", 150, "item"], // mod item
    ["Felin Scope for FRF2 Mod Only", "R3F_FELIN_FRF2", 200, "item"], // mod item
	["Kahlia (Black) DLC", "optic_KHS_blk", 200, "item"], // DLC Item
	["Kahlia (Hex) DLC", "optic_KHS_hex", 200, "item"], // DLC Item
	["Kahlia (Old) DLC", "optic_KHS_old", 200, "item"], // DLC Item
	["Kahlia (Tan) DLC", "optic_KHS_tan", 200, "item"], // DLC Item
	["Leupold Mark 4 LR/T MOD ONLY", "RH_leu_mk4", 200, "item"], // mod item
	["Night Force X15 Scope MOD ONLY", "R3F_NF", 200, "item"], // mod item
	["Night Force X15 Scope (Camo) MOD ONLY", "R3F_NF_DES", 200, "item"], // mod item
    ["Night Force X42 Scope MOD ONLY", "R3F_NF42", 200, "item"], // mod item
    ["Night Force X42 Scope (Camo) MOD ONLY", "R3F_NF42_DES", 200, "item"], // mod item
	["M16A4 Rail Full Covers MOD ONLY", "RH_m16covers_f", 150, "item"], // mod item
	["M16A4 Side rail covers MOD ONLY", "RH_m16covers_s", 150, "item"], // mod item
	["M4 Full Rail Covers MOD ONLY", "RH_m4covers_f", 150, "item"], // mod item
	["M4 Side Rail Covers MOD ONLY", "RH_m4covers_s", 150, "item"], // mod item
	["PEQ IR Laser Mod Only", "RH_peq15", 100, "item"], // mod item
	["PEQ TOP Laser Mod Only", "RH_peq15_top", 100, "item"], // mod item
	["Bipod (Black) (NATO)", "bipod_01_F_blk", 125, "item"], // DLC Item
	["Bipod (Black) (CSAT)", "bipod_02_F_blk", 125, "item"], // DLC Item
	["Bipod (Black) (AAF)", "bipod_03_F_blk", 125, "item"], // DLC Item
	["Bipod (MTP) (NATO)", "bipod_01_F_mtp", 125, "item"], // DLC Item
	["Bipod (Hex) (CSAT)", "bipod_02_F_hex", 125, "item"], // DLC Item
	["Bipod (Olive) (AAF)", "bipod_03_F_oli", 125, "item"], // DLC Item
	["Bipod (Sand) (NATO)", "bipod_01_F_snd", 125, "item"], // DLC Item
	["Bipod (Tan) (CSAT)", "bipod_02_F_tan", 125, "item"], // DLC Item 
	["AMS (Black) DLC", "optic_AMS", 200, "item"], // DLC Item
	["AMS (Khaki) DLC", "optic_AMS_khk", 200, "item"], // DLC Item
	["AMS (Sand DLC)", "optic_AMS_snd", 200, "item"], // DLC Item
	["Flashlight", "acc_flashlight", 25, "item"],
	["IR Laser Pointer", "acc_pointer_IR", 25, "item"],
	["Yorris Sight (Zubr Revolver)", "optic_Yorris", 50, "item"],
	["MRD Sight (4-Five Pistol)", "optic_MRD", 50, "item"],
	["ACO (CQB)", "optic_aco_smg", 50, "item"],
	["Holosight (CQB)", "optic_Holosight_smg", 50, "item"],
	["ACO (Red)", "optic_Aco", 75, "item"],
	["ACO (Green)", "optic_Aco_grn", 75, "item"],
	["Holosight", "optic_Holosight", 75, "item"],
	["MRCO", "optic_MRCO", 100, "item"],
	["ARCO", "optic_Arco", 125, "item"],
	["RCO", "optic_Hamr", 150, "item"],
	["DMS", "optic_DMS", 175, "item"],
	["LRPS", "optic_LRPS", 175, "item"],
	["SOS", "optic_SOS", 200, "item"],
	["NVS", "optic_NVS", 500, "item"],
	["TWS", "optic_tws", 5000, "item"],
	["TWS MG", "optic_tws_mg", 6000, "item"],
	["Nightstalker", "optic_Nightstalker", 7500, "item"]
];

// If commented, means the color/camo isn't implemented or is a duplicate of another hat
headArray = compileFinal str
[
	["Assassin Helmet (Hex)", "H_HelmetSpecO_ocamo", 50, "hat"],
	["Bandanna Mask (Black)", "H_BandMask_blk", 10, "hat"],
	["Bandanna Mask (Demon)", "H_BandMask_demon", 10, "hat"],
	["Bandanna Mask (Khaki)", "H_BandMask_khk", 10, "hat"],
	["Bandanna Mask (Reaper)", "H_BandMask_reaper", 10, "hat"],
	["Beret (Green)", "H_Beret_grn", 10, "hat"],
	["Beret (Police)", "H_Beret_blk_POLICE", 10, "hat"],
	["Beret (RED)", "H_Beret_ocamo", 10, "hat"],
	["Beret (Red)", "H_Beret_red", 10, "hat"],
	["Beret (SAS)", "H_Beret_brn_SF", 10, "hat"],
	["Beret (SF)", "H_Beret_grn_SF", 10, "hat"],
	["Black Turban", "H_TurbanO_blk", 50, "hat"],
	["Booniehat (Dirty)", "H_Booniehat_dirty", 10, "hat"],
	["Booniehat (Green)", "H_Booniehat_grn", 10, "hat"],
	["Booniehat (Khaki)", "H_Booniehat_indp", 10, "hat"],
	["MICH (Camo)", "H_HelmetIA_net", 50, "hat"],
	["MICH 2 (Camo)", "H_HelmetIA_camo", 50, "hat"],
	["Shemag mask (Tan)", "H_Shemag_tan", 25, "hat"],
	["Assassin Helmet (Black)", "H_HelmetSpecO_blk", 50, "hat"],
	["Bandanna (Camo)", "H_Bandanna_camo", 10, "hat"],
	["Bandanna (Coyote)", "H_Bandanna_cbr", 10, "hat"],
	["Bandanna (Gray)", "H_Bandanna_gry", 10, "hat"],
	["Bandanna (Khaki)", "H_Bandanna_khk", 10, "hat"],
	["Bandanna (MTP)", "H_Bandanna_mcamo", 10, "hat"],
	["Bandanna (Sage)", "H_Bandanna_sgg", 10, "hat"],
	["Bandanna (Surfer)", "H_Bandanna_surfer", 10, "hat"],
	["Beanie (Black)", "H_Watchcap_blk", 10, "hat"],
	["Beanie (Dark blue)", "H_Watchcap_sgg", 10, "hat"],
	["Beanie (Dark brown)", "H_Watchcap_cbr", 10, "hat"],
	["Beanie (Dark green)", "H_Watchcap_camo", 10, "hat"],
	["Beanie (Dark khaki)", "H_Watchcap_khk", 10, "hat"],
	["Beret (Black)", "H_Beret_blk", 10, "hat"],
	["Beret (Colonel)", "H_Beret_Colonel", 10, "hat"],
	["Beret (NATO)", "H_Beret_02", 10, "hat"],
	["Booniehat (Digi)", "H_Booniehat_dgtl", 10, "hat"],
	["Booniehat (Khaki)", "H_Booniehat_khk", 10, "hat"],
	["Booniehat (MTP)", "H_Booniehat_mcamo", 10, "hat"],
	["Booniehat (Tan)", "H_Booniehat_tan", 10, "hat"],
	["Cap (BI)", "H_Cap_grn_BI", 10, "hat"],
	["Cap (Black)", "H_Cap_blk", 10, "hat"],
	["Cap (Blue)", "H_Cap_blu", 10, "hat"],
	["Cap (CMMG)", "H_Cap_blk_CMMG", 10, "hat"],
	["Cap (Green)", "H_Cap_grn", 10, "hat"],
	["Cap (ION)", "H_Cap_blk_ION", 10, "hat"],
	["Cap (Olive)", "H_Cap_oli", 10, "hat"],
	["Cap (Raven Security)", "H_Cap_blk_Raven", 10, "hat"],
	["Cap (Red)", "H_Cap_red", 10, "hat"],
	["Cap (SAS)", "H_Cap_khaki_specops_UK", 10, "hat"],
	["Cap (SF)", "H_Cap_tan_specops_US", 10, "hat"],
	["Cap (SPECOPS)", "H_Cap_brn_SPECOPS", 10, "hat"],
	["Cap (Tan)", "H_Cap_tan", 10, "hat"],
	["Combat Helmet (Black)", "H_HelmetB_plain_blk", 50, "hat"],
	["Crew Helmet (AAF)", "H_HelmetCrew_I", 50, "hat"],
	["Crew Helmet (CSAT)", "H_HelmetCrew_O", 50, "hat"],
	["Crew Helmet (NATO)", "H_HelmetCrew_B", 50, "hat"],
	["Defender Helmet (Hex)", "H_HelmetLeaderO_ocamo", 50, "hat"],
	["Defender Helmet (Urban)", "H_HelmetLeaderO_oucamo", 50, "hat"],
	["ECH (Ghillie)", "H_HelmetB_camo", 50, "hat"],
	["ECH (Light)", "H_HelmetB_light", 50, "hat"],
	["ECH (Spraypaint)", "H_HelmetB_paint", 50, "hat"],
	["ECH", "H_HelmetB", 50, "hat"],
	["Fedora (Blue)", "H_Hat_blue", 10, "hat"],
	["Fedora (Brown)", "H_Hat_brown", 10, "hat"],
	["Fedora (Camo)", "H_Hat_camo", 10, "hat"],
	["Fedora (Checker)", "H_Hat_checker", 10, "hat"],
	["Fedora (Gray)", "H_Hat_grey", 10, "hat"],
	["Fedora (Tan)", "H_Hat_tan", 10, "hat"],
	["Heli Crew Helmet (AAF)", "H_CrewHelmetHeli_I", 50, "hat"],
	["Heli Crew Helmet (CSAT)", "H_CrewHelmetHeli_O", 50, "hat"],
	["Heli Crew Helmet (NATO)", "H_CrewHelmetHeli_B", 50, "hat"],
	["Heli Pilot Helmet (AAF)", "H_PilotHelmetHeli_I", 50, "hat"],
	["Heli Pilot Helmet (CSAT)", "H_PilotHelmetHeli_O", 50, "hat"],
	["Heli Pilot Helmet (NATO)", "H_PilotHelmetHeli_B", 50, "hat"],
	["MICH", "H_HelmetIA", 50, "hat"],
	["Military Cap (AAF)", "H_MilCap_dgtl", 25, "hat"],
	["Military Cap (Blue)", "H_MilCap_blue", 25, "hat"],
	["Military Cap (Gray)", "H_MilCap_gry", 25, "hat"],
	["Military Cap (Hex)", "H_MilCap_ocamo", 25, "hat"],
	["Military Cap (MTP)", "H_MilCap_mcamo", 25, "hat"],
	["Military Cap (Russia)", "H_MilCap_rucamo", 25, "hat"],
	["Military Cap (Urban)", "H_MilCap_oucamo", 25, "hat"],
	["Pilot Helmet (AAF)", "H_PilotHelmetFighter_I", 50, "hat"],
	["Pilot Helmet (CSAT)", "H_PilotHelmetFighter_O", 50, "hat"],
	["Pilot Helmet (NATO)", "H_PilotHelmetFighter_B", 50, "hat"],
	["Protector Helmet (Hex)", "H_HelmetO_ocamo", 50, "hat"],
	["Protector Helmet (Urban)", "H_HelmetO_oucamo", 50, "hat"],
	["Racing Helmet (Black)", "H_RacingHelmet_1_black_F", 25, "hat"],
	["Racing Helmet (Blue)", "H_RacingHelmet_1_blue_F", 25, "hat"],
	["Racing Helmet (Bluking)", "H_RacingHelmet_2_F", 25, "hat"],
	["Racing Helmet (Fuel)", "H_RacingHelmet_1_F", 25, "hat"],
	["Racing Helmet (Green)", "H_RacingHelmet_1_green_F", 25, "hat"],
	["Racing Helmet (Orange)", "H_RacingHelmet_1_orange_F", 25, "hat"],
	["Racing Helmet (Red)", "H_RacingHelmet_1_red_F", 25, "hat"],
	["Racing Helmet (Redstone)", "H_RacingHelmet_3_F", 25, "hat"],
	["Racing Helmet (Vrana)", "H_RacingHelmet_4_F", 25, "hat"],
	["Racing Helmet (White)", "H_RacingHelmet_1_white_F", 25, "hat"],
	["Racing Helmet (Yellow)", "H_RacingHelmet_1_yellow_F", 25, "hat"],
	["Rangemaster Cap", "H_Cap_headphones", 25, "hat"],
	["SF Helmet (Black)", "H_HelmetSpecB_blk", 50, "hat"],
	["SF Helmet (Dark Paint)", "H_HelmetSpecB_paint2", 50, "hat"],
	["SF Helmet (Light Paint)", "H_HelmetSpecB_paint1", 50, "hat"],
	["SF Helmet", "H_HelmetSpecB", 50, "hat"],
	["Shemag (Brown)", "H_ShemagOpen_tan", 25, "hat"],
	["Shemag (White)", "H_ShemagOpen_khk", 25, "hat"],
	["Shemag mask (Khaki)", "H_Shemag_khk", 25, "hat"],
	["Shemag mask (Olive)", "H_Shemag_olive", 25, "hat"]
];

uniformArray = compileFinal str
[
	//["Racing Suit (Black)", "U_C_Driver_1_black", 25, "uni"], // can only be worn by civilian units
	//["Worker Coveralls", "U_C_WorkerCoveralls", 25, "uni"], // can only be worn by civilian units
	["Combat Fatigues (MTP) (Tee)", "U_B_CombatUniform_mcam_tshirt", 50, "uni"],
	["Combat Fatigues Shirt (Digi)", "U_I_CombatUniform_tshirt", 50, "uni"],
	["Combat Fatigues Short (Digi)", "U_I_CombatUniform_shortsleeve", 50, "uni"],
	["CTRG Combat Uniform (Tee)", "U_B_CTRG_3", 50, "uni"],
	["CTRG Combat Uniform (UBACS)", "U_B_CTRG_1", 50, "uni"],
	["CTRG Combat Uniform (UBACS2)", "U_B_CTRG_2", 50, "uni"],
	["Default Uniform (AAF)", "U_I_CombatUniform", 50, "uni"],
	["Default Uniform (CSAT)", "U_O_CombatUniform_ocamo", 50, "uni"],
	["Default Uniform (NATO)", "U_B_CombatUniform_mcam", 50, "uni"],
	["Fatigues (Urban)", "U_O_CombatUniform_oucamo", 50, "uni"],
	["Ghillie Suit (AAF)", "U_I_GhillieSuit", 4300, "uni"],
	["Ghillie Suit (CSAT)", "U_O_GhillieSuit", 4300, "uni"],
	["Ghillie Suit (NATO)", "U_B_GhillieSuit", 4300, "uni"],
	["Full Ghillie (Arid) (AAF)", "U_I_FullGhillie_ard", 5500, "uni"], //DLC Uniform
	["Full Ghillie (Arid) (CSAT)", "U_O_FullGhillie_ard", 5500, "uni"], //DLC Uniform
	["Full Ghillie (Arid) (NATO)", "U_B_FullGhillie_ard", 5500, "uni"], //DLC Uniform
	["Full Ghillie (Lush) (AAF)", "U_I_FullGhillie_lsh", 5500, "uni"], //DLC Uniform
	["Full Ghillie (Lush) (CSAT)", "U_O_FullGhillie_lsh", 5500, "uni"], //DLC Uniform
	["Full Ghillie (Lush) (NATO)", "U_B_FullGhillie_lsh", 5500, "uni"], //DLC Uniform
	["Full Ghillie (Semi-Arid) (AAF)", "U_I_FullGhillie_sard", 5500, "uni"], //DLC Uniform
	["Full Ghillie (Semi-Arid) (CSAT)", "U_O_FullGhillie_sard", 5500, "uni"], //DLC Uniform
	["Full Ghillie (Semi-Arid) (NATO)", "U_B_FullGhillie_sard", 5500, "uni"], //DLC Uniform
	["Guerilla Smocks 1", "U_BG_Guerilla1_1", 25, "uni"], // BLUFOR
	["Guerilla Smocks 1", "U_IG_Guerilla1_1", 25, "uni"], // Independent
	["Guerilla Smocks 1", "U_OG_Guerilla1_1", 25, "uni"], // OPFOR
	["Guerilla Smocks 2", "U_BG_Guerilla2_1", 25, "uni"],
	["Guerilla Smocks 2", "U_IG_Guerilla2_1", 25, "uni"],
	["Guerilla Smocks 2", "U_OG_Guerilla2_1", 25, "uni"],
	["Guerilla Smocks 3", "U_BG_Guerilla2_2", 25, "uni"],
	["Guerilla Smocks 3", "U_IG_Guerilla2_2", 25, "uni"],
	["Guerilla Smocks 3", "U_OG_Guerilla2_2", 25, "uni"],
	["Guerilla Smocks 4", "U_BG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks 4", "U_IG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks 4", "U_OG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks 5", "U_BG_Guerilla3_1", 25, "uni"],
	["Guerilla Smocks 5", "U_IG_Guerilla3_1", 25, "uni"],
	["Guerilla Smocks 5", "U_OG_Guerilla3_1", 25, "uni"],
	["Guerilla Smocks 6", "U_BG_Guerilla3_2", 25, "uni"],
	["Guerilla Smocks 6", "U_IG_Guerilla3_2", 25, "uni"],
	["Guerilla Smocks 6", "U_OG_Guerilla3_2", 25, "uni"],
	["Guerilla Smocks 7", "U_BG_leader", 25, "uni"],
	["Guerilla Smocks 7", "U_IG_leader", 25, "uni"],
	["Guerilla Smocks 7", "U_OG_leader", 25, "uni"],
	["Heli Pilot Coveralls (AAF)", "U_I_HeliPilotCoveralls", 50, "uni"],
	["Heli Pilot Coveralls (NATO)", "U_B_HeliPilotCoveralls", 50, "uni"],
	["Officer Fatigues (Digi)", "U_I_OfficerUniform", 50, "uni"],
	["Officer Fatigues (Hex)", "U_O_OfficerUniform_ocamo", 50, "uni"],
	["Pilot Coveralls (AAF)", "U_I_pilotCoveralls", 50, "uni"],
	["Pilot Coveralls (CSAT)", "U_O_PilotCoveralls", 50, "uni"],
	["Pilot Coveralls (NATO)", "U_B_PilotCoveralls", 50, "uni"],
	["Polo (Blue/green)", "U_C_Poloshirt_stripped", 25, "uni"],
	["Polo (Burgundy)", "U_C_Poloshirt_burgundy", 25, "uni"],
	["Polo (Competitor)", "U_Competitor", 25, "uni"],
	["Polo (Navy)", "U_C_Poloshirt_blue", 25, "uni"],
	["Polo (Rangemaster)", "U_Rangemaster", 25, "uni"],
	["Polo (Red/white)", "U_C_Poloshirt_redwhite", 25, "uni"],
	["Polo (Salmon)", "U_C_Poloshirt_salmon", 25, "uni"],
	["Polo (Tri-color)", "U_C_Poloshirt_tricolour", 25, "uni"],
	["Racing Suit (Blue)", "U_C_Driver_1_blue", 25, "uni"],
	["Racing Suit (Bluking)", "U_C_Driver_2", 25, "uni"],
	["Racing Suit (Fuel)", "U_C_Driver_1", 25, "uni"],
	["Racing Suit (Green)", "U_C_Driver_1_green", 25, "uni"],
	["Racing Suit (Orange)", "U_C_Driver_1_orange", 25, "uni"],
	["Racing Suit (Red)", "U_C_Driver_1_red", 25, "uni"],
	["Racing Suit (Redstone)", "U_C_Driver_3", 25, "uni"],
	["Racing Suit (Vrana)", "U_C_Driver_4", 25, "uni"],
	["Racing Suit (White)", "U_C_Driver_1_white", 25, "uni"],
	["Racing Suit (Yellow)", "U_C_Driver_1_yellow", 25, "uni"],
	["Recon Fatigues (Hex)", "U_O_SpecopsUniform_ocamo", 50, "uni"],
	["Recon Fatigues (MTP)", "U_B_CombatUniform_mcam_vest", 50, "uni"],
	["Recon Fatigues (Sage)", "U_B_SpecopsUniform_sgg", 50, "uni"],
	["T-Shirt (Blue)", "U_C_Poor_1", 25, "uni"],
	["Tron Light Suit (Blue)", "U_B_Protagonist_VR", 25000, "uni"],
	["Tron Light Suit (Green)", "U_I_Protagonist_VR", 25000, "uni"],
	["Tron Light Suit (Red)", "U_O_Protagonist_VR", 25000, "uni"],
	["Wetsuit (AAF)", "U_I_Wetsuit", 1200, "uni"],
	["Wetsuit (CSAT)", "U_O_Wetsuit", 1200, "uni"],
	["Wetsuit (NATO)", "U_B_Wetsuit", 1200, "uni"]
];

vestArray = compileFinal str
[
	["Carrier GL Rig (Black)", "V_PlateCarrierGL_blk", -1, "vest"],
	["Carrier GL Rig (Black)", "V_PlateCarrierGL_blk", -1, "vest"], // DLC Vest
	["Carrier GL Rig (Green)", "V_PlateCarrierGL_rgr", -1, "vest"],
	["Carrier GL Rig (MTP)", "V_PlateCarrierGL_mtp", -1, "vest"],
	["Carrier Lite (Black)", "V_PlateCarrier1_blk", -1, "vest"],
	["Carrier Lite (Green)", "V_PlateCarrier1_rgr", -1, "vest"],
	["Carrier Rig (Green)", "V_PlateCarrier3_rgr", -1, "vest"],
	["Carrier Special Rig (Black)", "V_PlateCarrierSpec_blk", -1, "vest"],
	["Carrier Special Rig (Black)", "V_PlateCarrierSpec_blk", -1, "vest"], // DLC Vest
	["Carrier Special Rig (Green)", "V_PlateCarrierSpec_rgr", -1, "vest"],
	["Carrier Special Rig (Green)", "V_PlateCarrierSpec_rgr", -1, "vest"],
	["Carrier Special Rig (MTP)", "V_PlateCarrierSpec_mtp", -1, "vest"],
	["Carrier Special Rig (MTP)", "V_PlateCarrierSpec_mtp", -1, "vest"], // DLC Vest
	["Chest Rig (Green)", "V_Chestrig_rgr", -1, "vest"],
	["Chest Rig (Khaki)", "V_Chestrig_khk", -1, "vest"],
	["Rebreather (NATO)", "V_RebreatherB", 200, "vest"],
	["Rebreather (CSAT)", "V_RebreatherIR", 200, "vest"],
	["Rebreather (AAF)", "V_RebreatherIA", 200, "vest"],
	["Carrier Lite (Green)", "V_PlateCarrier1_rgr", -1, "vest"],
	["Carrier Lite (Black)", "V_PlateCarrier1_blk", -1, "vest"],
	["Carrier Rig (Green)", "V_PlateCarrier3_rgr", -1, "vest"],
	["Carrier GL Rig (Black)", "V_PlateCarrierGL_blk", -1, "vest"],
	["Carrier GL Rig (Green)", "V_PlateCarrierGL_rgr", -1, "vest"],
	["Carrier GL Rig (MTP)", "V_PlateCarrierGL_mtp", -1, "vest"],
	["Carrier Special Rig (Black)", "V_PlateCarrierSpec_blk", -1, "vest"],
	["Carrier Special Rig (Green)", "V_PlateCarrierSpec_rgr", -1, "vest"],
	["Carrier Special Rig (MTP)", "V_PlateCarrierSpec_mtp", -1, "vest"],
	["GA Carrier Lite (Digi)", "V_PlateCarrierIA1_dgtl", -1, "vest"],
	["GA Carrier Rig (Digi)", "V_PlateCarrierIA2_dgtl", -1, "vest"],
	["GA Carrier GL Rig (Digi)", "V_PlateCarrierIAGL_dgtl", -1, "vest"],
	["GA Carrier GL Rig (Olive)", "V_PlateCarrierIAGL_oli", -1, "vest"],
	["LBV Harness", "V_HarnessO_brn", -1, "vest"],
	["LBV Harness (Gray)", "V_HarnessO_gry", -1, "vest"],
	["LBV Grenadier Harness", "V_HarnessOGL_brn", -1, "vest"],
	["LBV Grenadier Harness (Gray)", "V_HarnessOGL_gry", -1, "vest"],
	["ELBV Harness", "V_HarnessOSpec_brn", -1, "vest"],
	["ELBV Harness (Gray)", "V_HarnessOSpec_gry", -1, "vest"],
	["Slash Bandolier (Black)", "V_BandollierB_blk", -1, "vest"],
	["Slash Bandolier (Coyote)", "V_BandollierB_cbr", -1, "vest"],
	["Slash Bandolier (Green)", "V_BandollierB_rgr", -1, "vest"],
	["Slash Bandolier (Khaki)", "V_BandollierB_khk", -1, "vest"],
	["Slash Bandolier (Olive)", "V_BandollierB_oli", -1, "vest"],
	["Chest Rig (Khaki)", "V_Chestrig_khk", -1, "vest"],
	["Chest Rig (Green)", "V_Chestrig_rgr", -1, "vest"],
	["Fighter Chestrig (Black)", "V_Chestrig_blk", -1, "vest"],
	["Fighter Chestrig (Olive)", "V_Chestrig_oli", -1, "vest"],
	["Tactical Vest (Black)", "V_TacVest_blk", -1, "vest"],
	["Tactical Vest (Brown)", "V_TacVest_brn", -1, "vest"],
	["Tactical Vest (Camo)", "V_TacVest_camo", -1, "vest"],
	["Tactical Vest (Khaki)", "V_TacVest_khk", -1, "vest"],
	["Tactical Vest (Olive)", "V_TacVest_oli", -1, "vest"],
	["Raven Night Vest", "V_TacVestIR_blk", -1, "vest"]
];

backpackArray = compileFinal str
[
	//["Parachute", "B_Parachute", 200, "backpack"],

	["Assault Pack (Black)", "B_AssaultPack_blk", 150, "backpack"],
	["Assault Pack (Green)", "B_AssaultPack_rgr", 150, "backpack"],
	["Assault Pack (MTP)", "B_AssaultPack_mcamo", 150, "backpack"],
	["Assault Pack (Hex)", "B_AssaultPack_ocamo", 150, "backpack"],

	["Field Pack (Black)", "B_FieldPack_blk", 200, "backpack"],
	["Field Pack (Coyote)", "B_FieldPack_cbr", 200, "backpack"],
	["Field Pack (Khaki)", "B_FieldPack_khk", 200, "backpack"],
	["Field Pack (Urban)", "B_FieldPack_oucamo", 200, "backpack"],

	["Kitbag (Coyote)", "B_Kitbag_cbr", 350, "backpack"],
	["Kitbag (Green)", "B_Kitbag_rgr", 350, "backpack"],
	["Kitbag (MTP)", "B_Kitbag_mcamo", 350, "backpack"],
	["Kitbag (Sage)", "B_Kitbag_sgg", 350, "backpack"],

	["Bergen (Black)", "B_Bergen_blk", 350, "backpack"],
	["Bergen (Green)", "B_Bergen_rgr", 350, "backpack"],
	["Bergen (MTP)", "B_Bergen_mcamo", 350, "backpack"],
	["Bergen (Sage)", "B_Bergen_sgg", 350, "backpack"],

	["Carryall (Khaki)", "B_Carryall_khk", 500, "backpack"],
	["Carryall (MTP)", "B_Carryall_mcamo", 500, "backpack"],
	["Carryall (Olive)", "B_Carryall_oli", 500, "backpack"],
	["Carryall (Urban)", "B_Carryall_oucamo", 500, "backpack"]
];

genItemArray = compileFinal str
[
	["Remote Designator Bag (NATO)", "B_Static_Designator_01_weapon_F", 2000, "backpack"],
	["Remote Designator Bag (CSAT)", "O_Static_Designator_02_weapon_F", 2000, "backpack"],
	["Quadrotor UAV (NATO)", "B_UAV_01_backpack_F", 2500, "backpack"],
	["Quadrotor UAV (CSAT)", "O_UAV_01_backpack_F", 2500, "backpack"],
	["Quadrotor UAV (AAF)", "I_UAV_01_backpack_F", 2500, "backpack"],
	["UAV Terminal (NATO)", "B_UavTerminal", 150, "gps"],
	["UAV Terminal (CSAT)", "O_UavTerminal", 150, "gps"],
	["UAV Terminal (AAF)", "I_UavTerminal", 150, "gps"],
	["GPS", "ItemGPS", 100, "gps"],
	["First Aid Kit", "FirstAidKit", 25, "item"],
	["Medikit", "Medikit", 150, "item"],
	["Toolkit", "ToolKit", 150, "item"],
	["Mine Detector", "MineDetector", 100, "item"],
	["NV Goggles", "NVGoggles", 50, "nvg"],
	["Diving Goggles", "G_Diving", 100, "gogg"],
	["Binoculars", "Binocular", 50, "binoc"],
	["Rangefinder", "Rangefinder", 2150, "binoc"],
	["Laser Designator", "Laserdesignator", 8200, "binoc"],
	["Chemlight (Blue)", "Chemlight_blue", 25, "mag"],
	["Chemlight (Green)", "Chemlight_green", 25, "mag"],
	["Chemlight (Yellow)", "Chemlight_yellow", 25, "mag"],
	["Chemlight (Red)", "Chemlight_red", 25, "mag"]
];

allStoreMagazines = compileFinal str (call ammoArray + call throwputArray + call genItemArray);
allRegularStoreItems = compileFinal str (call allGunStoreFirearms + call allStoreMagazines + call accessoriesArray);
allStoreGear = compileFinal str (call headArray + call uniformArray + call vestArray + call backpackArray);

genObjectsArray = compileFinal str
[
	["Airstrip Light", "Land_Flush_Light_yellow_F", 100, "object"], //Size- 1 Cost- 15 Loadable
	["Bag Fence (Short)", "Land_BagFence_Short_F", 150, "object"],
	["Camp Fire", "FirePlace_burning_F", 2500, "object"],
	["Container (20Ft Blue)", "Land_Cargo20_blue_F", 25000, "object"], //Item so large to prevent loading. Towable item, Medium Capacity 40, Suggest $40K
	["Container (20Ft Grey)", "Land_Cargo20_grey_F", 25000, "object"], //Item so large to prevent loading. Towable item, Medium Capacity 40, Suggest $40K
	["Container (40Ft White)", "Land_Cargo40_white_F", 40000, "object"], //Item so large to prevent loading. Towable item,  Large Capacity 75, Suggest $80K
	["Metal Barrel", "Land_MetalBarrel_F", 25, "object"],
	["Pipes", "Land_Pipes_Large_F", 200, "object"],
	["Shelves", "Land_ShelvesWooden_blue_F", 200, "object"],
	["Shoot House Wall", "Land_Shoot_House_Wall_F", 180, "object"],
	["Toilet Box", "Land_ToiletBox_F", 25, "object"],
	
	["Water Barrel", "Land_BarrelWater_F", 5000, "object"],
	["Food sacks", "Land_Sacks_goods_F", 5000, "object"],
	["Fuel Bowser (Working)", "Land_FuelStation_Feed_F", 50000, "object"],
	["ATM", "Land_Atm_01_F", 80000, "object"],
	["Base door", "Land_Canal_Wall_10m_F", 25000, "object"],  // LouD
	["Base door key (PIN: 0000) (beta)", "Land_InfoStand_V2_F", 10000, "object"],  // LouD
	["Base locker (PIN: 0000)", "Land_Device_assembled_F", 60000, "object"],  //Cael817, SNAFU,Used for base operations <-- Destroyable
	["Safe (PIN: 0000)", "Box_NATO_AmmoVeh_F", 45000, "ammocrate"],
	["Container (150 Cap)(Lift Only)", "Land_Cargo40_red_F", 60000, "object"], //Item so large to prevent loading. Towable item,  Large Capacity 120, Suggest $80K
	["Container (170 Cap)(Lift Only)", "Land_Cargo40_military_green_F", 80000, "object"], //Item so large to prevent loading. Towable item, Extra Large Capacity 150, Suggest $100K
	["Doomsday Bunker)", "Land_Swing_01_F", 10000, "object"], //Cheap Gimic Item
	["HBarrier (1 block)", "Land_HBarrier_1_F", 150, "object"],
	["HBarrier (3 blocks)", "Land_HBarrier_3_F", 200, "object"],
	["Halo Jump Flag", "FlagPole_F", 45000, "object"],
	["Airport Tower", "Land_Airport_Tower_F", 150000, "object"], //Large Structure, Suggest $150K
	["Bag Bunker (Large)", "Land_BagBunker_Large_F", 500, "object"],
	["Bag Bunker (Small)", "Land_BagBunker_Small_F", 250, "object"],
	["Bag Bunker Tower", "Land_BagBunker_Tower_F", 1000, "object"],
	["Bag Fence (Corner)", "Land_BagFence_Corner_F", 150, "object"],
	["Bag Fence (End)", "Land_BagFence_End_F", 150, "object"],
	["Bag Fence (Long)", "Land_BagFence_Long_F", 200, "object"],
	["Bag Fence (Round)", "Land_BagFence_Round_F", 150, "object"],
	["Barracks", "Land_i_Barracks_V1_F", 150000, "object"],  //Expensive Item Suggest $150K
	["BasketBall Court)", "Land_BC_Court_F", 60000, "object"], //Expensive Item due to vertical construction ability Suggest $60k
	["Boom Gate", "Land_BarGate_F", 150, "object"],
	["Burger Shop", "Land_Kiosk_redburger_F", 35000, "object"],
	["Canal Stairs", "Land_Canal_Wall_Stairs_F", 1500, "object"],
	["Canal Wall (10m Thin)", "Land_Canal_WallSmall_10m_F", 800, "object"],
	["Chapel", "Land_Chapel_V2_F", 19000, "object"], //Slum House Container
	["Cathedral (Large)", "Land_Church_01_V1_F", 59000, "object"],
	["Concrete Barrier (Long)", "Land_CncBarrierMedium4_F", 500, "object"],
	["Concrete Barrier (Medium)", "Land_CncBarrierMedium_F", 350, "object"],
	["Concrete Barrier", "Land_CncBarrier_F", 200, "object"],
	["Concrete Block", "BlockConcrete_F", 10000, "object"], //Matches in with Ramps Suggest $10K Alot smaller than pier
	["Concrete Frame", "Land_CncShelter_F", 200, "object"],
	["Concrete Military Wall", "Land_Mil_ConcreteWall_F", 400, "object"],
	["Concrete Ramp (High)", "Land_RampConcreteHigh_F", 5000, "object"],
	["Concrete Ramp", "Land_RampConcrete_F", 2500, "object"],
	["Concrete Wall (Long)", "Land_CncWall4_F", 600, "object"],
	["Concrete Wall", "Land_CncWall1_F", 400, "object"],
	["Dome (Large)", "Land_Dome_Big_F", 110400, "object"],
	["Dome (Small)", "Land_Dome_Small_F", 70400, "object"],
	["Garage (Residential)", "Land_i_Garage_V1_F", 18000, "object"],
	["Gate (Fence)", "Land_Net_Fence_Gate_F", 1000, "object"], //Suggest $3.5K
	["Gate (Military)", "Land_Mil_WallBig_Gate_F", 7000, "object"], //Suggest $20K
	["Gate (Town)", "Land_City_Gate_F", 5000, "object"], //Suggest $8K
	["Grave (RIP)", "Land_Grave_rocks_F", 500, "object"],
	["Hanger (Inflatable)", "Land_TentHangar_V1_F", 50000, "object"],  //Open on 2 sides, Suggest $50K
	["Hanger (Steel)", "Land_Hangar_F", 150000, "object"],  //Large Structure, Only moveable by largest vehciles/containers Suggest $150K
	["HBarrier (5 blocks)", "Land_HBarrier_5_F", 250, "object"],
	["HBarrier Big", "Land_HBarrierBig_F", 500, "object"],
	["HBarrier Wall (4 blocks)", "Land_HBarrierWall4_F", 400, "object"],
	["HBarrier Wall (6 blocks)", "Land_HBarrierWall6_F", 500, "object"],
	["HBarrier Watchtower", "Land_HBarrierTower_F", 600, "object"],
	["Highway Guardrail", "Land_Crash_barrier_F", 200, "object"],
	["Huge Foundation (Flat)", "Land_Pier_F", 80000, "object"], //Large flat object for base building, Expensive Item Suggest $80K
	["Ladder", "Land_PierLadder_F", 800, "object"],
	["Lamp Post (Harbour)", "Land_LampHarbour_F", 100, "object"],
	["Lamp Post (Shabby)", "Land_LampShabby_F", 100, "object"],
	["Light House", "Land_LightHouse_F", 65000, "object"],
	["Light Tower (Halogen)", "Land_LampHalogen_F", 1000, "object"], //Size- 5 Cost- 1000 Loadable
	["Medical Cargo House", "Land_Medevac_house_V1_F", 15000, "object"],
	["Military Cargo House", "Land_Cargo_House_V1_F", 15000, "object"],
	["Military Cargo HQ", "Land_Cargo_HQ_V1_F", 65000, "object"], // Added on player request
	["Military Cargo Post", "Land_Cargo_Patrol_V1_F", 20000, "object"],
	["Military Cargo Tower", "Land_Cargo_Tower_V1_F", 100000, "object"],
	["Military Offices", "Land_MilOffices_V1_F", 65000, "object"],
	["Military Wall (Big)", "Land_Mil_WallBig_4m_F", 600, "object"],
	["Multi Level Construction", "Land_WIP_F", 65000, "object"],
	["Scaffolding", "Land_Scaffolding_F", 10000, "object"],
	["Shed (Industrial)", "Land_i_Shed_Ind_F", 67000, "object"],
	["Shed (Lean-too)", "Land_Shed_Small_F", 40000, "object"],
	["Shed Large (Open)", "Land_Shed_Big_F", 65000, "object"],
	["Solar Tower (Massive)", "Land_spp_Tower_F", 85000, "object"],
	["Stairs", "Land_GH_Stairs_F", 1000, "object"],
	["Statue", "Land_Maroula_F", 1000, "object"], //Cheap Gimic Item
	["Target", "TargetP_Civ2_NoPop_F", 80, "object"],
	["Wombat Lodge", "Land_FieldToilet_F", 500, "object"] //Cheap Gimic Item
];

allGenStoreVanillaItems = compileFinal str (call genItemArray + call genObjectsArray + call allStoreGear);

//Text name, classname, buy cost, spawn type, sell price (selling not implemented) or spawning color
landArray = compileFinal str
[
	["Kart", "C_Kart_01_F", 500, "vehicle"],

	["Quadbike (Civilian)", "C_Quadbike_01_F", 600, "vehicle"],
	["Quadbike (NATO)", "B_Quadbike_01_F", 650, "vehicle"],
	["Quadbike (CSAT)", "O_Quadbike_01_F", 650, "vehicle"],
	["Quadbike (AAF)", "I_Quadbike_01_F", 650, "vehicle"],
	["Quadbike (FIA)", "B_G_Quadbike_01_F", 650, "vehicle"],

	["Hatchback", "C_Hatchback_01_F", 800, "vehicle"],
	["Hatchback Sport", "C_Hatchback_01_sport_F", 1000, "vehicle"],
	["SUV", "C_SUV_01_F", 1100, "vehicle"],
	["Offroad", "C_Offroad_01_F", 1100, "vehicle"],
	["Offroad Camo", "B_G_Offroad_01_F", 1250, "vehicle"],
	["Offroad Repair", "C_Offroad_01_repair_F", 1500, "vehicle"],
	["Offroad HMG", "B_G_Offroad_01_armed_F", 2500, "vehicle"],

	["Truck", "C_Van_01_transport_F", 700, "vehicle"],
	["Truck (Camo)", "B_G_Van_01_transport_F", 800, "vehicle"],
	["Truck Box", "C_Van_01_box_F", 900, "vehicle"],
	["Fuel Truck", "C_Van_01_fuel_F", 2000, "vehicle"],
	["Fuel Truck (Camo)", "B_G_Van_01_fuel_F", 2100, "vehicle"],

	["HEMTT Tractor", "B_Truck_01_mover_F", 4000, "vehicle"],
	["HEMTT Box", "B_Truck_01_box_F", 5000, "vehicle"],
	["HEMTT Transport", "B_Truck_01_transport_F", 6000, "vehicle"],
	["HEMTT Covered", "B_Truck_01_covered_F", 7500, "vehicle"],
	["HEMTT Fuel", "B_Truck_01_fuel_F", 9000, "vehicle"],
	["HEMTT Medical", "B_Truck_01_medical_F", 10000, "vehicle"],
	["HEMTT Repair", "B_Truck_01_Repair_F", 12500, "vehicle"],
	["HEMTT Ammo", "B_Truck_01_ammo_F", 27500, "vehicle"],

	["Tempest Device", "O_Truck_03_device_F", 4000, "vehicle"],
	["Tempest Transport", "O_Truck_03_transport_F", 6000, "vehicle"],
	["Tempest Covered", "O_Truck_03_covered_F", 7500, "vehicle"],
	["Tempest Fuel", "O_Truck_03_fuel_F", 9000, "vehicle"],
	["Tempest Medical", "O_Truck_03_medical_F", 10000, "vehicle"],
	["Tempest Repair", "O_Truck_03_repair_F", 12500, "vehicle"],
	["Tempest Ammo", "O_Truck_03_ammo_F", 27500, "vehicle"],

	["Zamak Transport", "I_Truck_02_transport_F", 4000, "vehicle"],
	["Zamak Covered", "I_Truck_02_covered_F", 5000, "vehicle"],
	["Zamak Fuel", "I_Truck_02_fuel_F", 7500, "vehicle"],
	["Zamak Medical", "I_Truck_02_medical_F", 9000, "vehicle"],
	["Zamak Repair", "I_Truck_02_box_F", 10000, "vehicle"],
	["Zamak Ammo", "I_Truck_02_ammo_F", 25000, "vehicle"],

	["UGV Stomper (NATO)", "B_UGV_01_F", 2500, "vehicle"],
	["UGV Stomper RCWS (NATO)", "B_UGV_01_rcws_F", 15000, "vehicle"],
	["UGV Stomper (AAF)", "I_UGV_01_F", 2500, "vehicle"],
	["UGV Stomper RCWS (AAF)", "I_UGV_01_rcws_F", 15000, "vehicle"],
	["UGV Saif (CSAT)", "O_UGV_01_F", 2500, "vehicle"],
	["UGV Saif RCWS (CSAT)", "O_UGV_01_rcws_F", 15000, "vehicle"]
];

armoredArray = compileFinal str
[
	["Hunter", "B_MRAP_01_F", 4000, "vehicle"],
	["Hunter HMG", "B_MRAP_01_hmg_F", 15000, "vehicle"],
	["Hunter GMG", "B_MRAP_01_gmg_F", 17500, "vehicle"],
	["Ifrit", "O_MRAP_02_F", 4000, "vehicle"],
	["Ifrit HMG", "O_MRAP_02_hmg_F", 15000, "vehicle"],
	["Ifrit GMG", "O_MRAP_02_gmg_F", 17500, "vehicle"],
	["Strider", "I_MRAP_03_F", 4000, "vehicle"],
	["Strider HMG", "I_MRAP_03_hmg_F", 15000, "vehicle"],
	["Strider GMG", "I_MRAP_03_gmg_F", 17500, "vehicle"],
	["HMMWV (Unarmed)", "HMMWV", 4000, "vehicle"],
	["HMMWV M1114 AGS", "m1114_ags_acr", 20000, "vehicle"],
	["HMMWV M1151 M2", "HMMWV_m1151_m2", 20000, "vehicle"],
	["HMMWV-M2", "HMMWV2_m2", 20000, "vehicle"],
	["HMMWV MK19", "HMMWV_mk19", 20000, "vehicle"],
	["HMMWV TOW", "HMMWV_TOW", 20000, "vehicle"],
	["MSE-3 Marid", "O_APC_Wheeled_02_rcws_F", 22500, "vehicle"],
	["AMV-7 Marshall", "B_APC_Wheeled_01_cannon_F", 27500, "vehicle"],
	["AFV-4 Gorgon", "I_APC_Wheeled_03_cannon_F", 30000, "vehicle"],
	["M1126 ICV M134 Crows Woodland", "m1126_icv_m134_dg1_noslatwood", 25000, "vehicle"],
	["M1126 ICV M134 Crows (Slat) Woodland", "m1126_icv_m134_dg1_slatwood", 27500, "vehicle"],
	["M1126 ICV M2 Crows Woodland", "m1126_icv_M2_dg1_noslatwood", 25000, "vehicle"],
	["M1126 ICV M2 Crows (Slat) Woodland", "m1126_icv_M2_dg1_slatwood", 27500, "vehicle"],
	["M1126 ICV M2 GPK Woodland", "m1126_icv_M2NEST_dg1_noslatwood", 25000, "vehicle"],
	["M1126 ICV M2 GPK (Slat) Woodland", "m1126_icv_M2NEST_dg1_slatwood", 27500, "vehicle"],
	["M1126 ICV Mk19. Crows Woodland", "m1126_icv_mk19_dg1_noslatwood", 25000, "vehicle"],
	["M1126 ICV Mk19. Crows (Slat) Woodland", "m1126_icv_mk19_dg1_slatwood", 27500, "vehicle"],
	["M1128 MGS Woodland", "m1128_mgs_dg1_noslatwood", 45000, "vehicle"],
	["M1128 MGS (Slat) Woodland", "m1128_mgs_dg1_slatwood", 50000, "vehicle"],
	["M1129 MC Mk19. Woodland", "m1129_MC_dg1_noslatwood", 45000, "vehicle"],
	["M1129 MC Mk19. (Slat) Woodland", "m1129_MC_dg1_slatwood", 50000, "vehicle"],
	["M1128 ATGMV Woodland", "m1135_ATGMV_dg1_noslatwood", 35000, "vehicle"],
	["M1128 ATGMV (Slat) Woodland", "m1135_ATGMV_dg1_slatwood", 40000, "vehicle"]
];

tanksArray = compileFinal str
[
	["CRV-6e Bobcat", "B_APC_Tracked_01_CRV_F", 32500, "vehicle"],
	["IFV-6c Panther", "B_APC_Tracked_01_rcws_F", 35000, "vehicle"],
	["FV-720 Mora", "I_APC_tracked_03_cannon_F", 37500, "vehicle"],
	["BTR-K Kamysh", "O_APC_Tracked_02_cannon_F", 40000, "vehicle"],
	["IFV-6a Cheetah AA", "B_APC_Tracked_01_AA_F", 40000, "vehicle"],
	["ZSU-39 Tigris AA", "O_APC_Tracked_02_AA_F", 40000, "vehicle"],
	["M2A1 Slammer", "B_MBT_01_cannon_F", 50000, "vehicle"],
	["M2A4 Slammer HMG", "B_MBT_01_TUSK_F", 50000, "vehicle"], // Commander gun variant
	["T-100 Varsuk", "O_MBT_02_cannon_F", 50000, "vehicle"],
	["MBT-52 Kuma", "I_MBT_03_cannon_F", 50000, "vehicle"],
	["MBT-52 Kuma Desert", "steve_mbt_kuma", 50000, "vehicle"],
	["M1A2 TUSK Woodland Mod Only", "burnes_m1a2_meu_01_public", 55000, "vehicle"],
	["M1A2 TUSK Desert Mod Only", "burnes_m1a2_meu_02_public", 55000, "vehicle"],
	["M1A1 Desert Mod Only", "burnes_m1a2_meu_03_public", 55000, "vehicle"],
	["M1A1 Woodland Mod Only", "burnes_m1a2_meu_04_public", 55000, "vehicle"],
	["M4 Scorcher", "B_MBT_01_arty_F", 1500000, "vehicle"],
	["M5 Sandstorm MLRS", "B_MBT_01_mlrs_F", 1000000, "vehicle"],
	["2S9 Socher", "o_mbt_02_arty_F", 1500000, "vehicle"]
];

helicoptersArray = compileFinal str
[
	["M-900 Civilian", "C_Heli_Light_01_civil_F", 4000, "vehicle"], // MH-6, no flares
	["MH-9 Hummingbird", "B_Heli_Light_01_F", 5000, "vehicle"], // MH-6
	["PO-30 Orca (Black)", "O_Heli_Light_02_unarmed_F", 7000, "vehicle"], // Ka-60
	["WY-55 Hellcat (Green)", "I_Heli_light_03_unarmed_F", 7000, "vehicle"], // AW159
	["HH-60G Dedicated To Brandon", "USAF_HH60G", 25000, "vehicle"],
	["HH-60G Medical", "USAF_HH60Gmed", 25000, "vehicle"],
	["UH-1H Huey", "uh1h", 6000, "vehicle"],
	["UH-1Y Venom", "uh1y", 25000, "vehicle"],
	["UH-60m Black Hawk", "uh60m", 15000, "vehicle"],
	

	["Mi-290 Taru (Crane) [DLC]", "O_Heli_Transport_04_F", 7500, "vehicle"], // CH-54
	["Mi-290 Taru (Box) [DLC]", "O_Heli_Transport_04_box_F", 8000, "vehicle"],
	["Mi-290 Taru (Fuel) [DLC]", "O_Heli_Transport_04_fuel_F", 8500, "vehicle"],
	["Mi-290 Taru (Bench) [DLC]", "O_Heli_Transport_04_bench_F", 9000, "vehicle"],
	["Mi-290 Taru (Transport) [DLC]", "O_Heli_Transport_04_covered_F", 9500, "vehicle"],
	["CH-67 Huron (Black) [DLC]", "B_Heli_Transport_03_unarmed_F", 10000, "vehicle"], // CH-47
	["CH-47H Mod Only", "ch_47f", 15000, "vehicle"],
	["CH-47H Desert Mod Only", "ch_47f_des", 15000, "vehicle"],
	["CH-49 Mohawk", "I_Heli_Transport_02_F", 10000, "vehicle"], // AW101

	["Mi-290 Taru (Medical) [DLC]", "O_Heli_Transport_04_medevac_F",12500, "vehicle"],
	["Mi-290 Taru (Repair) [DLC]", "O_Heli_Transport_04_repair_F", 15000, "vehicle"],
	["Mi-290 Taru (Ammo) [DLC]", "O_Heli_Transport_04_ammo_F", 25000, "vehicle"],

	["UH-80 Ghost Hawk (Black)", "B_Heli_Transport_01_F", 25000, "vehicle"], // UH-60 Stealth with 2 side miniguns
	["UH-80 Ghost Hawk (Green)", "B_Heli_Transport_01_camo_F", 25000, "vehicle"], // UH-60 Stealth with 2 side miniguns (green camo)
	["CH-67 Huron (Armed) [DLC]", "B_Heli_Transport_03_F", 30000, "vehicle"], // CH-47 with 2 side miniguns
	["AH-9 Pawnee", "B_Heli_Light_01_armed_F", 30000, "vehicle"], // Armed AH-6
	["PO-30 Orca (Armed, Black)", "O_Heli_Light_02_v2_F", 30000, "vehicle"], // Armed Ka-60 with orca paintjob
	["PO-30 Orca (Armed, Hex)", "O_Heli_Light_02_F", 35000, "vehicle"], // Armed Ka-60
	["WY-55 Hellcat (Armed)", "I_Heli_light_03_F", 40000, "vehicle"], // Armed AW159
	["AH-99 Blackfoot", "B_Heli_Attack_01_F", 75000, "vehicle"], // RAH-66 with gunner
	["Mi-48 Kajman (Hex)", "O_Heli_Attack_02_F", 60000, "vehicle"], // Mi-28 with gunner
	["Mi-48 Kajman (Black)", "O_Heli_Attack_02_black_F", 60000, "vehicle"], // Mi-28 with gunner (black camo)
	["AH-64D Apache", "ah64d", 75000, "vehicle"],
	["AH-64D Apache Jaws", "ah64d_jaws", 85000, "vehicle"],
	["AH1Z Viper Mean As Fuck", "ah1z", 85000, "vehicle"]
];

planesArray = compileFinal str
[
	["A-143 Buzzard AA", "I_Plane_Fighter_03_AA_F", 40000, "vehicle"],
	["A-143 Buzzard CAS", "I_Plane_Fighter_03_CAS_F", 45000, "vehicle"],
	["A-164 Wipeout CAS", "B_Plane_CAS_01_F", 150000, "vehicle"],
	["To-199 Neophron CAS", "O_Plane_CAS_02_F", 60000, "vehicle"],
	["MQ4A Greyhawk Bomber UAV", "B_UAV_02_CAS_F", 10000, "vehicle"], // Bomber UAVs are a lot harder to use, hence why they are cheaper than ATGMs
	["K40 Ababil-3 ATGM UAV (CSAT)", "O_UAV_02_F", 20000, "vehicle"],
	["K40 Ababil-3 Bomber UAV (CSAT)", "O_UAV_02_CAS_F", 10000, "vehicle"],
	["K40 Ababil-3 ATGM UAV (AAF)", "I_UAV_02_F", 20000, "vehicle"],
	["K40 Ababil-3 Bomber UAV (AAF)", "I_UAV_02_CAS_F", 10000, "vehicle"],
	["AC-130U Spectre MOD ONLY", "USAF_AC130U", 250000, "vehicle"],
	["F16 Fighting Falcon Get the Mod already", "usaf_f16", 250000, "vehicle"],
	["FA-18 E Dedicated To Devil", "JS_JC_FA18E", 250000, "vehicle"],
	["FA-18 F MOD ONLY", "JS_JC_FA18F", 250000, "vehicle"],
	["F/A-18X Black-Wasp MOD ONLY", "js_s_fa18x", 250000, "vehicle"],
	["F-35 AA MOD ONLY", "CHO_F35B_AA", 250000, "vehicle"],
	["F-35 CAS MOD ONLY", "CHO_F35B_CAS", 250000, "vehicle"],
	["F-35 LGB MOD ONLY", "CHO_F35B_LGB", 250000, "vehicle"],
	["KC-135 Stratotanker MOD ONLY", "USAF_KC135", 150000, "vehicle"],
	["CV-67 Osprey MOD ONLY", "USAF_CV22", 75000, "vehicle"],
	["Global Hawk", "usaf_rq4a", 15000, "vehicle"],
	["MQ9 Reaper", "usaf_mq9", 35000, "vehicle"],
	["B1 Bomber MOD ONLY", "usaf_b1b", 150000, "vehicle"],
	["B-2 Spirit Nukes x16", "usaf_b2", 25250000, "vehicle"]
];

boatsArray = compileFinal str
[
	["Rescue Boat", "C_Rubberboat", 500, "boat"],
	["Rescue Boat (NATO)", "B_Lifeboat", 500, "boat"],
	["Rescue Boat (CSAT)", "O_Lifeboat", 500, "boat"],
	["Assault Boat (NATO)", "B_Boat_Transport_01_F", 600, "boat"],
	["Assault Boat (CSAT)", "O_Boat_Transport_01_F", 600, "boat"],
	["Assault Boat (AAF)", "I_Boat_Transport_01_F", 600, "boat"],
	["Assault Boat (FIA)", "B_G_Boat_Transport_01_F", 600, "boat"],
	["Motorboat", "C_Boat_Civil_01_F", 1000, "boat"],
	["Speedboat HMG (CSAT)", "O_Boat_Armed_01_hmg_F", 4000, "boat"],
	["Speedboat Minigun (NATO)", "B_Boat_Armed_01_minigun_F", 4000, "boat"],
	["Speedboat Minigun (AAF)", "I_Boat_Armed_01_minigun_F", 4000, "boat"],
	["SDV Submarine (NATO)", "B_SDV_01_F", 1000, "submarine"],
	["SDV Submarine (CSAT)", "O_SDV_01_F", 1000, "submarine"],
	["SDV Submarine (AAF)", "I_SDV_01_F", 1000, "submarine"],
	//["LCS 2 USS Independence", "mnk_LCS", 550000, "boat"],
	["FSF SeaFighter", "gntfsf", 450000, "boat"],
	["MK.10 Landing Craft", "burnes_mk10_1", 35000, "boat"]
	//["USS Iowa", "uss_iowa_battleship", 1500000, "boat"]
];

allVehStoreVehicles = compileFinal str (call landArray + call armoredArray + call tanksArray + call helicoptersArray + call planesArray + call boatsArray);

uavArray = compileFinal str
[
	"UAV_02_base_F",
	"UGV_01_base_F"
];

noColorVehicles = compileFinal str
[
	// Deprecated
];

rgbOnlyVehicles = compileFinal str
[
	// Deprecated
];

_color = "#(rgb,1,1,1)color";
_texDir = "client\images\vehicleTextures\";
_kartDir = "\A3\soft_f_kart\Kart_01\Data\";
_mh9Dir = "\A3\air_f\Heli_Light_01\Data\";
_mohawkDir = "\A3\air_f_beta\Heli_Transport_02\Data\";
_taruDir = "\A3\air_f_heli\Heli_Transport_04\Data\";

colorsArray = compileFinal str
[
	[ // Main colors
		"All",
		[
			["Black", _color + "(0.01,0.01,0.01,1)"], // #(argb,8,8,3)color(0.1,0.1,0.1,0.1)
			["Grey", _color + "(0.15,0.151,0.152,1)"], // #(argb,8,8,3)color(0.5,0.51,0.512,0.3)
			["White", _color + "(0.75,0.75,0.75,1)"], // #(argb,8,8,3)color(1,1,1,0.5)
			["Dark Blue", _color + "(0,0.05,0.15,1)"], // #(argb,8,8,3)color(0,0.3,0.6,0.05)
			["Blue", _color + "(0,0.03,0.5,1)"], // #(argb,8,8,3)color(0,0.2,1,0.75)
			["Teal", _color + "(0,0.3,0.3,1)"], // #(argb,8,8,3)color(0,1,1,0.15)
			["Green", _color + "(0,0.5,0,1)"], // #(argb,8,8,3)color(0,1,0,0.15)
			["Yellow", _color + "(0.5,0.4,0,1)"], // #(argb,8,8,3)color(1,0.8,0,0.4)
			["Orange", _color + "(0.4,0.09,0,1)"], // #(argb,8,8,3)color(1,0.5,0,0.4)
			["Red", _color + "(0.45,0.005,0,1)"], // #(argb,8,8,3)color(1,0.1,0,0.3)
			["Pink", _color + "(0.5,0.03,0.3,1)"], // #(argb,8,8,3)color(1,0.06,0.6,0.5)
			["Purple", _color + "(0.1,0,0.3,1)"], // #(argb,8,8,3)color(0.8,0,1,0.1)
			["NATO Tan", _texDir + "nato.paa"], // #(argb,8,8,3)color(0.584,0.565,0.515,0.3)
			["CSAT Brown", _texDir + "csat.paa"], // #(argb,8,8,3)color(0.624,0.512,0.368,0.3)
			["AAF Green", _texDir + "aaf.paa"], // #(argb,8,8,3)color(0.546,0.59,0.363,0.2)
			["Trippy", _texDir + "rainbow.paa"],
			["Carbon", _texDir + "carbon.paa"],
			["Rusty", _texDir + "rusty.paa"],
			["Denim", _texDir + "denim.paa"],
			["Psych", _texDir + "psych.paa"],
			["Leopard", _texDir + "leopard.paa"],
			["'Murica", _texDir + "murica.paa"],
			["Confederate", _texDir + "confederate.paa"],
			["Union Jack", _texDir + "unionjack.paa"]
		]
	],
	[ // Kart colors
		"Kart_01_Base_F",
		[
			["Black (Kart)", [[0, _kartDir + "kart_01_base_black_co.paa"]]],
			["White (Kart)", [[0, _kartDir + "kart_01_base_white_co.paa"]]],
			["Blue (Kart)", [[0, _kartDir + "kart_01_base_blue_co.paa"]]],
			["Green (Kart)", [[0, _kartDir + "kart_01_base_green_co.paa"]]],
			["Yellow (Kart)", [[0, _kartDir + "kart_01_base_yellow_co.paa"]]],
			["Orange (Kart)", [[0, _kartDir + "kart_01_base_orange_co.paa"]]],
			["Red (Kart)", [[0, _kartDir + "kart_01_base_red_co.paa"]]]
		]
	],
	[ // MH-9 colors
		"Heli_Light_01_base_F",
		[
			["AAF Camo (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_indp_co.paa"]]],
			["Blue 'n White (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_blue_co.paa"]]],
			["Blueline (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_blueline_co.paa"]]],
			["Cream Gravy (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_co.paa"]]],
			["Digital (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_digital_co.paa"]]],
			["Elliptical (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_elliptical_co.paa"]]],
			["Furious (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_furious_co.paa"]]],
			["Graywatcher (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_graywatcher_co.paa"]]],
			["ION (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_ion_co.paa"]]],
			["Jeans (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_jeans_co.paa"]]],
			["Light (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_light_co.paa"]]],
			["Shadow (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_shadow_co.paa"]]],
			["Sheriff (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_sheriff_co.paa"]]],
			["Speedy (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_speedy_co.paa"]]],
			["Sunset (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_sunset_co.paa"]]],
			["Vrana (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_vrana_co.paa"]]],
			["Wasp (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_wasp_co.paa"]]],
			["Wave (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_wave_co.paa"]]]
		]
	],
	[ // Mohawk colors
		"Heli_Transport_02_base_F",
		[
			["Dahoman (Mohawk)", [
				[0, _mohawkDir + "Skins\heli_transport_02_1_dahoman_co.paa"],
				[1, _mohawkDir + "Skins\heli_transport_02_2_dahoman_co.paa"],
				[2, _mohawkDir + "Skins\heli_transport_02_3_dahoman_co.paa"]
			]],
			["ION (Mohawk)", [
				[0, _mohawkDir + "Skins\heli_transport_02_1_ion_co.paa"],
				[1, _mohawkDir + "Skins\heli_transport_02_2_ion_co.paa"],
				[2, _mohawkDir + "Skins\heli_transport_02_3_ion_co.paa"]
			]]
		]
	],
	[ // Taru base colors
		"Heli_Transport_04_base_F",
		[
			["Black (Taru)", [
				[0, _taruDir + "heli_transport_04_base_01_black_co.paa"],
				[1, _taruDir + "heli_transport_04_base_02_black_co.paa"],
				[2, _taruDir + "heli_transport_04_pod_ext01_black_co.paa"],
				[3, _taruDir + "heli_transport_04_pod_ext02_black_co.paa"]
			]]
		]
	],
	[ // Taru bench colors
		"O_Heli_Transport_04_bench_F",
		[
			["Black (Taru)", [[2, _taruDir + "heli_transport_04_bench_black_co.paa"]]]
		]
	],
	[ // Taru fuel colors
		"O_Heli_Transport_04_fuel_F",
		[
			["Black (Taru)", [[2, _taruDir + "heli_transport_04_fuel_black_co.paa"]]]
		]
	]
];

//General Store Item List
//Display Name, Class Name, Description, Picture, Buy Price, Sell Price.
// ["Medical Kit", "medkits", localize "STR_WL_ShopDescriptions_MedKit", "client\icons\medkit.paa", 400, 200],  // not needed since there are First Ait Kits
customPlayerItems = compileFinal str
[
	["Water Bottle", "water", localize "STR_WL_ShopDescriptions_Water", "client\icons\waterbottle.paa", 30, 15],
	["Canned Food", "cannedfood", localize "STR_WL_ShopDescriptions_CanFood", "client\icons\cannedfood.paa", 30, 15],

	["LSD", "lsd", localize "STR_WL_ShopDescriptions_LSD", "client\icons\lsd.paa", 12500, 6250],
	["Marijuana", "marijuana", localize "STR_WL_ShopDescriptions_Marijuana", "client\icons\marijuana.paa", 10000, 5000],
	["Cocaine", "cocaine", localize "STR_WL_ShopDescriptions_Cocaine", "client\icons\cocaine.paa", 14000, 7000],
	["Heroin", "heroin", localize "STR_WL_ShopDescriptions_Heroin", "client\icons\heroin.paa", 15000, 7500],

	["Vehicle Pinlock", "pinlock", localize "STR_WL_ShopDescriptions_Pinlock", "client\icons\keypad.paa", 1000, 500],
	["Repair Kit", "repairkit", localize "STR_WL_ShopDescriptions_RepairKit", "client\icons\briefcase.paa", 750, 375],
	["Jerry Can (Full)", "jerrycanfull", localize "STR_WL_ShopDescriptions_fuelFull", "client\icons\jerrycan.paa", 150, 75],
	["Jerry Can (Empty)", "jerrycanempty", localize "STR_WL_ShopDescriptions_fuelEmpty", "client\icons\jerrycan.paa", 50, 25],
	["Syphon Hose", "syphonhose", localize "STR_WL_ShopDescriptions_SyphonHose", "client\icons\syphonhose.paa", 200, 100],
	["Spawn Beacon", "spawnbeacon", localize "STR_WL_ShopDescriptions_spawnBeacon", "client\icons\spawnbeacon.paa", 5000, 2500]
	//["Camo Net", "camonet", localize "STR_WL_ShopDescriptions_Camo", "client\icons\camonet.paa", 200, 100],
];

call compile preprocessFileLineNumbers "mapConfig\storeOwners.sqf";

storeConfigDone = compileFinal "true";
