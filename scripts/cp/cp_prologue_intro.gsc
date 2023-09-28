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
	load::function_73adcefc();
	battlechatter::function_d9f49fba(0);
	level.var_2fd26037 = util::function_740f8516("hendricks");
	level thread function_13d078e2();
	level thread scene::init("cin_pro_01_02_airtraffic_1st_hack");
	load::function_c32ba481();
	level util::clientNotify("sndOnOverride");
	level thread util::do_chyron_text("CP_MI_ETH_PROLOGUE_INTRO_LINE_1_FULL", "CP_MI_ETH_PROLOGUE_INTRO_LINE_1_SHORT", "CP_MI_ETH_PROLOGUE_INTRO_LINE_2_FULL", "CP_MI_ETH_PROLOGUE_INTRO_LINE_2_SHORT", "CP_MI_ETH_PROLOGUE_INTRO_LINE_3_FULL", "CP_MI_ETH_PROLOGUE_INTRO_LINE_3_SHORT", "CP_MI_ETH_PROLOGUE_INTRO_LINE_4_FULL", "CP_MI_ETH_PROLOGUE_INTRO_LINE_4_SHORT", "CP_MI_ETH_PROLOGUE_INTRO_LINE_5_FULL", "CP_MI_ETH_PROLOGUE_INTRO_LINE_5_SHORT");
	LUI::prime_movie("cp_prologue_env_controltower");
	exploder::exploder("fx_exploder_high_res_fire");
	level namespace_2cb3876f::function_6a5f89cb("skipto_nrc_knocking");
	wait(5);
	level.var_2fd26037 thread dialog::say("hend_the_nrc_are_gonna_be_0");
	wait(1.5);
	level clientfield::set("sndIGCsnapshot", 2);
	level thread namespace_21b2c1f2::play_intro_igc();
	if(isdefined(level.BZM_PROLOGUEDialogue1Callback))
	{
		level thread [[level.BZM_PROLOGUEDialogue1Callback]]();
	}
	function_acdfe1fe("cp_prologue_env_controltower");
	util::delay(6.5, undefined, &exploder::stop_exploder, "fx_exploder_high_res_fire");
	level thread scene::Play("cin_pro_01_02_airtraffic_1st_hack_ai");
	level scene::Play("cin_pro_01_02_airtraffic_1st_hack");
	function_4a0fb95e("cp_prologue_env_controltower");
	function_acdfe1fe("cp_prologue_env_post_crash", 1);
	level clientfield::set("sndIGCsnapshot", 0);
	level thread namespace_2cb3876f::function_2a0bc326(level.var_2fd26037.origin, 1.4, 2, 5000, 12, "damage_heavy", "default");
	PlayFXOnCamera(level._effect["prologue_transition_debris"], (0, 0, 0), (1, 0, 0), (0, 0, 1));
	level thread scene::Play("cin_pro_01_02_airtraffic_1st_hack_aftermath_ai");
	level scene::Play("cin_pro_01_02_airtraffic_1st_hack_aftermath");
	skipto::function_be8adfb8("skipto_air_traffic_controller");
	level clientfield::set("gameplay_started", 1);
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
	level scene::init("p7_fxanim_cp_prologue_control_tower_plane_hit_bundle");
	level waittill("hash_9ba3dcb6");
	exploder::exploder("fx_exploder_disable_fx_start");
	level scene::Play("p7_fxanim_cp_prologue_control_tower_plane_hit_bundle");
	level scene::Play("p7_fxanim_cp_prologue_control_tower_plane_fall_bundle");
}

