#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_eth_prologue;
#using scripts\cp\cp_mi_eth_prologue_accolades;
#using scripts\cp\cp_mi_eth_prologue_fx;
#using scripts\cp\cp_mi_eth_prologue_sound;
#using scripts\cp\cp_prologue_enter_base;
#using scripts\cp\cp_prologue_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_93c87ad0;

/*
	Name: function_dc04ece5
	Namespace: namespace_93c87ad0
	Checksum: 0x35FF4420
	Offset: 0x718
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_dc04ece5()
{
	function_71745144();
	function_d27bfdb0();
}

/*
	Name: function_71745144
	Namespace: namespace_93c87ad0
	Checksum: 0x99EC1590
	Offset: 0x748
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_71745144()
{
}

/*
	Name: function_d27bfdb0
	Namespace: namespace_93c87ad0
	Checksum: 0x32A87D8F
	Offset: 0x758
	Size: 0x3C3
	Parameters: 0
	Flags: None
*/
function function_d27bfdb0()
{
	namespace_d7916d65::function_73adcefc();
	namespace_76d95162::function_d9f49fba(0);
	level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
	level thread function_13d078e2();
	level thread namespace_cc27597::function_c35e6aab("cin_pro_01_02_airtraffic_1st_hack");
	namespace_d7916d65::function_c32ba481();
	level namespace_82b91a51::function_ef3f75eb("sndOnOverride");
	level thread namespace_82b91a51::function_46d3a558("CP_MI_ETH_PROLOGUE_INTRO_LINE_1_FULL", "CP_MI_ETH_PROLOGUE_INTRO_LINE_1_SHORT", "CP_MI_ETH_PROLOGUE_INTRO_LINE_2_FULL", "CP_MI_ETH_PROLOGUE_INTRO_LINE_2_SHORT", "CP_MI_ETH_PROLOGUE_INTRO_LINE_3_FULL", "CP_MI_ETH_PROLOGUE_INTRO_LINE_3_SHORT", "CP_MI_ETH_PROLOGUE_INTRO_LINE_4_FULL", "CP_MI_ETH_PROLOGUE_INTRO_LINE_4_SHORT", "CP_MI_ETH_PROLOGUE_INTRO_LINE_5_FULL", "CP_MI_ETH_PROLOGUE_INTRO_LINE_5_SHORT");
	namespace_ce7c3ed5::function_2222cd4f("cp_prologue_env_controltower");
	namespace_80983c42::function_80983c42("fx_exploder_high_res_fire");
	level namespace_2cb3876f::function_6a5f89cb("skipto_nrc_knocking");
	wait(5);
	level.var_2fd26037 thread namespace_71b8dba1::function_81141386("hend_the_nrc_are_gonna_be_0");
	wait(1.5);
	level namespace_71e9cb84::function_74d6b22f("sndIGCsnapshot", 2);
	level thread namespace_21b2c1f2::function_5712e4e2();
	if(isdefined(level.var_b16d5c40))
	{
		level thread [[level.var_b16d5c40]]();
	}
	function_acdfe1fe("cp_prologue_env_controltower");
	namespace_82b91a51::function_67520c6a(6.5, undefined, &namespace_80983c42::function_67e7a937, "fx_exploder_high_res_fire");
	level thread namespace_cc27597::function_43718187("cin_pro_01_02_airtraffic_1st_hack_ai");
	level namespace_cc27597::function_43718187("cin_pro_01_02_airtraffic_1st_hack");
	function_4a0fb95e("cp_prologue_env_controltower");
	function_acdfe1fe("cp_prologue_env_post_crash", 1);
	level namespace_71e9cb84::function_74d6b22f("sndIGCsnapshot", 0);
	level thread namespace_2cb3876f::function_2a0bc326(level.var_2fd26037.var_722885f3, 1.4, 2, 5000, 12, "damage_heavy", "default");
	function_2e9c26ef(level.var_c1aa5253["prologue_transition_debris"], (0, 0, 0), (1, 0, 0), (0, 0, 1));
	level thread namespace_cc27597::function_43718187("cin_pro_01_02_airtraffic_1st_hack_aftermath_ai");
	level namespace_cc27597::function_43718187("cin_pro_01_02_airtraffic_1st_hack_aftermath");
	namespace_1d795d47::function_be8adfb8("skipto_air_traffic_controller");
	level namespace_71e9cb84::function_74d6b22f("gameplay_started", 1);
}

/*
	Name: function_13d078e2
	Namespace: namespace_93c87ad0
	Checksum: 0xAFAA763E
	Offset: 0xB28
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_13d078e2()
{
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_prologue_control_tower_plane_hit_bundle");
	level waittill("hash_9ba3dcb6");
	namespace_80983c42::function_80983c42("fx_exploder_disable_fx_start");
	level namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_control_tower_plane_hit_bundle");
	level namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_control_tower_plane_fall_bundle");
}

