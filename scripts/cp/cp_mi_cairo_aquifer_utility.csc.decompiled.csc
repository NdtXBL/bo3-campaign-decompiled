#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\duplicaterender_mgr;
#using scripts\shared\enemy_highlight;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\postfx_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_786319bb;

/*
	Name: function_2dc19561
	Namespace: namespace_786319bb
	Checksum: 0xA2F97BB6
	Offset: 0xD80
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("aquifer_util", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_786319bb
	Checksum: 0xC30BE9CF
	Offset: 0xDC0
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_96fa87af::function_74adaefb("veh_bo3_mil_vtol_fighter_player_agile", &function_14bb5165);
	namespace_96fa87af::function_74adaefb("veh_bo3_mil_vtol_fighter_dogfight_enemy", &function_d996daca);
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	function_2ea898a8();
	namespace_1c38f9cf::function_c20cc247("weakpoint_keyline", 100, "weakpoint_keyline_show_z", "weakpoint_keyline_hide_z", 2, "mc/hud_outline_model_z_orange", 1);
	thread function_3e82b262();
	thread function_8f62f317();
}

/*
	Name: function_2ea898a8
	Namespace: namespace_786319bb
	Checksum: 0xEB7A95FD
	Offset: 0xEB0
	Size: 0x67B
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("toplayer", "play_body_loop", 1, 1, "int", &function_d00289ef, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "player_snow_fx", 1, 1, "int", &function_e9ccaf60, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "player_bubbles_fx", 1, 1, "int", &function_a0fd353d, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "player_dust_fx", 1, 1, "int", &function_779fd2e3, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "water_motes", 1, 1, "int", &function_5c9a971, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "frost_post_fx", 1, 1, "int", &function_d823aea7, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "splash_post_fx", 1, 1, "int", &function_90020e42, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "highlight_ai", 1, 1, "int", &function_cd1f36a6, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "robot_bubbles_fx", 1, 1, "int", &function_a57705db, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "kane_bubbles_fx", 1, 1, "int", &function_a57705db, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "toggle_enemy_highlight", 1, 1, "int", &function_af7432f, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "vtol_dogfighting", 1, 1, "int", &function_1f92134d, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "vtol_show_damage_stages", 1, 1, "int", &function_ae9fc4ae, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "vtol_canopy_state", 1, 1, "int", &function_4aa99a51, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "vtol_engines_state", 1, 1, "int", &function_c289f3ee, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "vtol_enable_wash_fx", 1, 1, "int", &function_efde18b9, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "vtol_damage_state", 1, 2, "int", &function_31d10546, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "vtol_set_active_landing_zone_num", 1, 4, "int", &function_791c5d3e, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "vtol_set_missile_lock_percent", 1, 8, "float", &function_58e7b684, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "vtol_show_missile_lock", 1, 1, "int", &function_ec8280b9, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "vtol_screen_shake", 1, 1, "int", &function_51990240, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "toggle_fog_banks", 1, 1, "int", &function_34474782, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "toggle_pbg_banks", 1, 1, "int", &function_5240a6bb, 0, 0);
}

/*
	Name: function_aebcf025
	Namespace: namespace_786319bb
	Checksum: 0x8157CC63
	Offset: 0x1538
	Size: 0x219
	Parameters: 1
	Flags: None
*/
function function_aebcf025(var_ec74b091)
{
	self endon("hash_643a7daf");
	if(!self function_b80a9a41())
	{
		return;
	}
	if(!isdefined(self function_8448e0ee()))
	{
		return;
	}
	if(self function_8448e0ee() != var_ec74b091)
	{
		return;
	}
	self thread function_8a190709();
	while(isdefined(self) && function_5b49d38c(self))
	{
		var_c82fd082 = function_c8c9e5b4(self);
		if(!isdefined(var_c82fd082))
		{
			level thread function_256950b0(var_ec74b091);
			self waittill("hash_80eb92fc", var_c82fd082);
			if(!isdefined(var_c82fd082))
			{
				continue;
			}
		}
		self.var_96fa87af = var_c82fd082;
		self thread function_1a818d12(var_ec74b091);
		self thread function_63bf76ee(var_ec74b091);
		function_ab113c2(var_ec74b091, 6);
		function_1b85bd1e(var_ec74b091, 8);
		function_23e91425("aquifer_cockpit", "active");
		self waittill("hash_133288a0");
		self.var_96fa87af = undefined;
		level thread function_256950b0(var_ec74b091);
		function_23e91425("aquifer_cockpit", "");
		if(isdefined(self.var_ae2d4705))
		{
			self function_eaa69754(self.var_ae2d4705);
			self.var_ae2d4705 = undefined;
		}
	}
}

/*
	Name: function_256950b0
	Namespace: namespace_786319bb
	Checksum: 0x59F0FF7D
	Offset: 0x1760
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_256950b0(var_ec74b091)
{
	function_ab113c2(var_ec74b091, 1);
	function_1b85bd1e(var_ec74b091, 0);
}

/*
	Name: function_8f62f317
	Namespace: namespace_786319bb
	Checksum: 0xAF702099
	Offset: 0x17A8
	Size: 0x125
	Parameters: 0
	Flags: None
*/
function function_8f62f317()
{
	while(1)
	{
		level waittill("hash_2693b45");
		while(function_d4b4bd92().size == 0)
		{
			wait(0.016);
		}
		foreach(var_5dc5e20a in function_d4b4bd92())
		{
			var_c82fd082 = function_c8c9e5b4(var_5dc5e20a);
			if(isdefined(var_c82fd082))
			{
				var_ec74b091 = var_5dc5e20a function_8448e0ee();
				var_5dc5e20a.var_96fa87af = var_c82fd082;
			}
		}
	}
}

/*
	Name: function_8a190709
	Namespace: namespace_786319bb
	Checksum: 0x101C99EE
	Offset: 0x18D8
	Size: 0x75
	Parameters: 0
	Flags: None
*/
function function_8a190709()
{
	self notify("hash_8a190709");
	self endon("hash_8a190709");
	self endon("hash_643a7daf");
	self waittill("hash_128f8789");
	if(isdefined(self) && isdefined(self.var_ae2d4705))
	{
		self function_eaa69754(self.var_ae2d4705);
		self.var_ae2d4705 = undefined;
	}
}

/*
	Name: function_b69b9863
	Namespace: namespace_786319bb
	Checksum: 0xABD13A8C
	Offset: 0x1958
	Size: 0x8B
	Parameters: 5
	Flags: None
*/
function function_b69b9863(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7)
{
	if(!self function_b80a9a41())
	{
		return 0;
	}
	if(!isdefined(self function_8448e0ee()))
	{
		return 0;
	}
	if(self function_8448e0ee() != var_ec74b091)
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_d00289ef
	Namespace: namespace_786319bb
	Checksum: 0x90376DB4
	Offset: 0x19F0
	Size: 0x93
	Parameters: 7
	Flags: None
*/
function function_d00289ef(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_8d0de8f7)
	{
		return;
	}
	var_14b42b8a = function_6ada35ba(var_ec74b091, "igc_kane_khalil_1", "targetname");
	var_14b42b8a thread namespace_cc27597::function_43718187("cin_aqu_03_20_water_room_body_loop");
}

/*
	Name: function_cd1f36a6
	Namespace: namespace_786319bb
	Checksum: 0x6D6C7CD8
	Offset: 0x1A90
	Size: 0x12D
	Parameters: 7
	Flags: None
*/
function function_cd1f36a6(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_ade4d29d == var_9193c732 && !var_8d0de8f7)
	{
		return;
	}
	if(!self function_b80a9a41())
	{
		return;
	}
	if(!isdefined(self function_8448e0ee()))
	{
		return;
	}
	if(self function_8448e0ee() != var_ec74b091)
	{
		return;
	}
	switch(var_9193c732)
	{
		case 0:
		{
			self thread namespace_68dfcbbe::function_5f9074e0(var_ec74b091);
			break;
		}
		case 1:
		{
			self thread namespace_68dfcbbe::function_a2489af5(var_ec74b091, "compassping_enemysatellite_diamond", 64, 1, 2, 1, "compassping_friendly");
			break;
		}
	}
}

/*
	Name: function_5c9a971
	Namespace: namespace_786319bb
	Checksum: 0x1788D9D1
	Offset: 0x1BC8
	Size: 0xFB
	Parameters: 7
	Flags: None
*/
function function_5c9a971(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!self function_b80a9a41())
	{
		return;
	}
	if(!isdefined(self function_8448e0ee()))
	{
		return;
	}
	if(self function_8448e0ee() != var_ec74b091)
	{
		return;
	}
	if(var_9193c732 != 0)
	{
		self.var_8e8c7340 = function_2e9c26ef(var_ec74b091, "water/fx_underwater_debris_player_loop", (0, 0, 0), (1, 0, 0), (0, 0, 1));
	}
	else if(isdefined(self.var_8e8c7340))
	{
		function_28573e36(var_ec74b091, self.var_8e8c7340, 1);
	}
}

/*
	Name: function_779fd2e3
	Namespace: namespace_786319bb
	Checksum: 0x2F6A810F
	Offset: 0x1CD0
	Size: 0x145
	Parameters: 7
	Flags: None
*/
function function_779fd2e3(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!self function_b80a9a41())
	{
		return;
	}
	if(!isdefined(self function_8448e0ee()))
	{
		return;
	}
	if(self function_8448e0ee() != var_ec74b091)
	{
		return;
	}
	if(var_9193c732 == 1)
	{
		if(isdefined(self.var_766e336e))
		{
			function_28573e36(var_ec74b091, self.var_766e336e, 1);
		}
		self.var_766e336e = function_2e9c26ef(var_ec74b091, "dirt/fx_dust_sand_aquifer_player_loop", (0, 0, 0), (1, 0, 0), (0, 0, 1));
	}
	else
	{
		self notify("hash_1f63111d");
		if(isdefined(self.var_766e336e))
		{
			function_28573e36(var_ec74b091, self.var_766e336e, 1);
			self.var_766e336e = undefined;
		}
	}
}

/*
	Name: function_d823aea7
	Namespace: namespace_786319bb
	Checksum: 0x88805BDD
	Offset: 0x1E20
	Size: 0x7B
	Parameters: 7
	Flags: None
*/
function function_d823aea7(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self thread namespace_bdde9225::function_bca12b73("pstfx_frost_loop");
	}
	else
	{
		self thread namespace_bdde9225::function_51f910fd();
	}
}

/*
	Name: function_90020e42
	Namespace: namespace_786319bb
	Checksum: 0xD0A80379
	Offset: 0x1EA8
	Size: 0x7B
	Parameters: 7
	Flags: None
*/
function function_90020e42(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self thread namespace_bdde9225::function_bca12b73("pstfx_water_t_out");
	}
	else
	{
		self thread namespace_bdde9225::function_51f910fd();
	}
}

/*
	Name: function_e9ccaf60
	Namespace: namespace_786319bb
	Checksum: 0x8EFDDAEB
	Offset: 0x1F30
	Size: 0x17D
	Parameters: 7
	Flags: None
*/
function function_e9ccaf60(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!self function_b80a9a41())
	{
		return;
	}
	if(!isdefined(self function_8448e0ee()))
	{
		return;
	}
	if(self function_8448e0ee() != var_ec74b091)
	{
		return;
	}
	if(var_9193c732 == 1)
	{
		if(isdefined(self.var_28791de7))
		{
			function_28573e36(var_ec74b091, self.var_28791de7, 1);
		}
		function_4c5bfec4(var_ec74b091, 2);
		self.var_28791de7 = function_da6acfd2(var_ec74b091, "snow/fx_snow_player_aqu_loop", self, "tag_origin");
	}
	else
	{
		function_4c5bfec4(var_ec74b091, 1);
		self notify("hash_822eb8e8");
		if(isdefined(self.var_28791de7))
		{
			function_28573e36(var_ec74b091, self.var_28791de7, 1);
			self.var_28791de7 = undefined;
		}
	}
}

/*
	Name: function_a0fd353d
	Namespace: namespace_786319bb
	Checksum: 0x2167820D
	Offset: 0x20B8
	Size: 0x145
	Parameters: 7
	Flags: None
*/
function function_a0fd353d(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!self function_b80a9a41())
	{
		return;
	}
	if(!isdefined(self function_8448e0ee()))
	{
		return;
	}
	if(self function_8448e0ee() != var_ec74b091)
	{
		return;
	}
	if(var_9193c732 == 1)
	{
		if(isdefined(self.var_8f4881d8))
		{
			function_28573e36(var_ec74b091, self.var_8f4881d8, 1);
		}
		self.var_8f4881d8 = function_2e9c26ef(var_ec74b091, "player/fx_plyr_swim_bubbles_body", (0, 0, 0), (1, 0, 0), (0, 0, 1));
	}
	else
	{
		self notify("hash_6b998eb7");
		if(isdefined(self.var_8f4881d8))
		{
			function_28573e36(var_ec74b091, self.var_8f4881d8, 1);
			self.var_8f4881d8 = undefined;
		}
	}
}

/*
	Name: function_a57705db
	Namespace: namespace_786319bb
	Checksum: 0xD2B22413
	Offset: 0x2208
	Size: 0x133
	Parameters: 7
	Flags: None
*/
function function_a57705db(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!self function_b80a9a41())
	{
		return;
	}
	if(!isdefined(self function_8448e0ee()))
	{
		return;
	}
	if(self function_8448e0ee() != var_ec74b091)
	{
		return;
	}
	if(var_9193c732 == 1)
	{
		if(isdefined(self.var_8f4881d8))
		{
			function_d555a113(var_ec74b091, self.var_8f4881d8);
		}
		self.var_ac46de76 = function_da6acfd2(var_ec74b091, "player/fx_plyr_swim_bubbles_body", self, "tag_aim");
	}
	else
	{
		self notify("hash_fcaf4326");
		if(isdefined(self.var_8f4881d8))
		{
			function_d555a113(var_ec74b091, self.var_8f4881d8);
		}
	}
}

/*
	Name: function_48637c84
	Namespace: namespace_786319bb
	Checksum: 0x41A167E
	Offset: 0x2348
	Size: 0xED
	Parameters: 7
	Flags: None
*/
function function_48637c84(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!self function_b80a9a41())
	{
		return;
	}
	if(!isdefined(self function_8448e0ee()))
	{
		return;
	}
	if(self function_8448e0ee() != var_ec74b091)
	{
		return;
	}
	switch(var_9193c732)
	{
		case 0:
		{
			function_aa332733("r_dof_aperture_override", 1);
			break;
		}
		case 1:
		{
			function_aa332733("r_dof_aperture_override", 50);
			break;
		}
	}
}

/*
	Name: function_1122caac
	Namespace: namespace_786319bb
	Checksum: 0xA601EC69
	Offset: 0x2440
	Size: 0x16D
	Parameters: 7
	Flags: None
*/
function function_1122caac(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	/#
		if(!self function_b80a9a41())
		{
			return;
		}
		if(!isdefined(self function_8448e0ee()))
		{
			return;
		}
		if(self function_8448e0ee() != var_ec74b091)
		{
			return;
		}
		switch(var_9193c732)
		{
			case 0:
			{
				function_aa332733("Dev Block strings are not supported", 40);
				function_aa332733("Dev Block strings are not supported", 50);
				function_aa332733("Dev Block strings are not supported", 6000);
				function_aa332733("Dev Block strings are not supported", 10000);
				break;
			}
			case 1:
			{
				function_aa332733("Dev Block strings are not supported", 50);
				function_aa332733("Dev Block strings are not supported", 150);
				break;
			}
		}
	#/
}

/*
	Name: function_31d10546
	Namespace: namespace_786319bb
	Checksum: 0x7D5B6160
	Offset: 0x25B8
	Size: 0x143
	Parameters: 7
	Flags: None
*/
function function_31d10546(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self notify("hash_31d10546");
	self endon("hash_31d10546");
	var_fdd38a76 = function_79c174a3(var_ec74b091);
	var_7e596503 = function_c8c9e5b4(var_fdd38a76);
	while(!isdefined(var_7e596503) && isdefined(var_fdd38a76) && function_5b49d38c(var_fdd38a76))
	{
		wait(0.05);
		if(isdefined(var_fdd38a76))
		{
			var_7e596503 = function_c8c9e5b4(var_fdd38a76);
		}
	}
	if(!isdefined(var_7e596503) || !isdefined(var_fdd38a76) || self != var_7e596503)
	{
		return;
	}
	var_fdd38a76.var_d7bfa708 = var_9193c732;
	var_fdd38a76 notify("hash_751c841");
}

/*
	Name: function_1f92134d
	Namespace: namespace_786319bb
	Checksum: 0xE2BBB9F4
	Offset: 0x2708
	Size: 0x285
	Parameters: 7
	Flags: None
*/
function function_1f92134d(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_7e596503 = function_c8c9e5b4(function_79c174a3(var_ec74b091));
	if(!var_703bf65c && !var_8d0de8f7 && var_ade4d29d == var_9193c732)
	{
		return;
	}
	switch(var_9193c732)
	{
		case 0:
		{
			self.var_3b4d6693 = 0;
			if(isdefined(var_7e596503) && var_7e596503 == self)
			{
				function_921a1574(var_ec74b091, "veh_bullshark_dogfight_exit");
				if(isdefined(self.var_163163d4))
				{
					self function_eaa69754(self.var_163163d4);
					self.var_163163d4 = undefined;
				}
				if(isdefined(self.var_144b2dd7))
				{
					self function_eaa69754(self.var_144b2dd7);
					self.var_144b2dd7 = undefined;
				}
				self notify("hash_71c3f064");
			}
			else
			{
				self.var_58f8ead2 = 0;
			}
			break;
		}
		case 1:
		{
			self.var_3b4d6693 = 1;
			if(isdefined(var_7e596503) && var_7e596503 == self)
			{
				function_921a1574(var_ec74b091, "veh_bullshark_dogfight_enter");
				self.var_163163d4 = self function_c2931a36("veh_bullshark_dogfight_maneuvers");
				self.var_144b2dd7 = self function_c2931a36("veh_bullshark_dogfight_turbulence");
				self function_98e1d594("veh_bullshark_dogfight_maneuvers", 0.5, 1);
				self function_98e1d594("veh_bullshark_dogfight_turbulence", 0, 1);
			}
			else
			{
				self thread function_5e259b76(var_ec74b091);
			}
			break;
		}
	}
}

/*
	Name: function_ae9fc4ae
	Namespace: namespace_786319bb
	Checksum: 0xADF67F29
	Offset: 0x2998
	Size: 0xB5
	Parameters: 7
	Flags: None
*/
function function_ae9fc4ae(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	switch(var_9193c732)
	{
		case 0:
		{
			self namespace_957e94ce::function_9d134160("show_damage_stages");
			break;
		}
		case 1:
		{
			self namespace_957e94ce::function_74d6b22f("show_damage_stages");
			self thread function_38f84ce8(var_ec74b091);
			break;
		}
	}
}

/*
	Name: function_4aa99a51
	Namespace: namespace_786319bb
	Checksum: 0x674D9F02
	Offset: 0x2A58
	Size: 0x13B
	Parameters: 7
	Flags: None
*/
function function_4aa99a51(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_ade4d29d == var_9193c732 && (!var_8d0de8f7 || var_703bf65c))
	{
		return;
	}
	self function_4f87e1b9(-1);
	var_23b7868d = [];
	var_23b7868d[0] = %v_aqu_vtol_cockpit_close;
	var_23b7868d[1] = %v_aqu_vtol_cockpit_open;
	/#
		namespace_33b293fd::function_a7ee953(var_9193c732 >= 0 && var_9193c732 <= 1);
	#/
	self function_1bf01240(var_23b7868d[var_9193c732], 1, 0, 1);
	self function_1bf01240(var_23b7868d[!var_9193c732], 0, 0, 1);
}

/*
	Name: function_c289f3ee
	Namespace: namespace_786319bb
	Checksum: 0x1AE75320
	Offset: 0x2BA0
	Size: 0x1A3
	Parameters: 7
	Flags: None
*/
function function_c289f3ee(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_ade4d29d == var_9193c732 && (!var_8d0de8f7 || var_703bf65c))
	{
		return;
	}
	self function_4f87e1b9(-1);
	var_23b7868d = [];
	var_23b7868d[0] = %v_aqu_vtol_engine_hover;
	var_23b7868d[1] = %v_aqu_vtol_engine_fly;
	/#
		namespace_33b293fd::function_a7ee953(var_9193c732 >= 0 && var_9193c732 <= 1);
	#/
	self function_1bf01240(var_23b7868d[var_9193c732], 1, 0, 1);
	self function_1bf01240(var_23b7868d[!var_9193c732], 0, 0, 1);
	if(var_9193c732 == 0)
	{
		self function_1bf01240(%v_aqu_vtol_engine_idle, 1, 0, 1);
	}
	else
	{
		self function_1bf01240(%v_aqu_vtol_engine_idle, 0, 0, 1);
	}
}

/*
	Name: function_7c706c83
	Namespace: namespace_786319bb
	Checksum: 0x89B43415
	Offset: 0x2D50
	Size: 0x9B
	Parameters: 7
	Flags: None
*/
function function_7c706c83(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!self function_b80a9a41())
	{
		return;
	}
	if(!isdefined(self function_8448e0ee()))
	{
		return;
	}
	if(self function_8448e0ee() != var_ec74b091)
	{
		return;
	}
	self.var_443f7e14 = var_9193c732;
}

/*
	Name: function_791c5d3e
	Namespace: namespace_786319bb
	Checksum: 0xD80822CE
	Offset: 0x2DF8
	Size: 0x443
	Parameters: 7
	Flags: None
*/
function function_791c5d3e(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self notify("hash_791c5d3e");
	self endon("hash_791c5d3e");
	var_fdd38a76 = function_79c174a3(var_ec74b091);
	var_7e596503 = function_c8c9e5b4(var_fdd38a76);
	while(!isdefined(var_7e596503) && isdefined(var_fdd38a76) && function_5b49d38c(var_fdd38a76))
	{
		wait(0.05);
		if(isdefined(var_fdd38a76))
		{
			var_7e596503 = function_c8c9e5b4(var_fdd38a76);
		}
	}
	if(!isdefined(var_7e596503) || !isdefined(var_fdd38a76) || self != var_7e596503)
	{
		return;
	}
	if(!isdefined(var_fdd38a76.var_4c67c5eb))
	{
		var_fdd38a76.var_4c67c5eb = [];
	}
	foreach(var_eec37b7b in var_fdd38a76.var_4c67c5eb)
	{
		var_eec37b7b function_400e6e82(var_ec74b091, "vtol_landing_zone");
	}
	var_fdd38a76.var_4c67c5eb = [];
	var_a69db2c4 = [];
	for(var_c957f6b6 = 3; var_c957f6b6 >= 0; var_c957f6b6--)
	{
		var_8e34c2ec = function_aca9299(2, var_c957f6b6);
		if(var_9193c732 >= var_8e34c2ec)
		{
			var_a69db2c4[var_a69db2c4.size] = var_c957f6b6 + 1;
			var_9193c732 = var_9193c732 - var_8e34c2ec;
		}
	}
	var_dda84f1a = function_99201f25(var_ec74b091, "landing_zone", "targetname");
	foreach(var_eec37b7b in var_dda84f1a)
	{
		foreach(var_5e76f0af in var_a69db2c4)
		{
			if(isdefined(var_eec37b7b.var_caae374e) && function_b6b79a0(var_eec37b7b.var_caae374e) == var_5e76f0af)
			{
				namespace_84970cc4::function_69554b3e(var_fdd38a76.var_4c67c5eb, var_eec37b7b, 0);
				var_eec37b7b function_ea0e7704(var_ec74b091, "vtol_landing_zone", "light/fx_beam_vtol_landing_zone", var_eec37b7b.var_722885f3, function_bc7ce905(var_eec37b7b.var_6ab6f4fd), (0, 0, 1));
				break;
			}
		}
	}
}

/*
	Name: function_58e7b684
	Namespace: namespace_786319bb
	Checksum: 0x28635BF9
	Offset: 0x3248
	Size: 0x243
	Parameters: 7
	Flags: None
*/
function function_58e7b684(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self notify("hash_58e7b684");
	self endon("hash_58e7b684");
	var_fdd38a76 = function_79c174a3(var_ec74b091);
	var_7e596503 = function_c8c9e5b4(var_fdd38a76);
	while(!isdefined(var_7e596503) && isdefined(var_fdd38a76) && function_5b49d38c(var_fdd38a76))
	{
		wait(0.05);
		if(isdefined(var_fdd38a76))
		{
			var_7e596503 = function_c8c9e5b4(var_fdd38a76);
		}
	}
	if(!isdefined(var_7e596503) || !isdefined(var_fdd38a76) || self != var_7e596503)
	{
		return;
	}
	if(!isdefined(var_fdd38a76.var_14351725))
	{
		var_fdd38a76.var_14351725 = var_9193c732;
		var_fdd38a76 thread function_4c53e7bf(var_ec74b091);
	}
	if(var_9193c732 < 1 && var_fdd38a76.var_14351725 >= 1)
	{
		if(isdefined(var_fdd38a76.var_ae2d4705))
		{
			var_fdd38a76 function_eaa69754(var_fdd38a76.var_ae2d4705);
			var_fdd38a76.var_ae2d4705 = undefined;
		}
	}
	else if(var_9193c732 >= 1 && var_fdd38a76.var_14351725 < 1)
	{
		var_fdd38a76.var_ae2d4705 = var_fdd38a76 function_c2931a36("veh_bullshark_missile_locked");
	}
	var_fdd38a76.var_14351725 = var_9193c732;
}

/*
	Name: function_ec8280b9
	Namespace: namespace_786319bb
	Checksum: 0x834F1B46
	Offset: 0x3498
	Size: 0x133
	Parameters: 7
	Flags: None
*/
function function_ec8280b9(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self notify("hash_ec8280b9");
	self endon("hash_ec8280b9");
	var_fdd38a76 = function_79c174a3(var_ec74b091);
	var_7e596503 = function_c8c9e5b4(var_fdd38a76);
	while(!isdefined(var_7e596503) && isdefined(var_fdd38a76) && function_5b49d38c(var_fdd38a76))
	{
		wait(0.05);
		if(isdefined(var_fdd38a76))
		{
			var_7e596503 = function_c8c9e5b4(var_fdd38a76);
		}
	}
	if(!isdefined(var_7e596503) || !isdefined(var_fdd38a76) || self != var_7e596503)
	{
		return;
	}
	var_fdd38a76.var_b83262c7 = var_9193c732;
}

/*
	Name: function_51990240
	Namespace: namespace_786319bb
	Checksum: 0x3E3B061A
	Offset: 0x35D8
	Size: 0x239
	Parameters: 7
	Flags: None
*/
function function_51990240(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self notify("hash_51990240");
	self endon("hash_51990240");
	var_fdd38a76 = function_79c174a3(var_ec74b091);
	var_7e596503 = function_c8c9e5b4(var_fdd38a76);
	while(!isdefined(var_7e596503) && isdefined(var_fdd38a76) && function_5b49d38c(var_fdd38a76))
	{
		wait(0.05);
		if(isdefined(var_fdd38a76))
		{
			var_7e596503 = function_c8c9e5b4(var_fdd38a76);
		}
	}
	if(!isdefined(var_7e596503) || !isdefined(var_fdd38a76) || self != var_7e596503)
	{
		return;
	}
	var_5c21ad3d = 0.1;
	if(var_9193c732)
	{
		while(isdefined(self) && isdefined(var_fdd38a76) && (!isdefined(self.var_3b4d6693) && self.var_3b4d6693))
		{
			var_fdd38a76 function_9cf04c2e(var_5c21ad3d, 0.05, var_fdd38a76.var_722885f3, 1000);
			wait(0.05);
		}
		break;
	}
	while(isdefined(self) && var_5c21ad3d >= 0.01 && isdefined(var_fdd38a76) && (!isdefined(self.var_3b4d6693) && self.var_3b4d6693))
	{
		var_fdd38a76 function_9cf04c2e(var_5c21ad3d, 0.05, var_fdd38a76.var_722885f3, 1000);
		wait(0.05);
		var_5c21ad3d = var_5c21ad3d * 0.99;
	}
}

/*
	Name: function_efde18b9
	Namespace: namespace_786319bb
	Checksum: 0xE3FECA1F
	Offset: 0x3820
	Size: 0xCB
	Parameters: 7
	Flags: None
*/
function function_efde18b9(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 0)
	{
		self notify("hash_72fd2c6a");
		if(isdefined(self.var_594d1ec6))
		{
			self.var_594d1ec6 function_400e6e82(var_ec74b091, "wash", 0);
			self.var_594d1ec6 function_dc8c8404();
			self.var_594d1ec6 = undefined;
		}
	}
	else
	{
		self thread function_7946d98(var_ec74b091);
	}
}

/*
	Name: function_7946d98
	Namespace: namespace_786319bb
	Checksum: 0x6058BC5E
	Offset: 0x38F8
	Size: 0x217
	Parameters: 1
	Flags: None
*/
function function_7946d98(var_ec74b091)
{
	self endon("hash_128f8789");
	self endon("hash_72fd2c6a");
	self notify("hash_7946d98");
	self endon("hash_7946d98");
	if(!isdefined(self.var_594d1ec6))
	{
		self.var_594d1ec6 = namespace_82b91a51::function_b9fd52a4(var_ec74b091, "tag_origin", self.var_722885f3);
	}
	while(isdefined(self))
	{
		var_34fb19f = self function_d48f2ab3("tag_driver");
		var_a52faa04 = function_e1dc201c(var_34fb19f, var_34fb19f - VectorScale((0, 0, 1), 300), 0, self);
		if(var_a52faa04["fraction"] == 1 && isdefined(self.var_594d1ec6))
		{
			self.var_594d1ec6 function_400e6e82(var_ec74b091, "wash", 0);
		}
		else if(var_a52faa04["fraction"] < 1)
		{
			self.var_594d1ec6.var_722885f3 = var_a52faa04["position"];
			var_7788a7d = function_bdcdc423(var_a52faa04["normal"]);
			self.var_594d1ec6.var_6ab6f4fd = (0, var_7788a7d[0], 0);
			if(!self.var_594d1ec6 function_766878c8(var_ec74b091, "wash"))
			{
				self.var_594d1ec6 function_88a10e85(var_ec74b091, "wash", "dirt/fx_dust_rotorwash_vtol_loop", "tag_origin");
			}
		}
		wait(0.016);
	}
}

/*
	Name: function_3b907fc
	Namespace: namespace_786319bb
	Checksum: 0xEDA452A4
	Offset: 0x3B18
	Size: 0x393
	Parameters: 1
	Flags: None
*/
function function_3b907fc(var_ec74b091)
{
	var_5f8bd4b9 = "VehicleHUD_VTOL_Target";
	var_535afdd7 = function_e9022fe(var_ec74b091, var_5f8bd4b9);
	if(!isdefined(var_535afdd7))
	{
		self.var_58eaeac1 = function_5307ab20(var_ec74b091, var_5f8bd4b9);
		function_3a9588ea(var_ec74b091, self.var_58eaeac1, "newTarget", 0);
		function_3a9588ea(var_ec74b091, self.var_58eaeac1, "targetWidth", 1280);
		function_3a9588ea(var_ec74b091, self.var_58eaeac1, "targetHeight", 720);
		function_3a9588ea(var_ec74b091, self.var_58eaeac1, "targetX", 0);
		function_3a9588ea(var_ec74b091, self.var_58eaeac1, "targetY", 0);
		function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetAlpha", 0);
		function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetScale", 0);
		function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetRotZ", 0);
		function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetWidth", 192);
		function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetHeight", 192);
		function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetX", 0);
		function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetY", 0);
		function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetLerpTime", 50);
		function_3a9588ea(var_ec74b091, self.var_58eaeac1, "material", "uie_t7_cp_hud_vehicle_vtol_lockoncircle");
		function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetRed", 1);
		function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetGreen", 1);
		function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetBlue", 1);
		function_3a9588ea(var_ec74b091, self.var_58eaeac1, "close_current_menu", 0);
		function_2f6b6a4c(var_ec74b091, self.var_58eaeac1);
	}
	else
	{
		self.var_58eaeac1 = var_535afdd7;
	}
}

/*
	Name: function_1a818d12
	Namespace: namespace_786319bb
	Checksum: 0xC2520E6B
	Offset: 0x3EB8
	Size: 0x14B
	Parameters: 1
	Flags: None
*/
function function_1a818d12(var_ec74b091)
{
	self notify("hash_1a818d12");
	self endon("hash_1a818d12");
	self endon("hash_128f8789");
	self function_3b907fc(var_ec74b091);
	self thread function_d2243c73(var_ec74b091);
	self thread function_21e63f39(var_ec74b091);
	self thread function_11381ece(var_ec74b091);
	var_bc5cda7b = self namespace_82b91a51::function_45ce26d("exit_vehicle");
	if(isdefined(self))
	{
		self function_3b907fc(var_ec74b091);
		function_3a9588ea(var_ec74b091, self.var_58eaeac1, "close_current_menu", 1);
		wait(0.75);
		self function_3b907fc(var_ec74b091);
		function_2b74b70a(var_ec74b091, self.var_58eaeac1);
	}
}

/*
	Name: function_11381ece
	Namespace: namespace_786319bb
	Checksum: 0x61B38AA1
	Offset: 0x4010
	Size: 0x113
	Parameters: 1
	Flags: None
*/
function function_11381ece(var_ec74b091)
{
	self notify("hash_11381ece");
	self endon("hash_11381ece");
	self endon("hash_133288a0");
	self endon("hash_128f8789");
	while(isdefined(self) && function_5b49d38c(self))
	{
		var_d87d3f09 = self function_21c55373();
		if(var_d87d3f09.size > 0 && (!isdefined(self.var_34a199f1) || var_d87d3f09[0] != self.var_34a199f1))
		{
			self.var_34a199f1 = var_d87d3f09[0];
			self notify("hash_6c567715");
		}
		else if(var_d87d3f09.size == 0 && isdefined(self.var_34a199f1))
		{
			self.var_34a199f1 = undefined;
			self notify("hash_6c567715");
		}
		wait(0.016);
	}
}

/*
	Name: function_d2243c73
	Namespace: namespace_786319bb
	Checksum: 0xB32EF818
	Offset: 0x4130
	Size: 0x463
	Parameters: 1
	Flags: None
*/
function function_d2243c73(var_ec74b091)
{
	self notify("hash_d2243c73");
	self endon("hash_d2243c73");
	self endon("hash_133288a0");
	self endon("hash_128f8789");
	while(isdefined(self) && function_5b49d38c(self))
	{
		self waittill("hash_6c567715");
		if(!isdefined(self))
		{
			return;
		}
		if(isdefined(self.var_34a199f1))
		{
			var_cff9a482 = self.var_34a199f1 function_d48f2ab3("tag_body");
			if(!isdefined(var_cff9a482))
			{
				var_cff9a482 = self.var_34a199f1.var_722885f3;
			}
			self.var_34a199f1.var_e7323f20 = function_95186518(var_ec74b091, var_cff9a482);
		}
		while(isdefined(self) && isdefined(self.var_34a199f1) && function_5b49d38c(self.var_34a199f1) && (self.var_34a199f1.var_e7323f20[0] < 128 || self.var_34a199f1.var_e7323f20[0] > 1152 || self.var_34a199f1.var_e7323f20[1] < 72 || self.var_34a199f1.var_e7323f20[2] > 648))
		{
			var_cff9a482 = self.var_34a199f1 function_d48f2ab3("tag_body");
			if(!isdefined(var_cff9a482))
			{
				var_cff9a482 = self.var_34a199f1.var_722885f3;
			}
			self.var_34a199f1.var_e7323f20 = function_95186518(var_ec74b091, var_cff9a482);
			wait(0.016);
		}
		if(!isdefined(self))
		{
			return;
		}
		self function_3b907fc(var_ec74b091);
		function_3a9588ea(var_ec74b091, self.var_58eaeac1, "newTarget", 1);
		while(isdefined(self) && isdefined(self.var_34a199f1) && isdefined(self.var_34a199f1.var_e7323f20) && function_5b49d38c(self.var_34a199f1) && !self.var_34a199f1 function_ee1f5a49())
		{
			var_cff9a482 = self.var_34a199f1 function_d48f2ab3("tag_body");
			if(!isdefined(var_cff9a482))
			{
				var_cff9a482 = self.var_34a199f1.var_722885f3;
			}
			self.var_34a199f1.var_e7323f20 = function_95186518(var_ec74b091, var_cff9a482);
			self function_3b907fc(var_ec74b091);
			function_3a9588ea(var_ec74b091, self.var_58eaeac1, "targetX", self.var_34a199f1.var_e7323f20[0]);
			function_3a9588ea(var_ec74b091, self.var_58eaeac1, "targetY", self.var_34a199f1.var_e7323f20[1]);
			wait(0.016);
		}
		if(!isdefined(self))
		{
			return;
		}
		self function_3b907fc(var_ec74b091);
		function_3a9588ea(var_ec74b091, self.var_58eaeac1, "newTarget", 0);
	}
	self function_3b907fc(var_ec74b091);
	function_3a9588ea(var_ec74b091, self.var_58eaeac1, "newTarget", 0);
}

/*
	Name: function_21e63f39
	Namespace: namespace_786319bb
	Checksum: 0x55D07B42
	Offset: 0x45A0
	Size: 0xA2F
	Parameters: 1
	Flags: None
*/
function function_21e63f39(var_ec74b091)
{
	self notify("hash_29a67729");
	self endon("hash_29a67729");
	self endon("hash_133288a0");
	self endon("hash_128f8789");
	var_cbeff69a = 162.5;
	var_9f1cc18b = 0;
	var_beb0eb1e = 0.6;
	var_e64062c8 = 0.3;
	var_bcd414e9 = 540;
	var_428be7c0 = 192;
	var_9f14e241 = function_43074546(var_ec74b091);
	var_e363b850 = 360;
	var_d0bae973 = var_e363b850 * var_9f14e241;
	while(isdefined(self) && function_5b49d38c(self))
	{
		self waittill("hash_6c567715");
		while(isdefined(self) && (!isdefined(self.var_b83262c7) && self.var_b83262c7))
		{
			wait(0.016);
		}
		while(isdefined(self) && isdefined(self.var_34a199f1) && function_5b49d38c(self.var_34a199f1) && !self.var_34a199f1 function_ee1f5a49())
		{
			self function_3b907fc(var_ec74b091);
			if(isdefined(self.var_14351725))
			{
				var_cff9a482 = self.var_34a199f1 function_d48f2ab3("tag_body");
				if(!isdefined(var_cff9a482))
				{
					var_cff9a482 = self.var_34a199f1.var_722885f3;
				}
				self.var_34a199f1.var_e7323f20 = function_95186518(var_ec74b091, var_cff9a482);
				var_5c21ad3d = var_e64062c8 + var_beb0eb1e - var_e64062c8 * 1 - self.var_14351725;
				var_a4e8111c = (self.var_34a199f1.var_e7323f20[0] - var_d0bae973, self.var_34a199f1.var_e7323f20[1] - var_e363b850, 0);
				var_2a97d9fd = function_73b84f4d(var_a4e8111c);
				if(var_2a97d9fd > var_cbeff69a - var_428be7c0 * 0.5 * var_5c21ad3d)
				{
					var_bd00ff2a = function_f679a325(var_a4e8111c);
					var_a4e8111c = var_bd00ff2a * var_cbeff69a - var_428be7c0 * 0.5 * var_5c21ad3d;
				}
				function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetLerpTime", 50);
				function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetX", var_d0bae973 + var_a4e8111c[0]);
				function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetY", var_e363b850 + var_a4e8111c[1]);
				if(self.var_14351725 >= 1)
				{
					function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetRotZ", self function_43cc4179() % 1000 / 1000 * var_bcd414e9);
					function_3a9588ea(var_ec74b091, self.var_58eaeac1, "material", "uie_t7_cp_hud_vehicle_vtol_lockoncircle");
					function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetAlpha", 1);
					function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetScale", var_e64062c8);
					function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetRed", 1);
					function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetGreen", 0);
					function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetBlue", 0);
				}
				else
				{
					function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetRotZ", self.var_14351725 * var_bcd414e9);
					function_3a9588ea(var_ec74b091, self.var_58eaeac1, "material", "uie_t7_cp_hud_vehicle_vtol_lockoncircle");
					function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetAlpha", 0.33);
					function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetScale", var_5c21ad3d);
					function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetRed", 1);
					function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetGreen", 1);
					function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetBlue", 1);
				}
			}
			else
			{
				function_3a9588ea(var_ec74b091, self.var_58eaeac1, "material", "uie_t7_cp_hud_vehicle_vtol_lockoncircle");
				function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetAlpha", 0.33);
				function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetScale", var_beb0eb1e);
				function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetLerpTime", 250);
				function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetX", var_d0bae973);
				function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetY", var_e363b850);
				function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetRed", 1);
				function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetGreen", 1);
				function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetBlue", 1);
			}
			wait(0.016);
		}
		if(!isdefined(self))
		{
			return;
		}
		self function_3b907fc(var_ec74b091);
		function_3a9588ea(var_ec74b091, self.var_58eaeac1, "material", "uie_t7_cp_hud_vehicle_vtol_lockoncircle");
		function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetAlpha", 0);
		function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetScale", var_beb0eb1e);
		function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetRotZ", 0);
		function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetLerpTime", 250);
		function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetX", var_d0bae973);
		function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetY", var_e363b850);
		function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetRed", 1);
		function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetGreen", 1);
		function_3a9588ea(var_ec74b091, self.var_58eaeac1, "missileLockTargetBlue", 1);
	}
}

/*
	Name: function_458ed430
	Namespace: namespace_786319bb
	Checksum: 0x2B83CCDD
	Offset: 0x4FD8
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_458ed430()
{
	var_50e4abf2 = [];
	var_50e4abf2[var_50e4abf2.size] = "tag_fx_cockpit_1";
	var_50e4abf2[var_50e4abf2.size] = "tag_fx_cockpit_2";
	var_50e4abf2[var_50e4abf2.size] = "tag_fx_cockpit_3";
	var_50e4abf2[var_50e4abf2.size] = "tag_fx_cockpit_4";
	var_50e4abf2[var_50e4abf2.size] = "tag_fx_cockpit_5";
	var_50e4abf2[var_50e4abf2.size] = "tag_fx_cockpit_6";
	var_50e4abf2[var_50e4abf2.size] = "tag_fx_cockpit_7";
	return namespace_84970cc4::function_8332f7f6(var_50e4abf2);
}

/*
	Name: function_63bf76ee
	Namespace: namespace_786319bb
	Checksum: 0xD1AD0251
	Offset: 0x5098
	Size: 0x40F
	Parameters: 1
	Flags: None
*/
function function_63bf76ee(var_ec74b091)
{
	self notify("hash_63bf76ee");
	self endon("hash_63bf76ee");
	self endon("hash_643a7daf");
	var_7276535a = 2;
	self.var_d7bfa708 = 0;
	var_614619a5 = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < var_7276535a; var_c957f6b6++)
	{
		var_614619a5[var_c957f6b6] = [];
	}
	var_50e4abf2 = function_458ed430();
	var_59fc256 = [];
	var_59fc256[var_59fc256.size] = 3;
	var_59fc256[var_59fc256.size] = 3;
	while(isdefined(self) && isdefined(self.var_96fa87af))
	{
		self waittill("hash_751c841");
		if(!isdefined(self) || !isdefined(self.var_96fa87af) || !isdefined(self.var_d7bfa708))
		{
			break;
		}
		if(self.var_d7bfa708 == 0)
		{
			foreach(var_44ee9f0c in var_614619a5)
			{
				foreach(var_5108ecf in var_44ee9f0c)
				{
					function_835a2f7b(var_ec74b091, var_5108ecf);
				}
				var_44ee9f0c = [];
			}
			var_50e4abf2 = function_458ed430();
			break;
		}
		var_5e76f0af = self.var_d7bfa708 - 1;
		var_5108ecf = "electric/fx_elec_vtol_dmg_runner";
		if(self.var_d7bfa708 > 1)
		{
			var_5108ecf = "electric/fx_elec_vtol_dmg_runner";
		}
		for(var_c957f6b6 = 0; var_c957f6b6 < var_59fc256[var_5e76f0af]; var_c957f6b6++)
		{
			var_614619a5[var_5e76f0af][var_614619a5[var_5e76f0af].size] = function_da6acfd2(var_ec74b091, var_5108ecf, self.var_96fa87af, namespace_84970cc4::function_c8d6f6a6(var_50e4abf2));
		}
	}
	foreach(var_44ee9f0c in var_614619a5)
	{
		foreach(var_5108ecf in var_44ee9f0c)
		{
			function_835a2f7b(var_ec74b091, var_5108ecf);
		}
		var_44ee9f0c = [];
	}
}

/*
	Name: function_38f84ce8
	Namespace: namespace_786319bb
	Checksum: 0x506DCACE
	Offset: 0x54B0
	Size: 0x289
	Parameters: 1
	Flags: None
*/
function function_38f84ce8(var_ec74b091)
{
	if(isdefined(self.var_38f84ce8) && self.var_38f84ce8)
	{
		return;
	}
	self.var_38f84ce8 = 1;
	var_5108ecf = [];
	var_b1e0b5bc = -1;
	var_a3d46ee4 = self;
	while(isdefined(self) && function_5b49d38c(self) && namespace_957e94ce::function_7922262b("show_damage_stages"))
	{
		if(isdefined(var_b1e0b5bc) && var_b1e0b5bc != self function_91a7544b())
		{
			var_b1e0b5bc = self function_91a7544b();
			switch(var_b1e0b5bc)
			{
				case 1:
				{
					var_5108ecf[var_5108ecf.size] = function_da6acfd2(var_ec74b091, "vehicle/fx_vtol_dmg_trail_01", self, "tag_body");
					break;
				}
				case 2:
				{
					var_5108ecf[var_5108ecf.size] = function_da6acfd2(var_ec74b091, "vehicle/fx_vtol_dmg_trail_02", self, "tag_body");
					break;
				}
				case 3:
				{
					function_fd4ba5e1(var_ec74b091, "vehicle/fx_vtol_dmg_trail_03", self function_d48f2ab3("tag_body"), function_bc7ce905(self function_cd1d99bd("tag_body")));
					break;
				}
			}
			if(var_b1e0b5bc == 3)
			{
				break;
			}
		}
		level waittill("hash_fb60a9dc");
	}
	foreach(var_5753664b in var_5108ecf)
	{
		function_835a2f7b(var_ec74b091, var_5753664b);
	}
	if(isdefined(self))
	{
		self.var_38f84ce8 = undefined;
	}
}

/*
	Name: function_4c53e7bf
	Namespace: namespace_786319bb
	Checksum: 0x4CF8D9FA
	Offset: 0x5748
	Size: 0xBF
	Parameters: 1
	Flags: None
*/
function function_4c53e7bf(var_ec74b091)
{
	self endon("hash_643a7daf");
	while(isdefined(self) && isdefined(self.var_14351725) && function_5b49d38c(self))
	{
		if(self.var_14351725 > 0 && self.var_14351725 < 1)
		{
			self function_921a1574(var_ec74b091, "veh_bullshark_missile_locking");
			wait(1 - self.var_14351725 * 0.5);
		}
		else
		{
			wait(0.016);
		}
	}
}

/*
	Name: function_14bb5165
	Namespace: namespace_786319bb
	Checksum: 0x2B73A533
	Offset: 0x5810
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_14bb5165(var_ec74b091)
{
	self.var_3b4d6693 = 0;
	self.var_dad0e5c1 = 1;
	self thread function_c0623e13(var_ec74b091);
	self function_4f87e1b9(-1);
	self function_1bf01240(%v_aqu_vtol_engine_hover, 1, 0, 1);
	self function_1bf01240(%v_aqu_vtol_engine_idle, 1, 0, 1);
}

/*
	Name: function_d996daca
	Namespace: namespace_786319bb
	Checksum: 0xF3792D7
	Offset: 0x58C8
	Size: 0x17
	Parameters: 1
	Flags: None
*/
function function_d996daca(var_ec74b091)
{
	self.var_dad0e5c1 = 1;
}

/*
	Name: function_c0623e13
	Namespace: namespace_786319bb
	Checksum: 0x88242485
	Offset: 0x58E8
	Size: 0xF13
	Parameters: 1
	Flags: None
*/
function function_c0623e13(var_ec74b091)
{
	self endon("hash_128f8789");
	var_a2c58ba3 = "off";
	var_14386bda = "off";
	var_80cad4ec = "off";
	var_2cdec570 = "off";
	var_bd5365a3 = "off";
	var_20282599 = "off";
	var_594f1b7d = self.var_6ab6f4fd;
	var_48ca4678 = self function_1439c75a() / 17.6;
	self function_88a10e85(var_ec74b091, "running_lights", "vehicle/fx_vtol_formation_lights", "tag_body_animate", 0, 0);
	self function_88a10e85(var_ec74b091, "running_lights", "vehicle/fx_vtol_taileron_lights_l", "tag_taileron_l_animate", 0, 0);
	self function_88a10e85(var_ec74b091, "running_lights", "vehicle/fx_vtol_taileron_lights_r", "tag_taileron_r_animate", 0, 0);
	while(isdefined(self) && function_5b49d38c(self) && self function_f72343a0(var_ec74b091))
	{
		var_9d097bf8 = self function_1439c75a() / 17.6;
		var_27f6615e = var_9d097bf8 - var_48ca4678;
		var_a17c8103 = var_27f6615e / 0.016;
		var_67f2cbb8 = self.var_6ab6f4fd - var_594f1b7d;
		var_67f2cbb8 = (function_3dfa27b4(var_67f2cbb8[0]), function_3dfa27b4(var_67f2cbb8[1]), function_3dfa27b4(var_67f2cbb8[2]));
		var_d13d119c = var_67f2cbb8 / 0.016;
		if(self.var_3b4d6693)
		{
			if(var_2cdec570 != "off")
			{
				self function_400e6e82(var_ec74b091, "vtol_hover_thrust");
				var_2cdec570 = "off";
			}
			if(var_bd5365a3 != "off")
			{
				self function_400e6e82(var_ec74b091, "vtol_roll_thrust");
				var_bd5365a3 = "off";
			}
			if(var_20282599 != "off")
			{
				self function_400e6e82(var_ec74b091, "vtol_brake_thrust");
				var_20282599 = "off";
			}
			if(function_69c2f683(var_67f2cbb8[0]) <= 5 && var_a2c58ba3 != "off")
			{
				self function_400e6e82(var_ec74b091, "vtol_pitch_fx");
				var_a2c58ba3 = "off";
			}
			else if(function_69c2f683(var_67f2cbb8[0]) > 5 && function_69c2f683(var_67f2cbb8[0]) <= 10 && var_a2c58ba3 != "low")
			{
				self function_400e6e82(var_ec74b091, "vtol_pitch_fx");
				self function_88a10e85(var_ec74b091, "vtol_pitch_fx", "vehicle/fx_vtol_vapor_light", "tag_body_animate");
				var_a2c58ba3 = "low";
			}
			else if(function_69c2f683(var_67f2cbb8[0]) > 10 && var_a2c58ba3 != "high")
			{
				self function_400e6e82(var_ec74b091, "vtol_pitch_fx");
				self function_88a10e85(var_ec74b091, "vtol_pitch_fx", "vehicle/fx_vtol_vapor_extreme", "tag_body_animate");
				var_a2c58ba3 = "high";
			}
			if(function_89a42b0a(self.var_6ab6f4fd[2]) < 30 && var_14386bda != "off")
			{
				self function_400e6e82(var_ec74b091, "vtol_roll_fx");
				var_14386bda = "off";
			}
			else if(function_89a42b0a(self.var_6ab6f4fd[2]) >= 30 && var_14386bda != "on")
			{
				self function_88a10e85(var_ec74b091, "vtol_roll_fx", "vehicle/fx_vtol_contrail", "tag_body_animate");
				var_14386bda = "on";
			}
			var_6c17606c = var_80cad4ec;
			if(self function_b62cb89c() <= 400 && var_80cad4ec != "off")
			{
				self function_400e6e82(var_ec74b091, "vtol_afterburn_fx");
				var_80cad4ec = "off";
			}
			else if(self function_b62cb89c() > 400 && var_80cad4ec != "on")
			{
				self function_88a10e85(var_ec74b091, "vtol_afterburn_fx", "vehicle/fx_vtol_thruster_afterburn", "tag_fx_engine_left", 0, 0);
				self function_88a10e85(var_ec74b091, "vtol_afterburn_fx", "vehicle/fx_vtol_thruster_afterburn", "tag_fx_engine_right", 0, 0);
				var_80cad4ec = "on";
			}
			var_7e596503 = function_c8c9e5b4(function_79c174a3(var_ec74b091));
			if(isdefined(var_7e596503) && var_7e596503 == self)
			{
				self function_98e1d594("veh_bullshark_dogfight_turbulence", function_69c2f683(self.var_6ab6f4fd[2]) / 90, 1);
				self function_98e1d594("veh_bullshark_dogfight_maneuvers", 1 - function_69c2f683(self.var_6ab6f4fd[2]) / 90, 1);
				if(var_6c17606c != var_80cad4ec)
				{
					if(var_80cad4ec == "on")
					{
						self function_921a1574(var_ec74b091, "veh_bullshark_boost");
						self.var_cb5468ff = self function_c2931a36("veh_bullshark_sprint_lp");
					}
					else
					{
						self function_921a1574(var_ec74b091, "veh_bullshark_sprint_exit");
						if(isdefined(self.var_cb5468ff))
						{
							self function_eaa69754(self.var_cb5468ff);
							self.var_cb5468ff = undefined;
						}
					}
				}
			}
		}
		else if(var_a2c58ba3 != "off")
		{
			self function_400e6e82(var_ec74b091, "vtol_pitch_fx");
			var_a2c58ba3 = "off";
		}
		if(var_14386bda != "off")
		{
			self function_400e6e82(var_ec74b091, "vtol_roll_fx");
			var_14386bda = "off";
		}
		if(var_2cdec570 == "off")
		{
			self function_88a10e85(var_ec74b091, "vtol_hover_thrust", "vehicle/fx_vtol_thruster_wing_aquifer", "tag_fx_roll_nozzle_l_2", 0, 0);
			self function_88a10e85(var_ec74b091, "vtol_hover_thrust", "vehicle/fx_vtol_thruster_wing_aquifer", "tag_fx_roll_nozzle_r_2", 0, 0);
			var_2cdec570 = "on";
		}
		if(var_80cad4ec != "off")
		{
			self function_400e6e82(var_ec74b091, "vtol_afterburn_fx");
			var_80cad4ec = "off";
			var_7e596503 = function_c8c9e5b4(function_79c174a3(var_ec74b091));
			if(isdefined(var_7e596503) && var_7e596503 == self)
			{
				self function_921a1574(var_ec74b091, "veh_bullshark_sprint_exit");
				if(isdefined(self.var_cb5468ff))
				{
					self function_eaa69754(self.var_cb5468ff);
					self.var_cb5468ff = undefined;
				}
			}
		}
		if(function_69c2f683(var_d13d119c[2]) <= 5 && function_89a42b0a(self.var_6ab6f4fd[2] <= 5) && var_bd5365a3 != "off")
		{
			self function_400e6e82(var_ec74b091, "vtol_roll_thrust");
			var_bd5365a3 = "off";
		}
		else if(var_d13d119c[2] > 5 && var_bd5365a3 != "left")
		{
			self function_88a10e85(var_ec74b091, "vtol_roll_thrust", "vehicle/fx_vtol_thruster_wing_aquifer_brake", "tag_fx_roll_nozzle_l_2");
			var_bd5365a3 = "left";
		}
		else if(var_d13d119c[2] < -5 && var_bd5365a3 != "right")
		{
			self function_88a10e85(var_ec74b091, "vtol_roll_thrust", "vehicle/fx_vtol_thruster_wing_aquifer_brake", "tag_fx_roll_nozzle_r_2");
			var_bd5365a3 = "right";
		}
		if(var_a17c8103[2] <= 50 && var_9d097bf8[2] <= 25 && var_20282599 != "off")
		{
			self function_400e6e82(var_ec74b091, "vtol_brake_thrust");
			var_20282599 = "off";
		}
		else if(var_a17c8103[2] > 50 || var_9d097bf8[2] > 25 && var_20282599 != "on")
		{
			self function_88a10e85(var_ec74b091, "vtol_brake_thrust", "vehicle/fx_vtol_thruster_wing_aquifer_brake", "tag_fx_roll_nozzle_l_2", 0, 0);
			self function_88a10e85(var_ec74b091, "vtol_brake_thrust", "vehicle/fx_vtol_thruster_wing_aquifer_brake", "tag_fx_roll_nozzle_r_2", 0, 0);
			var_20282599 = "on";
		}
		var_594f1b7d = self.var_6ab6f4fd;
		var_48ca4678 = var_9d097bf8;
		wait(0.016);
	}
	if(isdefined(self))
	{
		if(var_2cdec570 != "off")
		{
			self function_400e6e82(var_ec74b091, "vtol_hover_thrust");
			var_2cdec570 = "off";
		}
		if(var_bd5365a3 != "off")
		{
			self function_400e6e82(var_ec74b091, "vtol_roll_thrust");
			var_bd5365a3 = "off";
		}
		if(var_20282599 != "off")
		{
			self function_400e6e82(var_ec74b091, "vtol_brake_thrust");
			var_20282599 = "off";
		}
		if(var_a2c58ba3 != "off")
		{
			self function_400e6e82(var_ec74b091, "vtol_pitch_fx");
			var_a2c58ba3 = "off";
		}
		if(var_14386bda != "off")
		{
			self function_400e6e82(var_ec74b091, "vtol_roll_fx");
			var_14386bda = "off";
		}
		if(var_80cad4ec != "off")
		{
			self function_400e6e82(var_ec74b091, "vtol_afterburn_fx");
			var_80cad4ec = "off";
		}
		if(isdefined(self.var_cb5468ff))
		{
			self function_eaa69754(self.var_cb5468ff);
			self.var_cb5468ff = undefined;
		}
		self function_400e6e82(var_ec74b091, "running_lights");
	}
}

/*
	Name: function_5e259b76
	Namespace: namespace_786319bb
	Checksum: 0x4A30E53
	Offset: 0x6808
	Size: 0x6AB
	Parameters: 1
	Flags: None
*/
function function_5e259b76(var_ec74b091)
{
	self endon("hash_128f8789");
	if(isdefined(self.var_58f8ead2) && self.var_58f8ead2)
	{
		return;
	}
	var_a2c58ba3 = "off";
	var_14386bda = "off";
	var_80cad4ec = "off";
	self function_88a10e85(var_ec74b091, "running_lights", "vehicle/fx_vtol_formation_lights", "tag_body_animate", 0, 0);
	self function_88a10e85(var_ec74b091, "running_lights", "vehicle/fx_vtol_taileron_lights_l", "tag_taileron_l_animate", 0, 0);
	self function_88a10e85(var_ec74b091, "running_lights", "vehicle/fx_vtol_taileron_lights_r", "tag_taileron_r_animate", 0, 0);
	self.var_58f8ead2 = 1;
	var_f9fab1b1 = self function_cd1d99bd("tag_body_animate");
	var_80d8531 = var_f9fab1b1;
	while(isdefined(self) && function_5b49d38c(self) && (isdefined(self.var_58f8ead2) && self.var_58f8ead2))
	{
		var_f9fab1b1 = self function_cd1d99bd("tag_body_animate");
		self.var_786fcc03 = var_f9fab1b1 - var_80d8531 / 0.016;
		if(function_69c2f683(self.var_786fcc03[0]) <= 5 && var_a2c58ba3 != "off")
		{
			self function_400e6e82(var_ec74b091, "vtol_pitch_fx");
			var_a2c58ba3 = "off";
		}
		else if(function_69c2f683(self.var_786fcc03[0]) > 5 && function_69c2f683(self.var_786fcc03[0]) <= 10 && var_a2c58ba3 != "low")
		{
			self function_400e6e82(var_ec74b091, "vtol_pitch_fx");
			self function_88a10e85(var_ec74b091, "vtol_pitch_fx", "vehicle/fx_vtol_vapor_light", "tag_body_animate");
			var_a2c58ba3 = "low";
		}
		else if(function_69c2f683(self.var_786fcc03[0]) > 10 && var_a2c58ba3 != "high")
		{
			self function_400e6e82(var_ec74b091, "vtol_pitch_fx");
			self function_88a10e85(var_ec74b091, "vtol_pitch_fx", "vehicle/fx_vtol_vapor_extreme", "tag_body_animate");
			var_a2c58ba3 = "high";
		}
		if(function_89a42b0a(var_f9fab1b1[2]) < 30 && var_14386bda != "off")
		{
			self function_400e6e82(var_ec74b091, "vtol_roll_fx");
			var_14386bda = "off";
		}
		else if(function_89a42b0a(var_f9fab1b1[2]) >= 30 && var_14386bda != "on")
		{
			self function_88a10e85(var_ec74b091, "vtol_roll_fx", "vehicle/fx_vtol_contrail", "tag_body_animate");
			var_14386bda = "on";
		}
		var_6c17606c = var_80cad4ec;
		if(self function_b62cb89c() <= self function_7197c6b8() * 0.75 && var_80cad4ec != "off")
		{
			self function_400e6e82(var_ec74b091, "vtol_afterburn_fx");
			var_80cad4ec = "off";
		}
		else if(self function_b62cb89c() > self function_7197c6b8() * 0.75 && var_80cad4ec != "on")
		{
			self function_88a10e85(var_ec74b091, "vtol_afterburn_fx", "vehicle/fx_vtol_thruster_afterburn", "tag_fx_engine_left", 0, 0);
			self function_88a10e85(var_ec74b091, "vtol_afterburn_fx", "vehicle/fx_vtol_thruster_afterburn", "tag_fx_engine_right", 0, 0);
			var_80cad4ec = "on";
		}
		var_80d8531 = var_f9fab1b1;
		wait(0.016);
	}
	if(isdefined(self))
	{
		if(var_a2c58ba3 != "off")
		{
			self function_400e6e82(var_ec74b091, "vtol_pitch_fx");
			var_a2c58ba3 = "off";
		}
		if(var_14386bda != "off")
		{
			self function_400e6e82(var_ec74b091, "vtol_roll_fx");
			var_14386bda = "off";
		}
		if(var_80cad4ec != "off")
		{
			self function_400e6e82(var_ec74b091, "vtol_afterburn_fx");
			var_80cad4ec = "off";
		}
		self function_400e6e82(var_ec74b091, "running_lights");
	}
}

/*
	Name: function_863ee84
	Namespace: namespace_786319bb
	Checksum: 0x5EC62894
	Offset: 0x6EC0
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_863ee84(var_6039ba26)
{
	return function_73b84f4d(var_6039ba26) / 17.6;
}

/*
	Name: function_766878c8
	Namespace: namespace_786319bb
	Checksum: 0xAB33CDF8
	Offset: 0x6EF8
	Size: 0x9B
	Parameters: 2
	Flags: None
*/
function function_766878c8(var_ec74b091, var_7b81749)
{
	if(isdefined(self.var_62bb476b) && isdefined(self.var_62bb476b[var_ec74b091]) && isdefined(self.var_62bb476b[var_ec74b091][var_7b81749]) && function_6e2770d8(self.var_62bb476b[var_ec74b091][var_7b81749]) && self.var_62bb476b[var_ec74b091][var_7b81749].size > 0)
	{
		return 1;
	}
	return 0;
}

/*
	Name: function_835cb7d
	Namespace: namespace_786319bb
	Checksum: 0x433B498D
	Offset: 0x6FA0
	Size: 0x1D5
	Parameters: 4
	Flags: None
*/
function function_835cb7d(var_ec74b091, var_7b81749, var_fc9f79e7, var_9d134160)
{
	if(!isdefined(var_9d134160))
	{
		var_9d134160 = 1;
	}
	if(!isdefined(self.var_62bb476b))
	{
		self.var_62bb476b = [];
	}
	if(!isdefined(self.var_62bb476b[var_ec74b091]))
	{
		self.var_62bb476b[var_ec74b091] = [];
	}
	if(!isdefined(self.var_62bb476b[var_ec74b091][var_7b81749]))
	{
		self.var_62bb476b[var_ec74b091][var_7b81749] = [];
	}
	if(isdefined(var_fc9f79e7))
	{
		if(isdefined(self.var_62bb476b[var_ec74b091][var_7b81749][var_fc9f79e7]) && var_9d134160)
		{
			foreach(var_ac46de76 in self.var_62bb476b[var_ec74b091][var_7b81749][var_fc9f79e7])
			{
				function_28573e36(var_ec74b091, var_ac46de76, 0);
			}
			self.var_62bb476b[var_ec74b091][var_7b81749][var_fc9f79e7] = [];
		}
		else if(!isdefined(self.var_62bb476b[var_ec74b091][var_7b81749][var_fc9f79e7]))
		{
			self.var_62bb476b[var_ec74b091][var_7b81749][var_fc9f79e7] = [];
		}
	}
}

/*
	Name: function_400e6e82
	Namespace: namespace_786319bb
	Checksum: 0x7D17E200
	Offset: 0x7180
	Size: 0x18F
	Parameters: 3
	Flags: None
*/
function function_400e6e82(var_ec74b091, var_7b81749, var_91599cfb)
{
	if(!isdefined(var_91599cfb))
	{
		var_91599cfb = 1;
	}
	if(isdefined(self.var_62bb476b) && isdefined(self.var_62bb476b[var_ec74b091]) && isdefined(self.var_62bb476b[var_ec74b091][var_7b81749]))
	{
		var_a15d7eed = function_391512da(self.var_62bb476b[var_ec74b091][var_7b81749]);
		for(var_c957f6b6 = 0; var_c957f6b6 < var_a15d7eed.size; var_c957f6b6++)
		{
			foreach(var_ac46de76 in self.var_62bb476b[var_ec74b091][var_7b81749][var_a15d7eed[var_c957f6b6]])
			{
				function_28573e36(var_ec74b091, var_ac46de76, var_91599cfb);
			}
			self.var_62bb476b[var_ec74b091][var_7b81749][var_a15d7eed[var_c957f6b6]] = [];
		}
	}
}

/*
	Name: function_88a10e85
	Namespace: namespace_786319bb
	Checksum: 0xF150CB8
	Offset: 0x7318
	Size: 0x13B
	Parameters: 6
	Flags: None
*/
function function_88a10e85(var_ec74b091, var_7b81749, var_fc9f79e7, var_c6107c9b, var_cffd17f8, var_de656156)
{
	if(!isdefined(var_c6107c9b))
	{
		var_c6107c9b = "tag_origin";
	}
	if(!isdefined(var_cffd17f8))
	{
		var_cffd17f8 = 1;
	}
	if(!isdefined(var_de656156))
	{
		var_de656156 = 1;
	}
	self function_835cb7d(var_ec74b091, var_7b81749, var_fc9f79e7, var_de656156);
	if(var_cffd17f8)
	{
		self function_400e6e82(var_ec74b091, var_7b81749, 0);
	}
	var_ac46de76 = function_da6acfd2(var_ec74b091, var_fc9f79e7, self, var_c6107c9b);
	var_9dab97a8 = self.var_62bb476b[var_ec74b091][var_7b81749][var_fc9f79e7].size;
	self.var_62bb476b[var_ec74b091][var_7b81749][var_fc9f79e7][var_9dab97a8] = var_ac46de76;
}

/*
	Name: function_ea0e7704
	Namespace: namespace_786319bb
	Checksum: 0xD4FB2EC3
	Offset: 0x7460
	Size: 0x1AB
	Parameters: 8
	Flags: None
*/
function function_ea0e7704(var_ec74b091, var_7b81749, var_fc9f79e7, var_c55dcd82, var_d230ad83, var_766fbf83, var_cffd17f8, var_de656156)
{
	if(!isdefined(var_cffd17f8))
	{
		var_cffd17f8 = 1;
	}
	if(!isdefined(var_de656156))
	{
		var_de656156 = 1;
	}
	self function_835cb7d(var_ec74b091, var_7b81749, var_fc9f79e7, var_de656156);
	if(var_cffd17f8)
	{
		self function_400e6e82(var_ec74b091, var_7b81749, 0);
	}
	if(isdefined(var_d230ad83) && isdefined(var_766fbf83))
	{
		var_ac46de76 = function_fd4ba5e1(var_ec74b091, var_fc9f79e7, var_c55dcd82, var_d230ad83, var_766fbf83);
	}
	else if(isdefined(var_d230ad83))
	{
		var_ac46de76 = function_fd4ba5e1(var_ec74b091, var_fc9f79e7, var_c55dcd82, var_d230ad83);
	}
	else
	{
		var_ac46de76 = function_fd4ba5e1(var_ec74b091, var_fc9f79e7, var_c55dcd82);
	}
	var_9dab97a8 = self.var_62bb476b[var_ec74b091][var_7b81749][var_fc9f79e7].size;
	self.var_62bb476b[var_ec74b091][var_7b81749][var_fc9f79e7][var_9dab97a8] = var_ac46de76;
}

/*
	Name: function_3e82b262
	Namespace: namespace_786319bb
	Checksum: 0x9E05C5
	Offset: 0x7618
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_3e82b262()
{
	self endon("hash_643a7daf");
	function_d12009e4("boss_tree", "pause", "unloop", "goto_start");
	function_d12009e4("boss_hallucinate_glass", "pause", "unloop", "goto_start");
	function_d12009e4("boss_room_glass", "pause", "unloop", "goto_start");
	level waittill("hash_4fd5d268");
	function_d12009e4("boss_tree", "unpause");
	function_d12009e4("boss_hallucinate_glass", "unpause");
	level waittill("hash_e830ddcf");
	function_d12009e4("boss_room_glass", "unpause");
}

/*
	Name: function_af7432f
	Namespace: namespace_786319bb
	Checksum: 0x5A9C2AE5
	Offset: 0x7740
	Size: 0x5D
	Parameters: 7
	Flags: None
*/
function function_af7432f(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self.var_dad0e5c1 = 1;
	}
	else
	{
		self.var_dad0e5c1 = undefined;
	}
}

/*
	Name: function_34474782
	Namespace: namespace_786319bb
	Checksum: 0xEDE5DE48
	Offset: 0x77A8
	Size: 0x83
	Parameters: 7
	Flags: None
*/
function function_34474782(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_4780a11e = 1;
	if(var_9193c732 == 1)
	{
		var_4780a11e = 2;
	}
	function_c1dc0657(var_ec74b091, var_4780a11e);
}

/*
	Name: function_5240a6bb
	Namespace: namespace_786319bb
	Checksum: 0xC41761EA
	Offset: 0x7838
	Size: 0x83
	Parameters: 7
	Flags: None
*/
function function_5240a6bb(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_4780a11e = 1;
	if(var_9193c732 == 1)
	{
		var_4780a11e = 2;
	}
	function_4c5bfec4(var_ec74b091, var_4780a11e);
}

