#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_eth_prologue;
#using scripts\cp\cp_mi_eth_prologue_accolades;
#using scripts\cp\cp_mi_eth_prologue_fx;
#using scripts\cp\cp_mi_eth_prologue_sound;
#using scripts\cp\cp_prologue_apc;
#using scripts\cp\cp_prologue_cyber_soldiers;
#using scripts\cp\cp_prologue_hangars;
#using scripts\cp\cp_prologue_util;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\doors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_ab720c84;

/*
	Name: function_7af85b91
	Namespace: namespace_ab720c84
	Checksum: 0x2E6DB1B7
	Offset: 0x2260
	Size: 0xE3
	Parameters: 1
	Flags: None
*/
function function_7af85b91(var_b04bc952)
{
	function_8176e458();
	namespace_2f06d687::function_2b37a3c9("fuel_tunnel_ai", "script_noteworthy", &namespace_2cb3876f::function_35be2939, "fuel_tunnel_alerted", 1024);
	if(!isdefined(level.var_2fd26037))
	{
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		namespace_4dc8633b::function_bff1a867("skipto_hostage_1_hendricks");
		namespace_1d795d47::function_3096a6fd(var_b04bc952);
	}
	level.var_2fd26037.var_255b9315 = 1;
	level thread function_dbff3ab4();
}

/*
	Name: function_8176e458
	Namespace: namespace_ab720c84
	Checksum: 0xA59F99FE
	Offset: 0x2350
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_8176e458()
{
	level thread namespace_cc27597::function_c35e6aab("cin_pro_06_01_hostage_vign_rollgrenade");
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_prologue_underground_truck_explode_bundle");
}

/*
	Name: function_dbff3ab4
	Namespace: namespace_ab720c84
	Checksum: 0x69E2F064
	Offset: 0x23A0
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_dbff3ab4()
{
	level thread namespace_2cb3876f::function_950d1c3b(1);
	level thread function_ca7de8e8();
	namespace_d0ef8521::function_74d6b22f("cp_level_prologue_free_the_minister");
	namespace_76d95162::function_d9f49fba(1);
	namespace_2cb3876f::function_47a62798(1);
	level.var_2fd26037 thread function_672c874();
	namespace_4dbf3ae3::function_1ab5ebec("hendricks_rollgrenade");
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &function_df74ca81);
	level.var_2fd26037 waittill("hash_ff2562ea");
	level thread function_88ddc4d5();
	level namespace_ad23e503::function_74d6b22f("fuel_tunnel_alerted");
	level thread function_5d78fd66();
	level thread function_f41e9505();
	level thread namespace_2cb3876f::function_8f7b1e06("t_fuel_tunnel_ai_fallback_controller", "info_fuel_tunnel_fallback_begin", "info_fuel_tunnel_fallback_end");
	level waittill("hash_5d08c61e");
	namespace_1d795d47::function_be8adfb8("skipto_hostage_1");
}

/*
	Name: function_5d78fd66
	Namespace: namespace_ab720c84
	Checksum: 0xDD03FE32
	Offset: 0x2550
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_5d78fd66()
{
	wait(1.5);
	level thread namespace_2cb3876f::function_a7eac508("sp_fuel_tunnel_explosion_runners", undefined, 1024, undefined);
}

/*
	Name: function_ca7de8e8
	Namespace: namespace_ab720c84
	Checksum: 0x77D354A1
	Offset: 0x2590
	Size: 0x3A3
	Parameters: 0
	Flags: None
*/
function function_ca7de8e8()
{
	var_24bbf032 = function_b8494651("axis");
	foreach(var_2eecd77a in var_24bbf032)
	{
		var_2eecd77a function_dc8c8404();
	}
	level thread function_b7afdf3a();
	level thread function_e14a508d();
	namespace_d5067552::function_bae40a28("sm_fuel_tunnel");
	namespace_2f06d687::function_22356ba7("sp_fuel_depot_staging");
	level thread function_c1e0b282();
	level thread function_ee3c7f46();
	level thread function_d9bab593("t_fuel_tunnel_left_door", "fueltunnel_spawnclosetdoor_2", "sp_fuel_tunnel_left_door", "info_fuel_tunnel_left_door", "info_fuel_tunnel_fallback_end", 0);
	level thread function_d9bab593("t_fuel_tunnel_right_door", "fueltunnel_spawnclosetdoor_3", "sp_fuel_tunnel_right_door", "info_fuel_tunnel_right_door", "info_fuel_tunnel_fallback_end");
	level thread namespace_2cb3876f::function_8f7b1e06("t_fueling_bridge_attacker", "info_fueling_bridge_attacker", "info_grenade_truck_guys_fallback");
	level thread function_12ac9114();
	level.var_2fd26037 waittill("hash_ff2562ea");
	level thread namespace_2cb3876f::function_e0fb6da9("s_enemy_moveup_point_0", 100, 15, 1, 1, 6, "info_fuel_tunnel_fallback_end", "info_grenade_truck_guys_fallback");
	level thread namespace_2cb3876f::function_e0fb6da9("s_enemy_moveup_point_1", 100, 15, 1, 1, 6, "info_fuel_tunnel_fallback_end", "info_grenade_truck_guys_fallback");
	level thread namespace_2cb3876f::function_e0fb6da9("s_enemy_moveup_point_2", 100, 15, 1, 1, 6, "info_fuel_tunnel_fallback_end", "info_grenade_truck_guys_fallback");
	level thread namespace_2cb3876f::function_e0fb6da9("s_enemy_moveup_point_forklift", 180, 8, 1, 1, 8, "info_fuel_tunnel_fallback_end", "info_grenade_truck_guys_fallback");
	level thread namespace_2cb3876f::function_e0fb6da9("s_enemy_moveup_point_4", 100, 5, 1, 1, 2, "info_fuel_tunnel_fallback_end", "info_grenade_truck_guys_fallback");
	level thread namespace_2cb3876f::function_e0fb6da9("s_enemy_moveup_point_5", 100, 5, 1, 1, 2, "info_fuel_tunnel_fallback_end", "info_grenade_truck_guys_fallback");
	level thread function_50d18609();
}

/*
	Name: function_b7afdf3a
	Namespace: namespace_ab720c84
	Checksum: 0x7666D252
	Offset: 0x2940
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_b7afdf3a()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_fueling_tunnel_alert_enemy");
	level namespace_ad23e503::function_74d6b22f("fuel_tunnel_alerted");
}

/*
	Name: function_e14a508d
	Namespace: namespace_ab720c84
	Checksum: 0xF63C9D09
	Offset: 0x2988
	Size: 0xB9
	Parameters: 0
	Flags: None
*/
function function_e14a508d()
{
	var_c77d2837 = function_99201f25("sp_fueling_stairwell_intro_guys", "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_c77d2837.size; var_c957f6b6++)
	{
		var_4c9c8550 = var_c77d2837[var_c957f6b6] namespace_2f06d687::function_9b7fda5e();
		var_4c9c8550.var_44a68a57 = &function_e93a75b6;
		var_4c9c8550.var_7dfaf62 = 32;
	}
	level notify("hash_db677f8c");
}

/*
	Name: function_e93a75b6
	Namespace: namespace_ab720c84
	Checksum: 0xC6C793A0
	Offset: 0x2A50
	Size: 0xA5
	Parameters: 13
	Flags: None
*/
function function_e93a75b6(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_ad8afadc, var_ae725cb8, var_f105c26b)
{
	if(isdefined(var_3a212fd7) && !function_65f192a6(var_3a212fd7))
	{
		var_f9a179ed = self.var_3a90f16b + 1;
	}
	return var_f9a179ed;
}

/*
	Name: function_88ddc4d5
	Namespace: namespace_ab720c84
	Checksum: 0xFEF665F4
	Offset: 0x2B00
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_88ddc4d5()
{
	level namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_prologue_underground_truck_explode_bundle", &function_70b550de);
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_underground_truck_explode_bundle");
	level namespace_71e9cb84::function_74d6b22f("fuel_depot_truck_explosion", 1);
	var_4d2c50ee = function_6ada35ba("orig_fuel_tunnel_explosion", "targetname");
	level.var_2fd26037 function_eac31668(var_4d2c50ee.var_722885f3, 300, 2001, 2000, undefined, "MOD_EXPLOSIVE");
}

/*
	Name: function_70b550de
	Namespace: namespace_ab720c84
	Checksum: 0x5246F697
	Offset: 0x2BF8
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_70b550de(var_c77d2837)
{
	var_c77d2837["underground_truck_explode"] waittill("hash_5ec0d21e");
	var_c77d2837["underground_truck_explode"] function_e48f905e("veh_t7_civ_truck_med_cargo_egypt_dead");
	var_f33f812b = function_6ada35ba("fuel_truck_faxnim_clip", "targetname");
	var_f33f812b function_4083a98e();
}

/*
	Name: function_f41e9505
	Namespace: namespace_ab720c84
	Checksum: 0x56FC34CE
	Offset: 0x2C90
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_f41e9505()
{
	wait(0.5);
	level thread namespace_2cb3876f::function_8f7b1e06(undefined, "info_grenade_truck_guys", "info_grenade_truck_guys_fallback");
}

/*
	Name: function_ee3c7f46
	Namespace: namespace_ab720c84
	Checksum: 0x480C41F4
	Offset: 0x2CD0
	Size: 0x213
	Parameters: 0
	Flags: None
*/
function function_ee3c7f46()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_spawn_machine_gunner");
	var_9bc6eb0e = function_6ada35ba("fueltunnel_spawnclosetdoor_1", "targetname");
	var_9bc6eb0e function_c0b6566f(var_9bc6eb0e.var_6ab6f4fd + VectorScale((0, -1, 0), 150), 0.5);
	var_9bc6eb0e function_921a1574("evt_spawner_door_open");
	var_8e7793a5 = function_6ada35ba("info_fuel_tunnel_fallback_end", "targetname");
	var_e3b635fb = function_99201f25("sp_fuel_tunnel_upper_door", "targetname");
	var_5ddef2e5 = function_3f10449f();
	if(var_5ddef2e5.size == 1)
	{
		var_12649730 = 1;
	}
	else if(var_5ddef2e5.size == 2)
	{
		var_12649730 = 2;
	}
	else
	{
		var_12649730 = 5;
	}
	if(var_12649730 > var_e3b635fb.size)
	{
		var_12649730 = var_e3b635fb.size;
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < var_12649730; var_c957f6b6++)
	{
		var_4c9c8550 = var_e3b635fb[var_c957f6b6] namespace_2f06d687::function_9b7fda5e();
		var_4c9c8550 thread namespace_2cb3876f::function_8e9f617f(1024, undefined);
		wait(0.5);
	}
	level thread function_3964d78d();
}

/*
	Name: function_3964d78d
	Namespace: namespace_ab720c84
	Checksum: 0xF1761E99
	Offset: 0x2EF0
	Size: 0x2AB
	Parameters: 0
	Flags: None
*/
function function_3964d78d()
{
	var_67825717 = function_6ada35ba("info_final_tunnel_attackers", "targetname");
	var_fdced91a = 0;
	while(!var_fdced91a)
	{
		if(level.var_2fd26037 function_32fa5072(var_67825717))
		{
			var_fdced91a = 1;
		}
		var_5ddef2e5 = function_3f10449f();
		for(var_c957f6b6 = 0; var_c957f6b6 < var_5ddef2e5.size; var_c957f6b6++)
		{
			if(var_5ddef2e5[var_c957f6b6] function_32fa5072(var_67825717))
			{
				var_fdced91a = 1;
			}
		}
		wait(0.05);
	}
	var_fe3db664 = function_99201f25("sp_fuel_tunnel_stairs_attackers", "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_fe3db664.size; var_c957f6b6++)
	{
		var_4c9c8550 = var_fe3db664[var_c957f6b6] namespace_2f06d687::function_9b7fda5e();
		var_c6342f3d = function_b4cb3503(var_4c9c8550.var_b07228b6, "targetname");
		var_4c9c8550.var_7dfaf62 = 140;
		var_4c9c8550 function_169cc712(var_c6342f3d.var_722885f3);
	}
	while(1)
	{
		var_f04bd8f5 = namespace_2cb3876f::function_609c412a("info_fuel_tunnel_upper_door", 1);
		if(!var_f04bd8f5)
		{
			break;
		}
		wait(0.05);
	}
	var_9bc6eb0e = function_6ada35ba("fueltunnel_spawnclosetdoor_1", "targetname");
	var_9bc6eb0e function_c0b6566f(var_9bc6eb0e.var_6ab6f4fd - VectorScale((0, -1, 0), 150), 0.5);
	var_9bc6eb0e function_921a1574("evt_spawner_door_close");
}

/*
	Name: function_672c874
	Namespace: namespace_ab720c84
	Checksum: 0x2B96221
	Offset: 0x31A8
	Size: 0x40B
	Parameters: 0
	Flags: None
*/
function function_672c874()
{
	self function_8b6e6abe();
	level namespace_ad23e503::function_1ab5ebec("start_grenade_roll");
	level thread namespace_cc27597::function_43718187("cin_pro_06_01_hostage_vign_rollgrenade", level.var_2fd26037);
	level namespace_82b91a51::function_67520c6a(0.5, undefined, &namespace_4dbf3ae3::function_42e87952, "t_script_color_allies_r510");
	level.var_2fd26037 waittill("hash_ff2562ea");
	level thread namespace_2cb3876f::function_2a0bc326(level.var_2fd26037.var_722885f3, 0.65, 1.2, 800, 4);
	level.var_2fd26037 namespace_d84e54db::function_7bf590dd(0);
	level.var_2fd26037 namespace_d84e54db::function_c9e45d52(0);
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
	var_ebe66fdc = namespace_14b42b8a::function_7922262b("s_truck_explosion_origin", "targetname");
	function_534b3cba(var_ebe66fdc.var_722885f3, 255, 254, 0.3, 25, 400);
	wait(0.1);
	var_ff31c6f9 = function_99201f25("truck_red_barrel", "script_noteworthy");
	foreach(var_fd7c985 in var_ff31c6f9)
	{
		if(isdefined(var_fd7c985) && var_fd7c985.var_170527fb == "destructible")
		{
			var_fd7c985 function_c3945cd5(5000, var_fd7c985.var_722885f3, level.var_2fd26037);
		}
	}
	wait(0.3);
	var_7bb33476 = function_b4cb3503("nd_grenade_throw", "targetname");
	function_d224409e(var_7bb33476, 0);
	namespace_4dbf3ae3::function_42e87952("t_script_color_allies_r520");
	namespace_2cb3876f::function_d1f1caad("t_script_color_allies_r530");
	namespace_2cb3876f::function_d1f1caad("t_script_color_allies_r540");
	namespace_cc27597::function_43718187("cin_pro_06_01_hostage_vign_jumpdown");
	self namespace_6f7b2095::function_bae40a28();
	self function_169cc712(self.var_722885f3);
	wait(1);
	namespace_4dbf3ae3::function_42e87952("t_script_color_allies_r550");
	wait(1);
	self waittill("hash_41d1aaf0");
	self.var_7dfaf62 = 256;
	namespace_2cb3876f::function_d1f1caad("t_script_color_allies_r560");
	function_7a05bbf();
	if(function_3f10449f().size == 1)
	{
		level notify("hash_bf9ccb51");
	}
	self thread function_5dc67e92();
}

/*
	Name: function_5dc67e92
	Namespace: namespace_ab720c84
	Checksum: 0x2B08FDA
	Offset: 0x35C0
	Size: 0x1E3
	Parameters: 0
	Flags: None
*/
function function_5dc67e92()
{
	self endon("hash_89827d0f");
	var_67825717 = function_6ada35ba("info_fuel_tunnel_fallback_end", "targetname");
	while(1)
	{
		var_e3b635fb = namespace_2cb3876f::function_68b8f4af(var_67825717);
		if(var_e3b635fb.size <= 3)
		{
			namespace_84970cc4::function_966ecb29(var_e3b635fb, &namespace_d84e54db::function_8c969347, function_dc99997a(6, 8));
		}
		if(var_e3b635fb.size <= 1)
		{
			break;
		}
		wait(0.05);
	}
	var_f92a03e7 = function_6ada35ba("t_script_color_allies_r580", "targetname");
	if(isdefined(var_f92a03e7))
	{
		var_f92a03e7 function_dc8c8404();
	}
	self thread function_386e6074();
	function_1ddfda41();
	var_22752fde = function_b4cb3503("nd_fueling_tunnel_exit", "targetname");
	self function_169cc712(var_22752fde.var_722885f3);
	self.var_7dfaf62 = 64;
	self namespace_82b91a51::function_c9aa1ff("goal", 15);
	self notify("hash_8882daa6");
	self thread function_c9d7d48a();
}

/*
	Name: function_386e6074
	Namespace: namespace_ab720c84
	Checksum: 0x142C6A1C
	Offset: 0x37B0
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_386e6074()
{
	var_72634645 = function_a8fb77bd();
	var_72634645.var_722885f3 = (5742, -1122, -328);
	var_72634645.var_6ab6f4fd = VectorScale((0, 1, 0), 270);
	var_f3ec8a31 = function_9b7fda5e("trigger_box", (5728, -1308, -276), 0, 300, 300, 300);
	var_f3ec8a31 waittill("hash_4dbf3ae3");
	self namespace_6f7b2095::function_89827d0f(var_72634645, 350, 1, &function_bbaa282a);
}

/*
	Name: function_bbaa282a
	Namespace: namespace_ab720c84
	Checksum: 0xE7148E9B
	Offset: 0x3890
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_bbaa282a()
{
	wait(0.5);
	var_22752fde = function_b4cb3503("nd_fueling_tunnel_exit", "targetname");
	self function_169cc712(var_22752fde.var_722885f3);
	self.var_7dfaf62 = 64;
	self namespace_82b91a51::function_c9aa1ff("goal", 15);
	self thread function_c9d7d48a();
}

/*
	Name: function_7a05bbf
	Namespace: namespace_ab720c84
	Checksum: 0x55BEDAC1
	Offset: 0x3940
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_7a05bbf()
{
	while(1)
	{
		var_f92a03e7 = function_6ada35ba("t_script_color_allies_r570", "targetname");
		if(!isdefined(var_f92a03e7))
		{
			break;
		}
		var_f04bd8f5 = namespace_2cb3876f::function_609c412a("info_fuel_tunnel_fallback_end", 0);
		if(var_f04bd8f5 <= 3)
		{
			namespace_4dbf3ae3::function_42e87952("t_script_color_allies_r570");
			break;
		}
		wait(0.05);
	}
}

/*
	Name: function_1ddfda41
	Namespace: namespace_ab720c84
	Checksum: 0x9D3E02FE
	Offset: 0x39F0
	Size: 0x203
	Parameters: 0
	Flags: None
*/
function function_1ddfda41()
{
	var_67825717 = function_6ada35ba("info_fueling_tunnel_balcony", "targetname");
	var_9fc9c7b7 = namespace_2cb3876f::function_68b8f4af(var_67825717);
	for(var_c957f6b6 = 0; var_c957f6b6 < var_9fc9c7b7.size; var_c957f6b6++)
	{
		self function_b7cc66c6(var_9fc9c7b7[var_c957f6b6], 1);
		var_9fc9c7b7[var_c957f6b6].var_44a68a57 = &function_e93a75b6;
	}
	var_22752fde = function_b4cb3503("nd_fueling_tunnel_top_stairs", "targetname");
	self function_169cc712(var_22752fde.var_722885f3);
	self.var_7dfaf62 = 64;
	self waittill("hash_41d1aaf0");
	while(1)
	{
		var_9fc9c7b7 = namespace_2cb3876f::function_68b8f4af(var_67825717);
		if(var_9fc9c7b7.size == 0)
		{
			break;
		}
		wait(0.05);
	}
	for(var_1f6e1fda = function_b8494651("axis"); var_1f6e1fda.size > 0;  = function_b8494651("axis"))
	{
		var_1f6e1fda[0] namespace_d84e54db::function_8c969347();
		wait(function_72a94f05(0.6666666, 1.333333));
	}
}

/*
	Name: function_50d18609
	Namespace: namespace_ab720c84
	Checksum: 0x272BDFC6
	Offset: 0x3C00
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_50d18609()
{
	level waittill("hash_bf9ccb51");
	var_3af498bc = function_fe0cfd2e("nd_fueling_end", "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_3af498bc.size; var_c957f6b6++)
	{
		var_22752fde = var_3af498bc[var_c957f6b6];
		function_d224409e(var_22752fde, 0);
	}
	wait(2);
	namespace_2cb3876f::function_8f7b1e06(undefined, "info_fuel_tunnel_fallback_end", "info_fueling_flush_out_volume");
}

/*
	Name: function_8b6e6abe
	Namespace: namespace_ab720c84
	Checksum: 0x74021E69
	Offset: 0x3CD8
	Size: 0x223
	Parameters: 0
	Flags: None
*/
function function_8b6e6abe()
{
	level namespace_ad23e503::function_1ab5ebec("hendricks_exit_cam_room");
	wait(0.5);
	level thread function_1479714d();
	self namespace_d84e54db::function_ceb883cd("can_melee", 0);
	self namespace_6f7b2095::function_54bdb053();
	var_22752fde = function_b4cb3503("nd_hendricks_attack_fueling_start_guys", "targetname");
	self.var_5ed2f6d3 = 1;
	self.var_7dfaf62 = 32;
	self namespace_d84e54db::function_19e98020(var_22752fde);
	wait(1);
	var_9fc9c7b7 = namespace_2f06d687::function_289e6fd1("tunnel_1st_contact_guys");
	foreach(var_6050ab17 in var_9fc9c7b7)
	{
		if(isdefined(var_6050ab17) && function_5b49d38c(var_6050ab17))
		{
			self namespace_d84e54db::function_d104c596("shoot_until_target_dead", var_6050ab17);
		}
	}
	namespace_2f06d687::function_72214789("tunnel_1st_contact_guys");
	self.var_5ed2f6d3 = 0;
	self.var_7dfaf62 = 512;
	self namespace_d84e54db::function_ceb883cd("can_melee", 1);
	self namespace_6f7b2095::function_bae40a28();
}

/*
	Name: function_c9d7d48a
	Namespace: namespace_ab720c84
	Checksum: 0x870848CA
	Offset: 0x3F08
	Size: 0x263
	Parameters: 0
	Flags: None
*/
function function_c9d7d48a()
{
	var_67825717 = function_6ada35ba("info_fueling_tunnel_exit_area", "targetname");
	while(1)
	{
		var_e5315a4c = namespace_2cb3876f::function_fcb42941(var_67825717);
		if(var_e5315a4c > 0)
		{
			break;
		}
		wait(0.05);
	}
	level thread namespace_21b2c1f2::function_d4c52995();
	wait(0.15);
	level namespace_cc27597::function_8f9f34e0("cin_pro_06_02_hostage_vign_getminister_hendricks_airlock", &function_5729b9e7, "play");
	level namespace_cc27597::function_43718187("cin_pro_06_02_hostage_vign_getminister_hendricks_airlock");
	var_277f35c0 = function_b4cb3503("nd_hendricks_jail_setup", "targetname");
	level.var_2fd26037 function_169cc712(var_277f35c0, 1);
	wait(0.5);
	level notify("hash_5d08c61e");
	var_ebe66fdc = namespace_14b42b8a::function_7922262b("s_close_security_door", "targetname");
	while(1)
	{
		var_d230ad83 = function_bc7ce905(var_ebe66fdc.var_6ab6f4fd);
		var_a080d759 = function_f679a325(var_ebe66fdc.var_722885f3 - level.var_2fd26037.var_722885f3);
		var_c6c121c9 = function_5f9a4869(var_d230ad83, var_a080d759);
		if(var_c6c121c9 < 0)
		{
			break;
		}
		wait(0.1);
	}
	namespace_2cb3876f::function_9d611fab("s_close_security_door", undefined);
	level thread function_6ae70954(0);
}

/*
	Name: function_5729b9e7
	Namespace: namespace_ab720c84
	Checksum: 0x4F67794E
	Offset: 0x4178
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_5729b9e7(var_c77d2837)
{
	level waittill("hash_5729b9e7");
	level function_6ae70954(1);
}

/*
	Name: function_6ae70954
	Namespace: namespace_ab720c84
	Checksum: 0x7E6F6AA2
	Offset: 0x41B8
	Size: 0x213
	Parameters: 1
	Flags: None
*/
function function_6ae70954(var_7b386e04)
{
	namespace_80983c42::function_80983c42("fx_exploder_door_vacuum");
	var_bcc5e65a = function_6ada35ba("holdingcells_entrydoor_1", "targetname");
	var_96c36bf1 = function_6ada35ba("holdingcells_entrydoor_2", "targetname");
	if(var_7b386e04)
	{
		namespace_80983c42::function_80983c42("light_exploder_prison_door");
		var_bcc5e65a function_d7e3960e(64, 1, 0.1, 0.2);
		var_bcc5e65a function_921a1574("evt_fueldepot_door_open");
		wait(0.25);
		var_96c36bf1 function_d7e3960e(64, 1, 0.1, 0.2);
		var_96c36bf1 function_921a1574("evt_fueldepot_door_open");
	}
	else
	{
		namespace_80983c42::function_67e7a937("light_exploder_prison_door");
		var_96c36bf1 function_d7e3960e(-64, 1, 0.1, 0.2);
		var_96c36bf1 function_921a1574("evt_fueldepot_door_close");
		wait(0.25);
		var_bcc5e65a function_d7e3960e(-64, 1, 0.1, 0.2);
		var_bcc5e65a function_921a1574("evt_fueldepot_door_close");
	}
}

/*
	Name: function_df74ca81
	Namespace: namespace_ab720c84
	Checksum: 0x426FCB2E
	Offset: 0x43D8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_df74ca81()
{
	self endon("hash_128f8789");
	self waittill("hash_aa1618b0");
	level namespace_ad23e503::function_74d6b22f("fuel_tunnel_alerted");
}

/*
	Name: function_1479714d
	Namespace: namespace_ab720c84
	Checksum: 0xE9884A88
	Offset: 0x4420
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_1479714d()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_spawn_machine_gunner");
	wait(1);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_gunner_up_top_0");
	level waittill("hash_5d08c61e");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_cell_block_ahead_on_0");
}

/*
	Name: function_c1e0b282
	Namespace: namespace_ab720c84
	Checksum: 0x7072E264
	Offset: 0x44A0
	Size: 0x3F
	Parameters: 0
	Flags: None
*/
function function_c1e0b282()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_spawn_machine_gunner");
	var_cf0db380 = namespace_2f06d687::function_7387a40a("fuel_tunnel_mg_guy");
}

/*
	Name: function_d9bab593
	Namespace: namespace_ab720c84
	Checksum: 0xE59D1A0F
	Offset: 0x44E8
	Size: 0x283
	Parameters: 6
	Flags: None
*/
function function_d9bab593(var_db803bcf, var_9b54f311, var_a9ea049a, var_137809d6, var_343b0267, var_bfba634f)
{
	if(!isdefined(var_bfba634f))
	{
		var_bfba634f = 1;
	}
	var_f92a03e7 = function_6ada35ba(var_db803bcf, "targetname");
	var_f92a03e7 waittill("hash_4dbf3ae3");
	var_f2c7e89 = function_6ada35ba(var_9b54f311, "targetname");
	var_f2c7e89 function_c0b6566f(var_f2c7e89.var_6ab6f4fd + VectorScale((0, -1, 0), 110), 0.5);
	var_f2c7e89 function_921a1574("evt_spawner_door_open");
	var_ab891f49 = function_6ada35ba(var_343b0267, "targetname");
	var_e3b635fb = function_99201f25(var_a9ea049a, "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
	{
		var_4c9c8550 = var_e3b635fb[var_c957f6b6] namespace_2f06d687::function_9b7fda5e();
		var_4c9c8550 function_169cc712(var_ab891f49);
		wait(1.5);
	}
	if(!var_bfba634f)
	{
		return;
	}
	wait(1);
	while(1)
	{
		var_f04bd8f5 = namespace_2cb3876f::function_609c412a(var_137809d6, 1);
		if(!var_f04bd8f5)
		{
			break;
		}
		wait(0.05);
	}
	var_f2c7e89 function_c0b6566f(var_f2c7e89.var_6ab6f4fd + VectorScale((0, 1, 0), 110), 0.5);
	var_f2c7e89 function_921a1574("evt_spawner_door_close");
}

/*
	Name: function_12ac9114
	Namespace: namespace_ab720c84
	Checksum: 0xF943C0B0
	Offset: 0x4778
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_12ac9114()
{
	var_1e913765 = function_6ada35ba("sp_stair_runners", "targetname");
	var_67825717 = function_6ada35ba("info_fuel_tunnel_fallback_end", "targetname");
	level thread function_6ae70954(1);
	level namespace_ad23e503::function_1ab5ebec("fuel_tunnel_stair_runners_1");
	var_2eecd77a = var_1e913765 namespace_2f06d687::function_9b7fda5e();
	var_2eecd77a function_169cc712(var_67825717);
	wait(1.5);
	var_2eecd77a = var_1e913765 namespace_2f06d687::function_9b7fda5e();
	var_2eecd77a function_169cc712(var_67825717);
	level namespace_ad23e503::function_1ab5ebec("fuel_tunnel_stair_runners_2");
	var_2eecd77a = var_1e913765 namespace_2f06d687::function_9b7fda5e();
	var_2eecd77a function_169cc712(var_67825717);
	wait(3);
	level thread function_6ae70954(0);
}

#namespace namespace_19ee07c8;

/*
	Name: function_955cbf0d
	Namespace: namespace_19ee07c8
	Checksum: 0x7B6030AC
	Offset: 0x4918
	Size: 0x253
	Parameters: 1
	Flags: None
*/
function function_955cbf0d(var_b04bc952)
{
	function_8ee087ec();
	if(!isdefined(level.var_2fd26037))
	{
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		namespace_4dc8633b::function_bff1a867("skipto_prison_hendricks");
		namespace_1d795d47::function_3096a6fd(var_b04bc952);
	}
	if(!isdefined(level.var_4d5a4697))
	{
		level.var_4d5a4697 = namespace_82b91a51::function_740f8516("minister");
		level.var_4d5a4697.var_255b9315 = 1;
		level.var_4d5a4697.var_c584775c = 1;
		namespace_4dc8633b::function_211ff3c7("skipto_prison_minister");
		level.var_4d5a4697.var_7dfaf62 = 64;
	}
	if(!isdefined(level.var_9db406db))
	{
		level.var_9db406db = namespace_82b91a51::function_740f8516("khalil");
		level.var_9db406db.var_255b9315 = 1;
		level.var_9db406db.var_c584775c = 1;
		namespace_4dc8633b::function_c117302b("skipto_prison_khalil");
		level.var_9db406db.var_7dfaf62 = 64;
	}
	namespace_4dbf3ae3::function_42e87952("t_prison_respawns_disable", "targetname", undefined, 0);
	namespace_76d95162::function_d9f49fba(0);
	namespace_2cb3876f::function_47a62798(1);
	level.var_2fd26037.var_25bfbf8e = 0;
	level.var_2fd26037.var_255b9315 = 0;
	level namespace_ad23e503::function_c35e6aab("khalil_door_breached");
	level namespace_ad23e503::function_c35e6aab("player_interrogation_breach");
	level thread function_13bbee98();
}

/*
	Name: function_8ee087ec
	Namespace: namespace_19ee07c8
	Checksum: 0x99EC1590
	Offset: 0x4B78
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_8ee087ec()
{
}

/*
	Name: function_13bbee98
	Namespace: namespace_19ee07c8
	Checksum: 0x192956FF
	Offset: 0x4B88
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_13bbee98()
{
	level thread namespace_2cb3876f::function_950d1c3b(1);
	level thread function_b317c15f();
	level thread namespace_cc27597::function_c35e6aab("cin_pro_06_03_hostage_1st_khalil_intro_rescue");
	namespace_52f8de11::function_bfe70f02();
	level thread function_f50dec65();
	level thread function_771ca4c3();
	var_beb17601 = function_6ada35ba("collision_observation_door", "targetname");
	var_ddb80384 = function_6ada35ba("observation_door", "targetname");
	var_beb17601 function_37f7858a(var_ddb80384);
	level thread function_ef1899fb();
	level.var_2fd26037 thread function_299a41be();
	level thread function_15c51270();
	level thread function_37b5c7e0();
}

/*
	Name: function_f50dec65
	Namespace: namespace_19ee07c8
	Checksum: 0x570D7D2B
	Offset: 0x4D00
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_f50dec65()
{
	level thread namespace_82b91a51::function_d8eaed3d(3);
	level waittill("hash_516cb5e4");
	namespace_82b91a51::function_a0938376();
	level thread namespace_82b91a51::function_d8eaed3d(4);
	level waittill("hash_29445f62");
	namespace_82b91a51::function_a0938376();
}

/*
	Name: function_771ca4c3
	Namespace: namespace_19ee07c8
	Checksum: 0x9B10C9F8
	Offset: 0x4D80
	Size: 0x1EB
	Parameters: 0
	Flags: None
*/
function function_771ca4c3()
{
	namespace_d0ef8521::function_74d6b22f("cp_level_prologue_free_the_minister");
	namespace_dabbe128::function_de1a6d25(&namespace_61c634f2::function_c58a9e36);
	level namespace_ad23e503::function_1ab5ebec("player_entered_observation");
	namespace_d0ef8521::function_31cd1834("cp_level_prologue_goto_minister_door");
	level waittill("hash_a859aef4");
	namespace_d0ef8521::function_31cd1834("cp_level_prologue_free_the_minister");
	namespace_9f824288::function_5d2cdd99();
	level waittill("hash_ed07bf8c");
	namespace_4dbf3ae3::function_42e87952("t_prison_respawns_enable", "targetname", undefined, 0);
	var_bfa0f33f = namespace_14b42b8a::function_7922262b("s_objective_khalil_cell", "targetname");
	namespace_d0ef8521::function_74d6b22f("cp_level_prologue_goto_khalil_door", var_bfa0f33f);
	namespace_d0ef8521::function_74d6b22f("cp_level_prologue_free_khalil");
	level namespace_ad23e503::function_1ab5ebec("khalil_door_breached");
	namespace_d0ef8521::function_31cd1834("cp_level_prologue_goto_minister_door");
	namespace_d0ef8521::function_31cd1834("cp_level_prologue_free_khalil");
	namespace_dabbe128::function_fad550c4(&namespace_61c634f2::function_c58a9e36);
	namespace_d0ef8521::function_74d6b22f("cp_level_prologue_get_to_the_surface");
	level waittill("hash_f83eeed5");
	level thread namespace_d0ef8521::function_45d1556("post_prison_breadcrumb_start");
}

/*
	Name: function_299a41be
	Namespace: namespace_19ee07c8
	Checksum: 0x2D9D08B
	Offset: 0x4F78
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_299a41be()
{
	var_22752fde = function_b4cb3503("nd_hendricks_jail_setup", "targetname");
	self function_169cc712(var_22752fde, 1);
	self waittill("hash_41d1aaf0");
	level namespace_ad23e503::function_1ab5ebec("post_up_minister_breach");
	level thread function_a1ad4aa7();
	self function_cea50a94(1);
	function_a859aef4();
	self function_cea50a94(0);
}

/*
	Name: function_22b149da
	Namespace: namespace_19ee07c8
	Checksum: 0x87E2748F
	Offset: 0x5050
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_22b149da()
{
	level waittill("hash_5ea48ae9");
	level thread namespace_21b2c1f2::function_1c0460dd();
	level waittill("hash_35308140");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_depot_ahead_will_be_0");
}

/*
	Name: function_f48bd4a7
	Namespace: namespace_19ee07c8
	Checksum: 0x83E23E6E
	Offset: 0x50B0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_f48bd4a7()
{
	level waittill("hash_1dd905ef");
	namespace_80983c42::function_80983c42("light_exploder_prison_exit");
}

/*
	Name: function_a859aef4
	Namespace: namespace_19ee07c8
	Checksum: 0x11C999F0
	Offset: 0x50E8
	Size: 0x1E9
	Parameters: 0
	Flags: None
*/
function function_a859aef4()
{
	var_6553bad6 = function_6ada35ba("trig_use_khalil_door", "targetname");
	var_6553bad6 function_175e6b8e(0);
	level thread namespace_cc27597::function_43718187("cin_pro_06_03_hostage_vign_breach_hendrickscover");
	level namespace_ad23e503::function_1ab5ebec("player_entered_observation");
	level thread function_b8c0a930();
	if(isdefined(level.var_57de23a9))
	{
		level thread [[level.var_57de23a9]]();
	}
	level namespace_ad23e503::function_43ac000b(function_84970cc4("interrogation_finished", "player_breached_early"));
	level thread namespace_cc27597::function_43718187("cin_pro_06_03_hostage_vign_breach");
	level thread namespace_cc27597::function_43718187("cin_pro_06_03_hostage_vign_breach_hend_min");
	level notify("hash_a859aef4");
	level.var_4d5a4697.var_44a68a57 = undefined;
	level waittill("hash_ed07bf8c");
	var_6553bad6 function_175e6b8e(1);
	var_d86e08d0 = namespace_82b91a51::function_14518e76(var_6553bad6, &"cp_prompt_enteralt_prologue_khalil_breach", &"CP_MI_ETH_PROLOGUE_DOOR_BREACH", &function_28af2208);
	var_d86e08d0 thread namespace_a230c2b1::function_e0e2d0fe((1, 1, 1), 800, 0);
	level notify("hash_bd4342ed");
}

/*
	Name: function_db5cf0d5
	Namespace: namespace_19ee07c8
	Checksum: 0xFFF10DFC
	Offset: 0x52E0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_db5cf0d5()
{
	self endon("hash_128f8789");
	level endon("hash_a59a51");
	level endon("hash_bedc2f57");
	self waittill("hash_aa1618b0");
	level namespace_ad23e503::function_74d6b22f("player_breached_early");
}

/*
	Name: function_a1ad4aa7
	Namespace: namespace_19ee07c8
	Checksum: 0x4C7331EC
	Offset: 0x5340
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_a1ad4aa7()
{
	level waittill("hash_5e84ced9");
	level namespace_71e9cb84::function_74d6b22f("interrogate_physics", 1);
}

/*
	Name: function_28af2208
	Namespace: namespace_19ee07c8
	Checksum: 0x6CA8042
	Offset: 0x5380
	Size: 0x18B
	Parameters: 1
	Flags: None
*/
function function_28af2208(var_6bfe1586)
{
	self namespace_a230c2b1::function_e54c54c3();
	namespace_84970cc4::function_eaab05dc(level.var_2395e945, &namespace_82b91a51::function_16c71b8, 1);
	namespace_dabbe128::function_356a4ee1(&namespace_4dc8633b::function_4d4f1d4f);
	level thread function_2137acd9();
	level namespace_ad23e503::function_74d6b22f("khalil_door_breached");
	level thread namespace_cc27597::function_43718187("cin_pro_06_03_hostage_1st_khalil_intro_player_rescue", var_6bfe1586);
	level thread namespace_cc27597::function_43718187("cin_pro_06_03_hostage_1st_khalil_intro_rescue");
	level.var_9db406db function_cea50a94(1);
	level thread function_22b149da();
	level thread function_f48bd4a7();
	level waittill("hash_f83eeed5");
	level.var_9db406db function_cea50a94(0);
	level notify("hash_29445f62");
	namespace_1d795d47::function_be8adfb8("skipto_prison");
}

/*
	Name: function_2137acd9
	Namespace: namespace_19ee07c8
	Checksum: 0x65A902A6
	Offset: 0x5518
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_2137acd9()
{
	wait(42);
	namespace_84970cc4::function_eaab05dc(level.var_2395e945, &namespace_82b91a51::function_16c71b8, 0);
	namespace_dabbe128::function_a0ac4434(&namespace_4dc8633b::function_4d4f1d4f);
	level thread namespace_2cb3876f::function_77308ba7();
	level thread function_fae1bd07();
}

/*
	Name: function_fae1bd07
	Namespace: namespace_19ee07c8
	Checksum: 0xBD72F079
	Offset: 0x55A8
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_fae1bd07()
{
	function_37cbcf1a("amb_walla_troops_1", (6175, -1548, -157));
	wait(8);
	function_37cbcf1a("amb_walla_troops_0", (6129, -1037, -266));
}

/*
	Name: function_b8c0a930
	Namespace: namespace_19ee07c8
	Checksum: 0x3161F09F
	Offset: 0x5610
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_b8c0a930()
{
	level.var_4d5a4697.var_44a68a57 = &function_9b720436;
}

/*
	Name: function_9b720436
	Namespace: namespace_19ee07c8
	Checksum: 0x5063CE04
	Offset: 0x5640
	Size: 0x133
	Parameters: 13
	Flags: None
*/
function function_9b720436(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_ad8afadc, var_ae725cb8, var_f105c26b)
{
	if(isdefined(var_3a212fd7) && function_65f192a6(var_3a212fd7))
	{
		if(var_f9a179ed <= 1 || (isdefined(var_dfcc01fd) && var_dfcc01fd.var_83023915))
		{
			var_f9a179ed = 0;
		}
		if(!isdefined(self.var_28e02422))
		{
			self.var_28e02422 = 0;
		}
		self.var_28e02422 = self.var_28e02422 + var_f9a179ed;
		if(self.var_28e02422 >= self.var_47c252e3)
		{
			namespace_82b91a51::function_207f8667(&"CP_MI_ETH_PROLOGUE_MINISTER_SHOT", &"SCRIPT_MISSIONFAIL_WATCH_FIRE");
		}
		else
		{
			var_f9a179ed = 0;
		}
	}
	return var_f9a179ed;
}

/*
	Name: function_ef1899fb
	Namespace: namespace_19ee07c8
	Checksum: 0x999322EE
	Offset: 0x5780
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_ef1899fb()
{
	var_130a032 = function_6ada35ba("trig_use_minister_door", "targetname");
	var_130a032 function_175e6b8e(1);
	var_e0897b20 = namespace_82b91a51::function_14518e76(var_130a032, &"cp_prompt_enteralt_prologue_minister_breach", &"CP_MI_ETH_PROLOGUE_DOOR_BREACH", &function_b0c29b02);
	var_e0897b20 thread namespace_a230c2b1::function_e0e2d0fe((1, 1, 1), 800, 0);
}

/*
	Name: function_b0c29b02
	Namespace: namespace_19ee07c8
	Checksum: 0x3068BB35
	Offset: 0x5838
	Size: 0x18B
	Parameters: 1
	Flags: None
*/
function function_b0c29b02(var_6bfe1586)
{
	self.var_4dbf3ae3 function_175e6b8e(0);
	self namespace_a230c2b1::function_e54c54c3();
	foreach(var_12195048 in level.var_9b1393e7)
	{
		var_12195048 namespace_82b91a51::function_16c71b8(1);
		var_12195048 thread function_db5cf0d5();
	}
	namespace_dabbe128::function_356a4ee1(&namespace_4dc8633b::function_4d4f1d4f);
	level namespace_ad23e503::function_74d6b22f("player_interrogation_breach");
	level namespace_cc27597::function_43718187("cin_pro_06_03_hostage_vign_breach_playerbreach", var_6bfe1586);
	level notify("hash_516cb5e4");
	level thread namespace_71b8dba1::function_13b3b16a("plyr_interrogator_has_his_0", 3);
	level thread function_813f55a8();
}

/*
	Name: function_f8d7f50a
	Namespace: namespace_19ee07c8
	Checksum: 0x597E5E14
	Offset: 0x59D0
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_f8d7f50a(var_c77d2837)
{
	var_f2c7e89 = var_c77d2837["observation_door"];
	var_f2c7e89 function_e48f905e("p7_door_metal_security_02_rt_keypad");
	level waittill("hash_18c83555");
	var_f2c7e89 function_e48f905e("p7_door_metal_security_02_rt_keypad_damage");
}

/*
	Name: function_b317c15f
	Namespace: namespace_19ee07c8
	Checksum: 0xD06242C1
	Offset: 0x5A48
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_b317c15f()
{
	level namespace_cc27597::function_8f9f34e0("cin_pro_06_03_hostage_vign_breach_interrogation", &function_b8d7b823, "init");
	level namespace_cc27597::function_c35e6aab("cin_pro_06_03_hostage_vign_breach_interrogation");
	level waittill("hash_5c0ece37");
	namespace_cc27597::function_8f9f34e0("cin_pro_06_03_hostage_vign_breach_guardloop", &function_53775c4d, "play");
	level thread namespace_cc27597::function_43718187("cin_pro_06_03_hostage_vign_breach_guardloop");
	level namespace_cc27597::function_43718187("cin_pro_06_03_hostage_vign_breach_interrogation");
	level namespace_ad23e503::function_74d6b22f("interrogation_finished");
}

/*
	Name: function_b8d7b823
	Namespace: namespace_19ee07c8
	Checksum: 0x8A26A2AD
	Offset: 0x5B48
	Size: 0x173
	Parameters: 1
	Flags: None
*/
function function_b8d7b823(var_c77d2837)
{
	var_c77d2837["interrogator"].var_69dd5d62 = 0;
	var_c77d2837["interrogator"] namespace_175490fb::function_59965309("cybercom_fireflyswarm");
	level waittill("hash_7890ba26");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_on_my_mark_0");
	wait(1);
	level.var_2fd26037 thread namespace_71b8dba1::function_81141386("hend_three_two_go_0");
	level thread namespace_21b2c1f2::function_2f85277b();
	wait(1);
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		var_6bfe1586 namespace_82b91a51::function_16c71b8(0);
	}
	namespace_dabbe128::function_a0ac4434(&namespace_4dc8633b::function_4d4f1d4f);
}

/*
	Name: function_53775c4d
	Namespace: namespace_19ee07c8
	Checksum: 0xC9D56732
	Offset: 0x5CC8
	Size: 0xB9
	Parameters: 1
	Flags: None
*/
function function_53775c4d(var_c77d2837)
{
	foreach(var_8c3782a1 in var_c77d2837)
	{
		var_8c3782a1.var_c54411a6 = 1;
		var_8c3782a1.var_69dd5d62 = 0;
		var_8c3782a1 namespace_175490fb::function_59965309("cybercom_fireflyswarm");
	}
}

/*
	Name: function_813f55a8
	Namespace: namespace_19ee07c8
	Checksum: 0xC752078B
	Offset: 0x5D90
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_813f55a8()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_dam_int_room");
	level thread namespace_2cb3876f::function_2a0bc326(level.var_2fd26037.var_722885f3, 0.3, 0.75, 5000, 10, "damage_heavy");
	var_d3079b09 = function_6ada35ba("int_room_sound_wall", "targetname");
	var_d3079b09 function_dc8c8404();
	function_9e3608e3("interrogation_glass_hologram");
	namespace_80983c42::function_80983c42("fx_exploder_glass_screen");
}

/*
	Name: function_15c51270
	Namespace: namespace_19ee07c8
	Checksum: 0x6AB64A9E
	Offset: 0x5E70
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_15c51270()
{
	level thread function_88b82e8a();
	level waittill("hash_a859aef4");
	level thread function_b1d2594d();
	level namespace_ad23e503::function_1ab5ebec("khalil_door_breached");
	level thread namespace_21b2c1f2::function_fb4a2ce1();
}

/*
	Name: function_88b82e8a
	Namespace: namespace_19ee07c8
	Checksum: 0xC7F11E40
	Offset: 0x5EF0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_88b82e8a()
{
	level endon("hash_df5cca92");
	wait(17);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_that_exfil_won_t_wai_0");
}

/*
	Name: function_b1d2594d
	Namespace: namespace_19ee07c8
	Checksum: 0x82AF6675
	Offset: 0x5F30
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_b1d2594d()
{
	level endon("hash_94c473aa");
	level waittill("hash_bd4342ed");
	wait(20);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_sooner_we_get_khalil_0");
	wait(15);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_they_re_gonna_be_on_0");
}

/*
	Name: function_37b5c7e0
	Namespace: namespace_19ee07c8
	Checksum: 0x5718FEF9
	Offset: 0x5FA8
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_37b5c7e0()
{
	level thread function_c11e5214("trig_volume_prisoner1_cell", "pris_please_please_help_0");
	level thread function_c11e5214("trig_volume_prisoner2_cell", "pris_get_us_out_of_here_0");
	level thread function_c11e5214("trig_volume_prisoner3_cell", "pris_don_t_leave_me_here_0");
	level thread function_c11e5214("trig_volume_prisoner4_cell", "pris_please_help_us_0");
}

/*
	Name: function_c11e5214
	Namespace: namespace_19ee07c8
	Checksum: 0x726DE23E
	Offset: 0x6058
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function function_c11e5214(var_db803bcf, var_3fe3c7c8)
{
	level namespace_4dbf3ae3::function_1ab5ebec(var_db803bcf, "targetname", undefined, 0);
	level.var_2fd26037 namespace_71b8dba1::function_81141386(var_3fe3c7c8);
}

#namespace namespace_52f8de11;

/*
	Name: function_72514870
	Namespace: namespace_52f8de11
	Checksum: 0x227CA899
	Offset: 0x60C0
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function function_72514870(var_b04bc952)
{
	function_6141027f();
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
	level.var_4d5a4697 namespace_d84e54db::function_b4f5e3b9(0);
	namespace_76d95162::function_d9f49fba(1);
	namespace_2cb3876f::function_47a62798(1);
	namespace_2f06d687::function_2b37a3c9("bridge_attacker", "script_noteworthy", &namespace_d51ba4::function_33ec51ea);
	level thread function_b8fd868b();
	namespace_4dbf3ae3::function_1ab5ebec("t_start_lift_battle");
	namespace_1d795d47::function_be8adfb8("skipto_security_desk");
}

/*
	Name: function_6141027f
	Namespace: namespace_52f8de11
	Checksum: 0x99EC1590
	Offset: 0x61C0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_6141027f()
{
}

/*
	Name: function_b8fd868b
	Namespace: namespace_52f8de11
	Checksum: 0xD8B20055
	Offset: 0x61D0
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_b8fd868b()
{
	level thread namespace_2cb3876f::function_950d1c3b(1);
	level thread function_e6af47cb();
	level thread function_5e374f7a();
	var_88e2cef7 = function_6ada35ba("trig_open_weapons_room", "targetname");
	var_88e2cef7 function_175e6b8e(1);
	level namespace_ad23e503::function_1ab5ebec("open_weapons_room");
	level thread namespace_21b2c1f2::function_6c35b4f3();
	level thread function_b60a26e8();
}

/*
	Name: function_bfe70f02
	Namespace: namespace_52f8de11
	Checksum: 0x2375AC3
	Offset: 0x62C0
	Size: 0x37
	Parameters: 0
	Flags: None
*/
function function_bfe70f02()
{
	if(!isdefined(level.var_e5ed7cda))
	{
		namespace_cc27597::function_c35e6aab("cin_pro_07_01_securitydesk_vign_weapons_doorinit");
		level.var_e5ed7cda = 1;
	}
}

/*
	Name: function_5e374f7a
	Namespace: namespace_52f8de11
	Checksum: 0x7EF4EBF6
	Offset: 0x6300
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_5e374f7a()
{
	level namespace_ad23e503::function_1ab5ebec("open_weapons_room");
	level waittill("hash_ecefb6c8");
	level thread function_4fd5aaec();
	wait(1);
	level thread function_bce54c0b();
	level thread function_36113d75();
	level thread function_680575de();
}

/*
	Name: function_4fd5aaec
	Namespace: namespace_52f8de11
	Checksum: 0xCE883277
	Offset: 0x6398
	Size: 0x29D
	Parameters: 0
	Flags: None
*/
function function_4fd5aaec()
{
	var_e3b635fb = function_99201f25("sp_armory_lift_area_1st_attacker", "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
	{
		var_4c9c8550 = var_e3b635fb[var_c957f6b6] namespace_2f06d687::function_9b7fda5e();
		var_22752fde = function_b4cb3503(var_4c9c8550.var_b07228b6, "targetname");
		var_4c9c8550.var_7dfaf62 = 64;
		var_4c9c8550 function_169cc712(var_22752fde.var_722885f3);
		var_4c9c8550 thread namespace_2cb3876f::function_8e9f617f(256, 1);
	}
	var_67825717 = function_6ada35ba("info_armory_enemy_pushup", "targetname");
	var_e3b635fb = function_99201f25("sp_armory_lift_area_attackers", "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
	{
		var_4c9c8550 = var_e3b635fb[var_c957f6b6] namespace_2f06d687::function_9b7fda5e();
		var_4c9c8550 function_169cc712(var_67825717);
		var_4c9c8550 thread namespace_2cb3876f::function_8e9f617f(512, 1);
	}
	var_67825717 = function_6ada35ba("info_armory_wave2", "targetname");
	var_e3b635fb = function_99201f25("sp_armory_lift_area_attackers_part2", "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
	{
		var_4c9c8550 = var_e3b635fb[var_c957f6b6] namespace_2f06d687::function_9b7fda5e();
		var_4c9c8550 function_169cc712(var_67825717);
		var_4c9c8550 thread namespace_2cb3876f::function_8e9f617f(512, 1);
	}
}

/*
	Name: function_bce54c0b
	Namespace: namespace_52f8de11
	Checksum: 0x6EC3DE8F
	Offset: 0x6640
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_bce54c0b()
{
	var_da1cc39e = function_99201f25("sp_armory_walkway_attackers", "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_da1cc39e.size; var_c957f6b6++)
	{
		var_4c9c8550 = var_da1cc39e[var_c957f6b6] namespace_2f06d687::function_9b7fda5e();
		wait(1.5);
	}
	wait(3);
	level thread function_ad03757a();
}

/*
	Name: function_36113d75
	Namespace: namespace_52f8de11
	Checksum: 0x57A2607B
	Offset: 0x66F0
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_36113d75()
{
	level thread namespace_2cb3876f::function_e0fb6da9("s_armory_moveup_start", 240, 7, 1, 1, 3, "info_armory_wave2", "info_armory_enemy_pushup");
	level thread namespace_2cb3876f::function_e0fb6da9("s_armory_moveup_point_left", 240, 4, 1, 1, 6, "info_armory_wave2", "info_armory_enemy_pushup");
	level thread namespace_2cb3876f::function_e0fb6da9("s_armory_moveup_point_right", 240, 4, 1, 1, 6, "info_armory_wave2", "info_armory_enemy_pushup");
}

/*
	Name: function_e6af47cb
	Namespace: namespace_52f8de11
	Checksum: 0xA9A98A4D
	Offset: 0x67C0
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_e6af47cb()
{
	level namespace_ad23e503::function_1ab5ebec("open_weapons_room");
	level.var_2fd26037 function_169cc712(level.var_2fd26037.var_722885f3);
	level.var_2fd26037 function_e11ce512();
	level.var_2fd26037.var_7dfaf62 = 64;
	level thread function_473b7de8();
	wait(2);
	namespace_4dbf3ae3::function_42e87952("trig_armory_color");
	namespace_2cb3876f::function_d1f1caad("t_script_color_allies_r2010");
	namespace_2cb3876f::function_d1f1caad("t_script_color_allies_r2020");
	namespace_2cb3876f::function_d1f1caad("t_script_color_allies_r2030");
	namespace_2cb3876f::function_d1f1caad("t_script_color_allies_r2040");
}

/*
	Name: function_473b7de8
	Namespace: namespace_52f8de11
	Checksum: 0x3B59A3DE
	Offset: 0x68D8
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_473b7de8()
{
	while(!namespace_cc27597::function_92591589("cin_pro_07_01_securitydesk_vign_weapons"))
	{
		wait(0.05);
	}
	namespace_cc27597::function_8f9f34e0("cin_pro_07_01_securitydesk_vign_weapons", &function_d4401b52);
	namespace_cc27597::function_43718187("cin_pro_07_01_securitydesk_vign_weapons");
	level notify("hash_69db142c");
	var_22752fde = function_b4cb3503("nd_khalil_armory_battle", "targetname");
	level.var_9db406db.var_7dfaf62 = 64;
	level.var_9db406db function_169cc712(var_22752fde.var_722885f3);
	level.var_9db406db waittill("hash_41d1aaf0");
	level.var_9db406db.var_7dfaf62 = 512;
}

/*
	Name: function_d4401b52
	Namespace: namespace_52f8de11
	Checksum: 0x6C33AF91
	Offset: 0x69F0
	Size: 0xD3
	Parameters: 1
	Flags: None
*/
function function_d4401b52(var_c77d2837)
{
	level endon("hash_2b5787d4");
	level.var_4d5a4697 namespace_d84e54db::function_fd6c4374();
	level.var_9db406db namespace_d84e54db::function_fd6c4374();
	level.var_4d5a4697 waittill("hash_c89e55c9");
	var_c77d2837["arak_m"] function_50ccee8d();
	level.var_4d5a4697 namespace_d84e54db::function_efed45a3();
	level.var_9db406db waittill("hash_2dc522e9");
	var_c77d2837["arak_k"] function_50ccee8d();
	level.var_9db406db namespace_d84e54db::function_efed45a3();
}

/*
	Name: function_ad03757a
	Namespace: namespace_52f8de11
	Checksum: 0x589803B0
	Offset: 0x6AD0
	Size: 0xD7
	Parameters: 0
	Flags: None
*/
function function_ad03757a()
{
	wait(3);
	var_e3b635fb = namespace_2f06d687::function_289e6fd1("security_balcony");
	if(var_e3b635fb.size > 0)
	{
		var_b5dd40c7 = namespace_84970cc4::function_47d18840(var_e3b635fb);
		var_b5dd40c7 namespace_cc27597::function_43718187("cin_pro_07_01_securitydesk_vign_dropdown", var_b5dd40c7);
		if(function_5b49d38c(var_b5dd40c7))
		{
			var_b5dd40c7 function_169cc712(var_b5dd40c7.var_722885f3);
			var_b5dd40c7.var_7dfaf62 = 512;
		}
	}
}

/*
	Name: function_680575de
	Namespace: namespace_52f8de11
	Checksum: 0xB94DC2D0
	Offset: 0x6BB0
	Size: 0xB5
	Parameters: 0
	Flags: None
*/
function function_680575de()
{
	namespace_2cb3876f::function_520255e3("t_armory_wave2", 5);
	var_fe3db664 = function_99201f25("sp_armory_wave2", "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_fe3db664.size; var_c957f6b6++)
	{
		var_4c9c8550 = var_fe3db664[var_c957f6b6] namespace_2f06d687::function_9b7fda5e();
		var_4c9c8550 thread function_2fa59109();
	}
}

/*
	Name: function_2fa59109
	Namespace: namespace_52f8de11
	Checksum: 0x6FD31327
	Offset: 0x6C70
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_2fa59109()
{
	var_67825717 = function_6ada35ba("info_armory_wave2", "targetname");
	self function_169cc712(var_67825717);
}

/*
	Name: function_d9f4b7bc
	Namespace: namespace_52f8de11
	Checksum: 0x2976FA64
	Offset: 0x6CC8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_d9f4b7bc()
{
	level.var_9db406db thread namespace_71b8dba1::function_81141386("khal_i_need_to_get_my_wea_0");
}

/*
	Name: function_b60a26e8
	Namespace: namespace_52f8de11
	Checksum: 0xB379975F
	Offset: 0x6CF8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_b60a26e8()
{
	namespace_d0ef8521::function_74d6b22f("cp_level_prologue_defend_khalil", level.var_9db406db);
	level waittill("hash_69db142c");
	namespace_d0ef8521::function_31cd1834("cp_level_prologue_defend_khalil");
}

#namespace namespace_e80bc418;

/*
	Name: function_7280b87c
	Namespace: namespace_e80bc418
	Checksum: 0xF8213853
	Offset: 0x6D50
	Size: 0x6F
	Parameters: 0
	Flags: None
*/
function function_7280b87c()
{
	level namespace_ad23e503::function_c35e6aab("lift_arrived");
	level namespace_ad23e503::function_c35e6aab("crane_in_position");
	level namespace_ad23e503::function_c35e6aab("crane_dropped");
	level.var_1dd14818 = 0;
}

/*
	Name: function_68538fd
	Namespace: namespace_e80bc418
	Checksum: 0x46C7131E
	Offset: 0x6DC8
	Size: 0x363
	Parameters: 1
	Flags: None
*/
function function_68538fd(var_b04bc952)
{
	function_7280b87c();
	if(!isdefined(level.var_2fd26037))
	{
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		namespace_4dc8633b::function_bff1a867();
		level.var_2fd26037.var_7dfaf62 = 16;
		level.var_4d5a4697 = namespace_82b91a51::function_740f8516("minister");
		namespace_4dc8633b::function_211ff3c7();
		level.var_4d5a4697 namespace_d84e54db::function_c9e45d52(1);
		level.var_9db406db = namespace_82b91a51::function_740f8516("khalil");
		namespace_4dc8633b::function_c117302b();
		level.var_9db406db namespace_d84e54db::function_c9e45d52(1);
		namespace_1d795d47::function_3096a6fd(var_b04bc952);
	}
	namespace_dabbe128::function_de1a6d25(&namespace_61c634f2::function_cbaf37cd);
	var_489e46a = function_6ada35ba("t_regroup_lift", "targetname");
	var_489e46a function_175e6b8e(0);
	namespace_4dbf3ae3::function_42e87952("t_lift_respawns_disable");
	namespace_80983c42::function_67e7a937("light_exploder_prison_exit");
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
	level.var_4d5a4697 namespace_d84e54db::function_b4f5e3b9(0);
	namespace_76d95162::function_d9f49fba(1);
	namespace_2cb3876f::function_47a62798(1);
	level thread function_9793598c();
	level thread function_5517d018();
	level thread function_6fabe3da();
	level thread function_b17bd9c5();
	function_e97f7dba();
	var_489e46a = function_6ada35ba("t_regroup_lift", "targetname");
	var_489e46a function_175e6b8e(1);
	namespace_4dbf3ae3::function_42e87952("t_lift_respawns_enable");
	level thread function_a3dbf6a2();
	level thread function_613d7b39();
	level waittill("hash_b100689e");
	namespace_dabbe128::function_fad550c4(&namespace_61c634f2::function_cbaf37cd);
	namespace_1d795d47::function_be8adfb8("skipto_lift_escape");
}

/*
	Name: function_9793598c
	Namespace: namespace_e80bc418
	Checksum: 0x1B610609
	Offset: 0x7138
	Size: 0x2EB
	Parameters: 0
	Flags: None
*/
function function_9793598c()
{
	level thread function_b1017ede();
	level thread namespace_2cb3876f::function_e0fb6da9("s_lift_enemy_moveup_point_1", 130, 10, 1, 2, 10, "v_lift_fallback", "info_lift_start_right_side");
	level thread function_eeb1c74e();
	level thread function_30a5bc5();
	level thread function_c8950894();
	level thread function_a86c4e88();
	level thread namespace_2cb3876f::function_40e4b0cf("sm_lift_start_left_side", "sp_lift_start_left_side", "info_lift_start_left_side");
	if(level.var_9b1393e7.size > 1)
	{
		level thread namespace_2cb3876f::function_40e4b0cf("sm_lift_start_right_side", "sp_lift_start_right_side", "info_lift_start_right_side");
	}
	else
	{
		namespace_d5067552::function_2992720d("sm_lift_start_right_side");
	}
	level thread function_8a1821e("t_left_start_fallback", "info_left_start_fallback", "v_lift_fallback");
	level thread function_8a1821e("t_right_start_fallback", "info_lift_start_right_side", "v_lift_fallback");
	level thread function_8949fadf();
	level thread function_51da5fc6();
	namespace_4dbf3ae3::function_1ab5ebec("t_lift_reinforcements", undefined, undefined, 0);
	var_da1cc39e = function_99201f25("sp_stairs_guy_wave2", "targetname");
	foreach(var_1c779b09 in var_da1cc39e)
	{
		var_1c779b09 namespace_2f06d687::function_9b7fda5e();
	}
	level thread namespace_2cb3876f::function_40e4b0cf("sm_lift_final_attackers", "sp_lift_final_attackers", "v_lift_fallback");
	level thread function_93c4d161();
}

/*
	Name: function_b1017ede
	Namespace: namespace_e80bc418
	Checksum: 0x6E6DC19A
	Offset: 0x7430
	Size: 0x243
	Parameters: 0
	Flags: None
*/
function function_b1017ede()
{
	level endon("hash_631a1949");
	var_5ddef2e5 = function_3f10449f();
	if(var_5ddef2e5.size > 1)
	{
		return;
	}
	var_f721d9a5 = GetTime();
	var_c2798c63 = function_6ada35ba("info_lift_players_camping", "targetname");
	var_a9dae27c = function_6ada35ba("info_lift_area_volume", "targetname");
	while(1)
	{
		var_6bfe1586 = function_3f10449f()[0];
		var_60db70fa = GetTime();
		if(var_6bfe1586 function_32fa5072(var_c2798c63))
		{
			var_5ecb0b6d = var_60db70fa - var_f721d9a5 / 1000;
			if(var_5ecb0b6d > 15)
			{
				var_f2c0d323 = 0;
				var_9fc9c7b7 = namespace_2cb3876f::function_68b8f4af(var_a9dae27c);
				for(var_c957f6b6 = 0; var_c957f6b6 < var_9fc9c7b7.size; var_c957f6b6++)
				{
					var_e98b4e9b = var_9fc9c7b7[var_c957f6b6];
					if(!isdefined(var_e98b4e9b.var_4383fc69))
					{
						var_e98b4e9b.var_4383fc69 = 1;
						var_e98b4e9b.var_7dfaf62 = 200;
						var_e98b4e9b function_169cc712(var_6bfe1586.var_722885f3);
						var_f721d9a5 = var_60db70fa;
						var_f2c0d323 = 1;
						break;
					}
				}
				if(!var_f2c0d323)
				{
					return;
				}
			}
		}
		else
		{
			var_f721d9a5 = var_60db70fa;
		}
		wait(0.05);
	}
}

/*
	Name: function_a86c4e88
	Namespace: namespace_e80bc418
	Checksum: 0x47C76B03
	Offset: 0x7680
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_a86c4e88()
{
	namespace_2cb3876f::function_d1f1caad("t_lift_intro_runners");
	wait(10);
	level thread namespace_2cb3876f::function_a7eac508("sp_lift_intro_rightside_backup", undefined, undefined, undefined);
}

/*
	Name: function_eeb1c74e
	Namespace: namespace_e80bc418
	Checksum: 0xC7B6544F
	Offset: 0x76D0
	Size: 0x27D
	Parameters: 0
	Flags: None
*/
function function_eeb1c74e()
{
	level namespace_ad23e503::function_1ab5ebec("lift_arrived");
	wait(10);
	var_91737097 = function_6ada35ba("info_lift_area_volume", "targetname");
	var_2320a476 = function_6ada35ba("info_lift_start_area_volume", "targetname");
	while(1)
	{
		if(isdefined(level.var_1f5f8798) && level.var_1f5f8798)
		{
			return;
		}
		var_e3b635fb = function_b8494651("axis");
		var_74952a22 = 0;
		for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
		{
			if(var_e3b635fb[var_c957f6b6] function_32fa5072(var_2320a476))
			{
				var_74952a22++;
			}
		}
		if(var_74952a22 <= 2)
		{
			break;
		}
		wait(0.05);
	}
	var_e3b635fb = function_b8494651("axis");
	var_9fc9c7b7 = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
	{
		var_4c9c8550 = var_e3b635fb[var_c957f6b6];
		if(var_4c9c8550 function_32fa5072(var_91737097) && !var_4c9c8550 function_32fa5072(var_2320a476))
		{
			var_9fc9c7b7[var_9fc9c7b7.size] = var_4c9c8550;
		}
	}
	var_74952a22 = var_9fc9c7b7.size;
	if(var_74952a22 > 3)
	{
		var_74952a22 = 3;
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < var_74952a22; var_c957f6b6++)
	{
		var_4c9c8550 = var_9fc9c7b7[var_c957f6b6];
		var_4c9c8550 function_169cc712(var_2320a476);
	}
}

/*
	Name: function_30a5bc5
	Namespace: namespace_e80bc418
	Checksum: 0x3D443E64
	Offset: 0x7958
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_30a5bc5()
{
	namespace_2cb3876f::function_d1f1caad("t_lift_intro_runners");
	level thread namespace_2cb3876f::function_a7eac508("sp_lift_intro_runners", 64, 64, undefined);
}

/*
	Name: function_c8950894
	Namespace: namespace_e80bc418
	Checksum: 0x28F049D6
	Offset: 0x79A8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_c8950894()
{
	namespace_2cb3876f::function_d1f1caad("t_intro_guys_on_bridge");
	namespace_2cb3876f::function_73acb160("sp_lift_stairs_intro_guys", undefined);
}

/*
	Name: function_b17bd9c5
	Namespace: namespace_e80bc418
	Checksum: 0xAAD521EF
	Offset: 0x79E8
	Size: 0x1D3
	Parameters: 0
	Flags: None
*/
function function_b17bd9c5()
{
	level.var_2fd26037.var_15dfd6c = 0.6;
	level.var_4d5a4697.var_15dfd6c = 0.6;
	level.var_9db406db.var_15dfd6c = 0.6;
	level thread function_17d64396();
	namespace_4dbf3ae3::function_42e87952("t_script_color_allies_r920");
	namespace_4dbf3ae3::function_1ab5ebec("t_script_color_allies_r950");
	level namespace_ad23e503::function_1ab5ebec("crane_in_position");
	if(!level namespace_ad23e503::function_7922262b("crane_dropped"))
	{
		var_377a9c22 = namespace_82b91a51::function_b9fd52a4("tag_origin", namespace_14b42b8a::function_7922262b("s_destroy_pipes", "targetname").var_722885f3);
		var_377a9c22.var_3a90f16b = 1000;
		level.var_2fd26037 namespace_d84e54db::function_d104c596("normal", var_377a9c22, "tag_origin", 3);
		var_377a9c22 function_dc8c8404();
		var_2eb20475 = function_6ada35ba("crane_damage_trigger", "targetname");
		if(isdefined(var_2eb20475))
		{
			var_2eb20475 function_4fdc0e7d(level.var_2fd26037);
		}
	}
}

/*
	Name: function_e97f7dba
	Namespace: namespace_e80bc418
	Checksum: 0x75C614E3
	Offset: 0x7BC8
	Size: 0x19B
	Parameters: 0
	Flags: None
*/
function function_e97f7dba()
{
	namespace_2f06d687::function_72214789("lift_area");
	level thread namespace_21b2c1f2::function_49fef8f4();
	level thread function_d4734ff1();
	level thread function_6f04ae03();
	level.var_2fd26037 thread function_add8f6bb();
	level.var_9db406db thread function_f92b76b7();
	level.var_4d5a4697 thread function_c3ab179b();
	level namespace_ad23e503::function_1ab5ebec("hendricks_in_lift");
	level namespace_ad23e503::function_1ab5ebec("minister_in_lift");
	level namespace_ad23e503::function_1ab5ebec("khalil_in_lift");
	while(!level namespace_cc27597::function_92591589("cin_pro_09_01_intro_1st_cybersoldiers_diaz_attack") || !level namespace_cc27597::function_92591589("cin_pro_09_01_intro_1st_cybersoldiers_maretti_attack") || !level namespace_cc27597::function_92591589("cin_pro_09_01_intro_1st_cybersoldiers_sarah_attack") || !level namespace_cc27597::function_92591589("cin_pro_09_01_intro_1st_cybersoldiers_taylor_attack"))
	{
		wait(0.05);
	}
}

/*
	Name: function_17d64396
	Namespace: namespace_e80bc418
	Checksum: 0x2D37BFA0
	Offset: 0x7D70
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_17d64396()
{
	namespace_2cb3876f::function_d1f1caad("entering_lift_fight");
	var_f721d9a5 = GetTime();
	while(1)
	{
		var_60db70fa = GetTime();
		var_5ecb0b6d = var_60db70fa - var_f721d9a5 / 1000;
		if(var_5ecb0b6d > 10)
		{
			var_f04bd8f5 = namespace_2cb3876f::function_609c412a("info_lift_start_area_volume", 0);
			if(var_f04bd8f5 <= 2)
			{
				break;
			}
		}
		wait(0.05);
	}
	var_f92a03e7 = function_6ada35ba("t_script_color_allies_r930", "targetname");
	if(isdefined(var_f92a03e7))
	{
		namespace_4dbf3ae3::function_42e87952("t_script_color_allies_r930");
	}
}

/*
	Name: function_8a1821e
	Namespace: namespace_e80bc418
	Checksum: 0x47BFEC4D
	Offset: 0x7E88
	Size: 0x155
	Parameters: 3
	Flags: None
*/
function function_8a1821e(var_db803bcf, var_fc9c675e, var_62ec3b42)
{
	var_f92a03e7 = function_6ada35ba(var_db803bcf, "targetname");
	if(isdefined(var_f92a03e7))
	{
		var_f92a03e7 waittill("hash_4dbf3ae3");
	}
	var_cc6832b6 = function_6ada35ba(var_fc9c675e, "targetname");
	var_97e01c0a = function_6ada35ba(var_62ec3b42, "targetname");
	var_e3b635fb = function_b8494651("axis");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
	{
		var_4c9c8550 = var_e3b635fb[var_c957f6b6];
		if(var_4c9c8550 function_32fa5072(var_cc6832b6))
		{
			var_4c9c8550 function_86408aa8(var_97e01c0a);
		}
	}
}

/*
	Name: function_d4734ff1
	Namespace: namespace_e80bc418
	Checksum: 0x9A46799E
	Offset: 0x7FE8
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_d4734ff1()
{
	level thread namespace_cc27597::function_c35e6aab("cin_pro_09_01_intro_1st_cybersoldiers_diaz_attack");
	level thread namespace_cc27597::function_c35e6aab("cin_pro_09_01_intro_1st_cybersoldiers_maretti_attack");
	level thread namespace_cc27597::function_c35e6aab("cin_pro_09_01_intro_1st_cybersoldiers_sarah_attack");
	level thread namespace_cc27597::function_c35e6aab("cin_pro_09_01_intro_1st_cybersoldiers_taylor_attack");
}

/*
	Name: function_a3dbf6a2
	Namespace: namespace_e80bc418
	Checksum: 0x6D7BEC2
	Offset: 0x8078
	Size: 0x35F
	Parameters: 0
	Flags: None
*/
function function_a3dbf6a2()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_lift_interior");
	var_d39a9d5b = function_6ada35ba("player_lift_clip", "targetname");
	var_d39a9d5b function_8bdea13c(124, 0.05);
	level.var_5b3ac1ed = 1;
	level namespace_cc27597::function_8f9f34e0("cin_pro_09_01_intro_1st_cybersoldiers_elevator_ride", &namespace_dccf27b3::function_679e7da9, "play");
	level thread namespace_cc27597::function_43718187("cin_pro_09_01_intro_1st_cybersoldiers_lift_pushbutton");
	level.var_4d5a4697.var_7dfaf62 = 16;
	level.var_4d5a4697.var_a1ed1ed1 = 1600;
	level.var_4d5a4697 function_169cc712(level.var_4d5a4697.var_722885f3);
	level.var_9db406db.var_7dfaf62 = 16;
	level.var_9db406db.var_a1ed1ed1 = 1600;
	level.var_9db406db function_169cc712(level.var_9db406db.var_722885f3);
	level notify("hash_3e51db3e");
	level thread function_45ed0d4b(0, 1.5);
	level waittill("hash_9e4059e6");
	level.var_be31aa9a = function_6ada35ba("freight_lift", "targetname");
	level.var_be31aa9a function_b0b70abb(1);
	level.var_be31aa9a function_921a1574("evt_freight_lift_start");
	level.var_7b90133a = function_9b7fda5e("script_origin", level.var_be31aa9a.var_722885f3);
	level.var_7b90133a function_37f7858a(level.var_be31aa9a);
	level.var_7b90133a function_c2931a36("evt_freight_lift_loop");
	level thread function_4d214c02(1);
	level thread function_e19320a1(1);
	level.var_be31aa9a thread namespace_cc27597::function_43718187("cin_pro_09_01_intro_1st_cybersoldiers_elevator");
	level.var_3dce3f88 function_8bdea13c(270, 16.3);
	level.var_3dce3f88 thread function_5bd223b0();
	wait(16.3 - 2);
	function_6c1294b8("grenadeAllowRigidBodyPhysics", "1");
	level notify("hash_b100689e");
	level.var_b100689e = 1;
}

/*
	Name: function_5bd223b0
	Namespace: namespace_e80bc418
	Checksum: 0xEABB26E4
	Offset: 0x83E0
	Size: 0x12D
	Parameters: 0
	Flags: None
*/
function function_5bd223b0()
{
	self endon("hash_128f8789");
	self waittill("hash_a21db68a");
	var_18f37a5b = function_6ada35ba("t_lift_interior", "targetname");
	var_4fdbb65a = namespace_14b42b8a::function_7faf4c39("lift_left_behind", "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_9b1393e7.size; var_c957f6b6++)
	{
		var_5dc5e20a = level.var_9b1393e7[var_c957f6b6];
		if(var_5dc5e20a function_32fa5072(var_18f37a5b))
		{
			var_5dc5e20a function_a30814d(var_4fdbb65a[var_c957f6b6].var_722885f3);
			var_5dc5e20a function_eda2be50(var_4fdbb65a[var_c957f6b6].var_6ab6f4fd);
		}
	}
}

/*
	Name: function_e19320a1
	Namespace: namespace_e80bc418
	Checksum: 0xC2815EFA
	Offset: 0x8518
	Size: 0x163
	Parameters: 1
	Flags: None
*/
function function_e19320a1(var_ee7dbbc9)
{
	if(!isdefined(var_ee7dbbc9))
	{
		var_ee7dbbc9 = 0.05;
	}
	wait(var_ee7dbbc9);
	namespace_80983c42::function_67e7a937("light_exploder_lift_inside");
	namespace_80983c42::function_80983c42("light_exploder_lift_rising");
	namespace_80983c42::function_80983c42("light_exploder_igc_cybersoldier");
	namespace_80983c42::function_80983c42("fx_exploder_door_open_dust");
	var_58576bff = function_6ada35ba("hangar_lift_door_left", "targetname");
	var_bbc00d9a = function_6ada35ba("hangar_lift_door_right", "targetname");
	function_37cbcf1a("evt_freight_lift_abovedoor", var_bbc00d9a.var_722885f3);
	var_58576bff function_fde61077(104, 5);
	var_bbc00d9a function_fde61077(104 * -1, 5);
}

/*
	Name: function_4d214c02
	Namespace: namespace_e80bc418
	Checksum: 0xEDF71BBF
	Offset: 0x8688
	Size: 0x1AF
	Parameters: 1
	Flags: None
*/
function function_4d214c02(var_67520c6a)
{
	wait(var_67520c6a);
	while(!(isdefined(level.var_b100689e) && level.var_b100689e))
	{
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_5dc5e20a function_e2af603e("cp_prologue_rumble_lift");
		}
		wait(0.5);
	}
	var_f721d9a5 = GetTime();
	while(1)
	{
		var_60db70fa = GetTime();
		var_5ecb0b6d = var_60db70fa - var_f721d9a5 / 1000;
		if(var_5ecb0b6d > 8)
		{
			break;
		}
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_5dc5e20a function_e2af603e("cp_prologue_rumble_lift");
		}
		wait(0.5);
	}
}

/*
	Name: function_17ecef2
	Namespace: namespace_e80bc418
	Checksum: 0x44C7DE3B
	Offset: 0x8840
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_17ecef2()
{
	self.var_15dfd6c = 0.5;
	self.var_44a68a57 = &function_10ffa58e;
}

/*
	Name: function_10ffa58e
	Namespace: namespace_e80bc418
	Checksum: 0xBF17D8AE
	Offset: 0x8878
	Size: 0xB7
	Parameters: 13
	Flags: None
*/
function function_10ffa58e(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_ad8afadc, var_ae725cb8, var_f105c26b)
{
	if(self.var_3a90f16b - var_f9a179ed <= 0)
	{
		if(isdefined(var_3a212fd7) && function_65f192a6(var_3a212fd7))
		{
			var_3a212fd7 notify("hash_38f375b6");
		}
	}
	return var_f9a179ed;
}

/*
	Name: function_613d7b39
	Namespace: namespace_e80bc418
	Checksum: 0x8DD56F83
	Offset: 0x8938
	Size: 0xF5
	Parameters: 0
	Flags: None
*/
function function_613d7b39()
{
	level waittill("hash_b100689e");
	wait(2);
	if(isdefined(level.var_90cd4b44))
	{
		namespace_4dc8633b::function_6a77bdd4(level.var_90cd4b44);
	}
	if(isdefined(level.var_5fbe7226))
	{
		namespace_4dc8633b::function_6a77bdd4(level.var_5fbe7226);
	}
	level.var_4d5a4697.var_a1ed1ed1 = 80;
	level.var_9db406db.var_a1ed1ed1 = 80;
	var_e3b635fb = function_b8494651("axis");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
	{
		var_e3b635fb[var_c957f6b6] function_dc8c8404();
	}
}

/*
	Name: function_32e49d5b
	Namespace: namespace_e80bc418
	Checksum: 0x51272AFF
	Offset: 0x8A38
	Size: 0xE9
	Parameters: 2
	Flags: None
*/
function function_32e49d5b(var_95c5d6ed, var_5feb916c)
{
	namespace_d5067552::function_2992720d(var_95c5d6ed);
	var_db932442 = namespace_2f06d687::function_289e6fd1(var_5feb916c);
	foreach(var_1bed86d6 in var_db932442)
	{
		if(function_5b49d38c(var_1bed86d6))
		{
			var_1bed86d6 function_dc8c8404();
		}
	}
}

/*
	Name: function_9b5132a1
	Namespace: namespace_e80bc418
	Checksum: 0x61B88850
	Offset: 0x8B30
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_9b5132a1(var_74293b08)
{
	var_26aaa5cc = namespace_14b42b8a::function_7922262b(var_74293b08, "targetname");
	self.var_5ddefd36 = undefined;
	self.var_7dfaf62 = 128;
	self function_e65887e4(var_26aaa5cc.var_722885f3);
	self waittill("hash_41d1aaf0");
	self.var_5ddefd36 = 1;
}

/*
	Name: function_add8f6bb
	Namespace: namespace_e80bc418
	Checksum: 0x4B1C3849
	Offset: 0x8BC8
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_add8f6bb()
{
	self namespace_6f7b2095::function_54bdb053();
	namespace_cc27597::function_8f9f34e0("cin_pro_09_01_intro_1st_cybersoldiers_elevator_ride_start_hendricks", &function_3703e000, "play");
	level namespace_cc27597::function_43718187("cin_pro_09_01_intro_1st_cybersoldiers_elevator_ride_start_hendricks");
	level namespace_ad23e503::function_74d6b22f("hendricks_in_lift");
}

/*
	Name: function_c3ab179b
	Namespace: namespace_e80bc418
	Checksum: 0x2BDA4124
	Offset: 0x8C60
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_c3ab179b()
{
	self namespace_d84e54db::function_ceb883cd("vignette_mode", "slow");
	namespace_cc27597::function_8f9f34e0("cin_pro_09_01_intro_1st_cybersoldiers_elevator_ride_start_minister", &function_6d36e736, "play");
	level namespace_cc27597::function_43718187("cin_pro_09_01_intro_1st_cybersoldiers_elevator_ride_start_minister");
	self function_169cc712(self.var_722885f3, 1);
	level namespace_ad23e503::function_74d6b22f("minister_in_lift");
}

/*
	Name: function_f92b76b7
	Namespace: namespace_e80bc418
	Checksum: 0x9764EAD7
	Offset: 0x8D28
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_f92b76b7()
{
	self namespace_d84e54db::function_ceb883cd("vignette_mode", "slow");
	namespace_cc27597::function_8f9f34e0("cin_pro_09_01_intro_1st_cybersoldiers_elevator_ride_start_khalil", &function_789cecd6, "play");
	level namespace_cc27597::function_43718187("cin_pro_09_01_intro_1st_cybersoldiers_elevator_ride_start_khalil");
	self function_169cc712(self.var_722885f3, 1);
	level namespace_ad23e503::function_74d6b22f("khalil_in_lift");
}

/*
	Name: function_3703e000
	Namespace: namespace_e80bc418
	Checksum: 0x73023C63
	Offset: 0x8DF0
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_3703e000(var_c77d2837)
{
	level endon("hash_7880f194");
	wait(6);
	level namespace_ad23e503::function_74d6b22f("hendricks_in_lift");
}

/*
	Name: function_6d36e736
	Namespace: namespace_e80bc418
	Checksum: 0x4C79B06E
	Offset: 0x8E38
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_6d36e736(var_c77d2837)
{
	level endon("hash_9368976");
	wait(4);
	level namespace_ad23e503::function_74d6b22f("minister_in_lift");
}

/*
	Name: function_789cecd6
	Namespace: namespace_e80bc418
	Checksum: 0x567AFC6C
	Offset: 0x8E80
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_789cecd6(var_c77d2837)
{
	level endon("hash_4c888af6");
	wait(6.7);
	level namespace_ad23e503::function_74d6b22f("khalil_in_lift");
}

/*
	Name: function_8949fadf
	Namespace: namespace_e80bc418
	Checksum: 0x7469CBD8
	Offset: 0x8EC8
	Size: 0x7F
	Parameters: 0
	Flags: None
*/
function function_8949fadf()
{
	var_f92a03e7 = function_6ada35ba("t_lift_player_advances", "targetname");
	if(isdefined(var_f92a03e7))
	{
		var_f92a03e7 waittill("hash_4dbf3ae3");
	}
	level thread namespace_2cb3876f::function_a7eac508("sp_lift_player_advances", 64, 64, undefined);
	level.var_1f5f8798 = 1;
}

/*
	Name: function_51da5fc6
	Namespace: namespace_e80bc418
	Checksum: 0xF19DC9D7
	Offset: 0x8F50
	Size: 0x49B
	Parameters: 0
	Flags: None
*/
function function_51da5fc6()
{
	level.var_be31aa9a = function_6ada35ba("freight_lift", "targetname");
	level.var_3dce3f88 = function_9b7fda5e("script_model", level.var_be31aa9a.var_722885f3);
	level.var_be31aa9a function_37f7858a(level.var_3dce3f88);
	level.var_be31aa9a function_b0b70abb(1);
	level.var_be31aa9a thread function_f2f20b35();
	namespace_80983c42::function_80983c42("light_exploder_lift_inside");
	function_dfbe3c61();
	var_da1cc39e = function_99201f25("sp_lift_reinforcements", "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_da1cc39e.size; var_c957f6b6++)
	{
		var_da1cc39e[var_c957f6b6] namespace_2f06d687::function_994832bd(&function_38a8e28b);
		var_da1cc39e[var_c957f6b6] namespace_2f06d687::function_9b7fda5e();
	}
	var_a86d2888 = (0, 0, -1);
	var_2a97d9fd = 354;
	var_a3adc876 = 5;
	var_519d9482 = level.var_be31aa9a.var_722885f3 + var_a86d2888 * var_2a97d9fd;
	level.var_3dce3f88 function_a96a2721(var_519d9482, var_a3adc876);
	level.var_be31aa9a = function_6ada35ba("freight_lift", "targetname");
	level.var_be31aa9a function_921a1574("evt_freight_lift_start");
	var_7b90133a = function_9b7fda5e("script_origin", level.var_be31aa9a.var_722885f3);
	var_7b90133a function_37f7858a(level.var_be31aa9a);
	var_7b90133a function_c2931a36("evt_freight_lift_loop");
	level.var_3dce3f88 waittill("hash_a21db68a");
	level.var_3dce3f88 namespace_cc27597::function_c35e6aab("cin_pro_08_01_liftescape_vign_lift_doorsopen", level.var_be31aa9a);
	var_7b90133a function_eaa69754(0.1);
	function_6c1294b8("grenadeAllowRigidBodyPhysics", "0");
	var_95a47cff = 1.5;
	level thread function_45ed0d4b(1, var_95a47cff);
	wait(var_95a47cff + 0.1);
	var_950ed8c6 = function_b4cb3503("n_lift_entrance_begin3", "targetname");
	function_47d28a09(var_950ed8c6);
	level namespace_ad23e503::function_74d6b22f("lift_arrived");
	var_3af498bc = function_fe0cfd2e("nd_exit_lift", "targetname");
	var_e3b635fb = function_99201f25("sp_lift_reinforcements_ai", "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
	{
		var_e3b635fb[var_c957f6b6] thread function_c6db42e4(var_3af498bc[var_c957f6b6]);
	}
	wait(1);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_spotted_more_reinfor_0");
}

/*
	Name: function_c6db42e4
	Namespace: namespace_e80bc418
	Checksum: 0x910488E1
	Offset: 0x93F8
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_c6db42e4(var_22752fde)
{
	self endon("hash_128f8789");
	self namespace_82b91a51::function_4b741fdc();
	self.var_7dfaf62 = 64;
	self function_169cc712(var_22752fde.var_722885f3);
	self waittill("hash_41d1aaf0");
	self.var_7dfaf62 = 1024;
}

/*
	Name: function_38a8e28b
	Namespace: namespace_e80bc418
	Checksum: 0x5F5B4038
	Offset: 0x9478
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_38a8e28b()
{
	self.var_7dfaf62 = 64;
	self.var_37b94263 = 1;
	self namespace_82b91a51::function_958c7633();
}

/*
	Name: function_93c4d161
	Namespace: namespace_e80bc418
	Checksum: 0xFFC41143
	Offset: 0x94B8
	Size: 0x225
	Parameters: 0
	Flags: None
*/
function function_93c4d161()
{
	var_67825717 = function_6ada35ba("info_lift_start_area_volume", "targetname");
	while(1)
	{
		var_b9c84787 = function_b8494651("axis");
		if(var_b9c84787.size < 5)
		{
			var_9fc9c7b7 = namespace_2cb3876f::function_68b8f4af(var_67825717);
			if(var_9fc9c7b7.size < 3)
			{
				break;
			}
		}
		wait(0.05);
	}
	var_d6bb42cf = function_6ada35ba("v_lift_fallback", "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_9fc9c7b7.size; var_c957f6b6++)
	{
		var_f4b1d057 = var_9fc9c7b7[var_c957f6b6];
		var_f4b1d057 function_169cc712(var_d6bb42cf);
	}
	var_d6bb42cf = function_6ada35ba("info_lift_area_volume", "targetname");
	while(1)
	{
		var_9fc9c7b7 = namespace_2cb3876f::function_68b8f4af(var_67825717);
		if(var_9fc9c7b7.size <= 1)
		{
			break;
		}
		wait(0.05);
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < var_9fc9c7b7.size; var_c957f6b6++)
	{
		var_6bfe1586 = function_3f10449f()[0];
		var_e98b4e9b = var_9fc9c7b7[var_c957f6b6];
		var_e98b4e9b.var_7dfaf62 = 200;
		var_e98b4e9b function_169cc712(var_6bfe1586);
	}
}

/*
	Name: function_dfbe3c61
	Namespace: namespace_e80bc418
	Checksum: 0x7B084EC6
	Offset: 0x96E8
	Size: 0x105
	Parameters: 0
	Flags: None
*/
function function_dfbe3c61()
{
	namespace_2cb3876f::function_d1f1caad("entering_lift_fight");
	var_f721d9a5 = GetTime();
	while(1)
	{
		var_60db70fa = GetTime();
		var_5ecb0b6d = var_60db70fa - var_f721d9a5 / 1000;
		if(var_5ecb0b6d > 20)
		{
			var_f92a03e7 = function_6ada35ba("t_lift_reinforcements", "targetname");
			if(!isdefined(var_f92a03e7))
			{
				break;
			}
			var_f04bd8f5 = namespace_2cb3876f::function_609c412a("info_lift_area_volume", 0);
			if(var_f04bd8f5 < 3)
			{
				break;
			}
		}
		wait(0.05);
	}
	level notify("hash_631a1949");
}

/*
	Name: function_f2f20b35
	Namespace: namespace_e80bc418
	Checksum: 0x5FAFE553
	Offset: 0x97F8
	Size: 0x303
	Parameters: 0
	Flags: None
*/
function function_f2f20b35()
{
	var_dda0086b = function_6ada35ba("probe_lift", "targetname");
	var_dda0086b function_37f7858a(self);
	var_62873ca1 = function_6ada35ba("light_lift", "targetname");
	var_62873ca1 function_37f7858a(self);
	var_51875481 = function_99201f25("light_lift_02", "targetname");
	foreach(var_7c14d90b in var_51875481)
	{
		var_7c14d90b function_37f7858a(self);
	}
	var_51875481 = function_99201f25("light_lift_03", "targetname");
	foreach(var_7c14d90b in var_51875481)
	{
		var_7c14d90b function_37f7858a(self);
	}
	var_51875481 = function_99201f25("light_lift_panel_anim01", "targetname");
	foreach(var_7c14d90b in var_51875481)
	{
		var_7c14d90b function_37f7858a(self);
	}
	var_62873ca1 = function_6ada35ba("light_lift_panel_anim02", "targetname");
	var_62873ca1 function_37f7858a(self);
	level waittill("hash_a1a67fd8");
	namespace_80983c42::function_80983c42("light_lift_panel_green");
}

/*
	Name: function_45ed0d4b
	Namespace: namespace_e80bc418
	Checksum: 0x79CF6136
	Offset: 0x9B08
	Size: 0x31B
	Parameters: 2
	Flags: None
*/
function function_45ed0d4b(var_7b386e04, var_a3adc876)
{
	var_507d66a5 = function_6ada35ba("lift_door_top", "targetname");
	var_3d3eb4dd = function_6ada35ba("lift_door_bottom", "targetname");
	var_766fbf83 = (0, 0, 1);
	var_cbe6253d = 100;
	if(var_7b386e04)
	{
		if(level.var_1dd14818 == 1)
		{
			return;
		}
		var_20d952c8 = var_507d66a5.var_722885f3 + var_766fbf83 * var_cbe6253d;
		var_507d66a5 function_a96a2721(var_20d952c8, var_a3adc876);
		var_20d952c8 = var_3d3eb4dd.var_722885f3 + var_766fbf83 * var_cbe6253d * -1;
		var_3d3eb4dd function_a96a2721(var_20d952c8, var_a3adc876);
		level.var_1dd14818 = 1;
	}
	else if(level.var_1dd14818 == 0)
	{
		return;
	}
	var_20d952c8 = var_507d66a5.var_722885f3 + var_766fbf83 * var_cbe6253d * -1;
	var_507d66a5 function_a96a2721(var_20d952c8, var_a3adc876);
	var_20d952c8 = var_3d3eb4dd.var_722885f3 + var_766fbf83 * var_cbe6253d;
	var_3d3eb4dd function_a96a2721(var_20d952c8, var_a3adc876);
	level.var_1dd14818 = 0;
	var_3d3eb4dd function_921a1574("evt_freight_elev_door_start");
	var_cc8ae729 = function_9b7fda5e("script_origin", var_3d3eb4dd.var_722885f3);
	var_cc8ae729 function_37f7858a(var_3d3eb4dd);
	var_cc8ae729 function_c2931a36("evt_freight_elev_door_loop");
	wait(var_a3adc876);
	var_3d3eb4dd function_921a1574("evt_freight_elev_door_stop");
	var_cc8ae729 function_eaa69754(0.1);
	if(var_7b386e04)
	{
		level.var_3dce3f88 namespace_cc27597::function_43718187("cin_pro_08_01_liftescape_vign_lift_doorsopen", level.var_be31aa9a);
	}
	else
	{
		level.var_3dce3f88 namespace_cc27597::function_43718187("cin_pro_08_01_liftescape_vign_lift_doorsclose", level.var_be31aa9a);
	}
}

/*
	Name: function_5517d018
	Namespace: namespace_e80bc418
	Checksum: 0x8BC0C0C6
	Offset: 0x9E30
	Size: 0x36B
	Parameters: 0
	Flags: None
*/
function function_5517d018()
{
	var_f92a03e7 = function_6ada35ba("crane_damage_trigger", "targetname");
	var_f92a03e7 function_175e6b8e(0);
	namespace_2cb3876f::function_d1f1caad("t_intro_guys_on_bridge");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_ceiling_underground_crane_bundle", "scriptbundlename");
	level waittill("hash_231a1398");
	level namespace_ad23e503::function_74d6b22f("crane_in_position");
	var_f92a03e7 function_175e6b8e(1);
	var_f92a03e7 waittill("hash_4dbf3ae3", var_65669d7b);
	var_f92a03e7 function_dc8c8404();
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_ceiling_underground_crane_shot_bundle");
	level waittill("hash_1cda5581");
	level namespace_ad23e503::function_74d6b22f("crane_dropped");
	var_e3b635fb = function_b8494651("axis");
	var_67825717 = function_6ada35ba("info_crane_drop", "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
	{
		if(function_5b49d38c(var_e3b635fb[var_c957f6b6]) && var_e3b635fb[var_c957f6b6] function_32fa5072(var_67825717))
		{
			var_e3b635fb[var_c957f6b6] function_2992720d();
			if(function_65f192a6(var_65669d7b))
			{
				namespace_61c634f2::function_d248b92b(var_65669d7b);
			}
		}
	}
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(var_5dc5e20a function_32fa5072(var_67825717))
		{
			var_5dc5e20a function_c3945cd5(500, var_67825717.var_722885f3);
		}
	}
	var_67825717 function_dc8c8404();
	var_2fd07777 = function_6ada35ba("lifttunnel_pipecollision", "targetname");
	var_2fd07777 function_8bdea13c(-80, 0.05);
}

/*
	Name: function_6fabe3da
	Namespace: namespace_e80bc418
	Checksum: 0x1E70B52C
	Offset: 0xA1A8
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_6fabe3da()
{
	namespace_4dbf3ae3::function_1ab5ebec("entering_lift_fight");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_that_s_our_exit_car_0");
	namespace_2cb3876f::function_520255e3("t_lift_reinforcements", 60);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_elevator_s_right_the_0");
	level waittill("hash_3e51db3e");
	level thread namespace_21b2c1f2::function_9f50ebc2();
	level thread namespace_21b2c1f2::function_c4c71c7();
}

/*
	Name: function_6f04ae03
	Namespace: namespace_e80bc418
	Checksum: 0xF2AFF467
	Offset: 0xA268
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_6f04ae03()
{
	level endon("hash_3e51db3e");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_let_s_move_get_to_t_0");
	wait(15);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_keep_pushing_forward_0");
}

