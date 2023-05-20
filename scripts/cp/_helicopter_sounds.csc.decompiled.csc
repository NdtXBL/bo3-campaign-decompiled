#using scripts\codescripts\struct;
#using scripts\cp\_helicopter_sounds;
#using scripts\shared\audio_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\music_shared;
#using scripts\shared\util_shared;

#namespace namespace_c3aa959;

/*
	Name: function_c35e6aab
	Namespace: namespace_c3aa959
	Checksum: 0xF491CE0C
	Offset: 0x628
	Size: 0x603
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	namespace_71e9cb84::function_50f16166("helicopter", "vehicle_is_firing", 1, 1, "int", &function_1fa2af0f, 1, 0);
	level.var_f9d520db = &function_b0f82a9a;
	level.var_a25d357c = [];
	function_f0094e43("cobra", "turbine", 65, 0.6, 0.8, 65, 1, 1.1);
	function_f0094e43("cobra", "top_rotor", 45, 0.7, 1, 45, 0.95, 1.1);
	function_f0094e43("cobra", "tail_rotor", 45, 0.5, 1, 45, 0.95, 1.1);
	function_f0094e43("hind", "turbine", 65, 0.6, 0.8, 65, 1, 1.1);
	function_f0094e43("hind", "top_rotor", 45, 0.7, 1, 45, 0.95, 1.1);
	function_f0094e43("hind", "tail_rotor", 45, 0.5, 1, 45, 0.95, 1.1);
	function_f0094e43("supply", "turbine", 65, 0.7, 1, 65, 1, 1.1);
	function_f0094e43("supply", "top_rotor", 35, 0.95, 1, 100, 1, 1.1);
	function_f0094e43("supply", "tail_rotor", 35, 0.95, 1, 45, 1, 1.1);
	function_f0094e43("huey", "turbine", 65, 0.7, 0.8, 65, 1, 1.1);
	function_f0094e43("huey", "top_rotor", 45, 0.8, 1, 45, 0.95, 1.1);
	function_f0094e43("huey", "tail_rotor", 45, 0.6, 1, 45, 0.95, 1);
	function_f0094e43("huey", "wind_rt", 45, 0.6, 1, 45, 0.95, 1);
	function_f0094e43("huey", "wind_lft", 45, 0.6, 1, 45, 0.95, 1);
	function_f0094e43("qrdrone", "turbine_idle", 30, 0.8, 0, 16, 0.9, 1.1);
	function_f0094e43("qrdrone", "turbine_moving", 30, 0, 0.9, 20, 0.9, 1.1);
	function_f0094e43("qrdrone", "turn", 5, 0, 1, 1, 1, 1);
	function_f0094e43("heli_guard", "turbine", 10, 0.9, 1, 30, 0.9, 1.05);
	function_f0094e43("heli_guard", "rotor", 10, 0.9, 1, 30, 0.9, 1.1);
	/#
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		level thread function_161258e2();
	#/
}

/*
	Name: function_1fa2af0f
	Namespace: namespace_c3aa959
	Checksum: 0x82483D64
	Offset: 0xC38
	Size: 0x8B
	Parameters: 7
	Flags: None
*/
function function_1fa2af0f(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	/#
		function_895b00("Dev Block strings are not supported" + var_9193c732);
	#/
	if(var_9193c732 == 0)
	{
		self.var_8b6e8518 = 0;
	}
	else
	{
		self.var_8b6e8518 = 1;
	}
}

/*
	Name: function_f0094e43
	Namespace: namespace_c3aa959
	Checksum: 0x8A19A1A8
	Offset: 0xCD0
	Size: 0x28B
	Parameters: 8
	Flags: None
*/
function function_f0094e43(var_30d06b90, var_e2e9862d, var_e9d0865f, var_7b9dcc8d, var_68e2787b, var_d18b074e, var_98e80580, var_9099572a)
{
	if(!isdefined(level.var_a25d357c[var_30d06b90]))
	{
		level.var_a25d357c[var_30d06b90] = [];
	}
	if(!isdefined(level.var_a25d357c[var_30d06b90][var_e2e9862d]))
	{
		level.var_a25d357c[var_30d06b90][var_e2e9862d] = function_a8fb77bd();
	}
	level.var_a25d357c[var_30d06b90][var_e2e9862d].var_963c0d0e = var_e9d0865f;
	level.var_a25d357c[var_30d06b90][var_e2e9862d].var_796ea722 = var_d18b074e;
	level.var_a25d357c[var_30d06b90][var_e2e9862d].var_f171eb19 = var_7b9dcc8d;
	level.var_a25d357c[var_30d06b90][var_e2e9862d].var_4c17c9a7 = var_68e2787b;
	level.var_a25d357c[var_30d06b90][var_e2e9862d].var_da5e6377 = var_98e80580;
	level.var_a25d357c[var_30d06b90][var_e2e9862d].var_bf6937c9 = var_9099572a;
	/#
		if(function_4bd0142f("Dev Block strings are not supported") > 0)
		{
			function_895b00("Dev Block strings are not supported" + var_30d06b90);
			function_895b00("Dev Block strings are not supported" + var_e2e9862d);
			function_895b00("Dev Block strings are not supported" + var_e9d0865f);
			function_895b00("Dev Block strings are not supported" + var_7b9dcc8d);
			function_895b00("Dev Block strings are not supported" + var_68e2787b);
			function_895b00("Dev Block strings are not supported" + var_d18b074e);
			function_895b00("Dev Block strings are not supported" + var_98e80580);
			function_895b00("Dev Block strings are not supported" + var_9099572a);
		}
	#/
}

/*
	Name: function_161258e2
	Namespace: namespace_c3aa959
	Checksum: 0xFA63563B
	Offset: 0xF68
	Size: 0x557
	Parameters: 0
	Flags: None
*/
function function_161258e2()
{
	/#
		while(1)
		{
			var_de160664 = function_6f1ebe57("Dev Block strings are not supported");
			if(var_de160664 != "Dev Block strings are not supported")
			{
				var_77f265f6 = 1;
				var_b952f48f = function_d6df1f20(var_de160664, "Dev Block strings are not supported");
				if(!isdefined(var_b952f48f[0]) || !isdefined(level.var_a25d357c[var_b952f48f[0]]))
				{
					if(isdefined(var_b952f48f[0]))
					{
						function_895b00("Dev Block strings are not supported" + var_b952f48f[0]);
					}
					else
					{
						function_895b00("Dev Block strings are not supported");
					}
					function_895b00("Dev Block strings are not supported");
					var_77f265f6 = 0;
				}
				else if(!isdefined(var_b952f48f[1]))
				{
					if(isdefined(var_b952f48f[1]))
					{
						function_895b00("Dev Block strings are not supported" + var_b952f48f[0] + "Dev Block strings are not supported" + var_b952f48f[1]);
					}
					else
					{
						function_895b00("Dev Block strings are not supported" + var_b952f48f[0]);
					}
					function_895b00("Dev Block strings are not supported");
					var_77f265f6 = 0;
				}
				else if(!isdefined(var_b952f48f[2]))
				{
					function_895b00("Dev Block strings are not supported" + var_b952f48f[0] + "Dev Block strings are not supported" + var_b952f48f[1]);
					function_895b00("Dev Block strings are not supported");
					var_77f265f6 = 0;
				}
				else if(!isdefined(var_b952f48f[3]))
				{
					function_895b00("Dev Block strings are not supported" + var_b952f48f[0] + "Dev Block strings are not supported" + var_b952f48f[1]);
					function_895b00("Dev Block strings are not supported");
					var_77f265f6 = 0;
				}
				if(var_77f265f6)
				{
					var_30d06b90 = var_b952f48f[0];
					var_9cba62f7 = var_b952f48f[1];
					var_31aca08e = var_b952f48f[2];
					var_9368ba0c = function_33724181(var_b952f48f[3]);
					switch(var_31aca08e)
					{
						case "Dev Block strings are not supported":
						{
							level.var_a25d357c[var_30d06b90][var_9cba62f7].var_f171eb19 = var_9368ba0c;
							function_895b00("Dev Block strings are not supported" + var_9368ba0c);
							break;
						}
						case "Dev Block strings are not supported":
						{
							level.var_a25d357c[var_30d06b90][var_9cba62f7].var_4c17c9a7 = var_9368ba0c;
							function_895b00("Dev Block strings are not supported" + var_9368ba0c);
							break;
						}
						case "Dev Block strings are not supported":
						{
							level.var_a25d357c[var_30d06b90][var_9cba62f7].var_da5e6377 = var_9368ba0c;
							function_895b00("Dev Block strings are not supported" + var_9368ba0c);
							break;
						}
						case "Dev Block strings are not supported":
						{
							level.var_a25d357c[var_30d06b90][var_9cba62f7].var_bf6937c9 = var_9368ba0c;
							function_895b00("Dev Block strings are not supported" + var_9368ba0c);
							break;
						}
						case "Dev Block strings are not supported":
						{
							level.var_a25d357c[var_30d06b90][var_9cba62f7].var_963c0d0e = var_9368ba0c;
							function_895b00("Dev Block strings are not supported" + var_9368ba0c);
							break;
						}
						case "Dev Block strings are not supported":
						{
							level.var_a25d357c[var_30d06b90][var_9cba62f7].var_796ea722 = var_9368ba0c;
							function_895b00("Dev Block strings are not supported" + var_9368ba0c);
							break;
						}
						case default:
						{
							function_895b00("Dev Block strings are not supported");
						}
					}
				}
				function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
			}
			wait(0.1);
		}
	#/
}

/*
	Name: function_f124b201
	Namespace: namespace_c3aa959
	Checksum: 0xEB18BFE7
	Offset: 0x14C8
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_f124b201()
{
	function_6c616f86("lfe", "engine", "snd_cockpit", "veh_huey_rotor_lfe");
	function_6c616f86("turbine", "engine", "snd_rotor", "veh_huey_turbine");
	function_6c616f86("top_rotor", "engine", "snd_rotor", "veh_huey_rotor");
	function_6c616f86("tail_rotor", "engine", "snd_tail_rotor", "veh_huey_tail");
	function_6c616f86("wind_rt", "engine", "snd_wind_right", "veh_huey_door_wind");
	function_6c616f86("radio", "engine", "snd_cockpit", "veh_huey_radio");
	self.var_b52e71ae = "snd_cockpit";
}

/*
	Name: function_5f8fa20c
	Namespace: namespace_c3aa959
	Checksum: 0x7F574325
	Offset: 0x1608
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_5f8fa20c()
{
	function_6c616f86("lfe", "engine", "snd_cockpit", "veh_cobra_rotor_lfe");
	function_6c616f86("turbine", "engine", "snd_rotor", "veh_cobra_turbine");
	function_6c616f86("top_rotor", "engine", "snd_rotor", "veh_cobra_rotor");
	function_6c616f86("tail_rotor", "engine", "snd_tail_rotor", "veh_cobra_tail");
	self.var_b52e71ae = "snd_cockpit";
}

/*
	Name: function_aed28369
	Namespace: namespace_c3aa959
	Checksum: 0xF7ECA361
	Offset: 0x16E8
	Size: 0x85
	Parameters: 0
	Flags: None
*/
function function_aed28369()
{
	function_6c616f86("lfe", "engine", undefined, "veh_supply_rotor_lfe");
	function_6c616f86("turbine", "engine", undefined, "veh_supply_turbine");
	function_6c616f86("top_rotor", "engine", undefined, "veh_supply_rotor");
	self.var_b52e71ae = undefined;
}

/*
	Name: function_65a38d71
	Namespace: namespace_c3aa959
	Checksum: 0x27959DDE
	Offset: 0x1778
	Size: 0xAD
	Parameters: 0
	Flags: None
*/
function function_65a38d71()
{
	function_6c616f86("lfe", "engine", undefined, "veh_hind_rotor_lfe");
	function_6c616f86("turbine", "engine", undefined, "veh_hind_turbine");
	function_6c616f86("top_rotor", "engine", undefined, "veh_hind_rotor");
	function_6c616f86("tail_rotor", "engine", undefined, "veh_hind_tail");
	self.var_b52e71ae = undefined;
}

/*
	Name: function_9f7a18e8
	Namespace: namespace_c3aa959
	Checksum: 0x74B9DC27
	Offset: 0x1830
	Size: 0x9D
	Parameters: 0
	Flags: None
*/
function function_9f7a18e8()
{
	function_6c616f86("turbine_idle", "engine", "tag_body", "veh_qrdrone_turbine_idle");
	function_6c616f86("turbine_moving", "engine", "tag_body", "veh_qrdrone_turbine_moving");
	function_6c616f86("turn", "engine", "tag_body", "veh_qrdrone_idle_rotate");
	self.var_b52e71ae = undefined;
}

/*
	Name: function_c294a2ca
	Namespace: namespace_c3aa959
	Checksum: 0x8D9F603F
	Offset: 0x18D8
	Size: 0x85
	Parameters: 0
	Flags: None
*/
function function_c294a2ca()
{
	function_6c616f86("lfe", "engine", undefined, "veh_overwatch_lfe");
	function_6c616f86("turbine", "engine", undefined, "veh_overwatch_turbine");
	function_6c616f86("rotor", "engine", undefined, "veh_overwatch_rotor");
	self.var_b52e71ae = undefined;
}

/*
	Name: function_6c615f3e
	Namespace: namespace_c3aa959
	Checksum: 0xAEF062A7
	Offset: 0x1968
	Size: 0x63
	Parameters: 2
	Flags: None
*/
function function_6c615f3e(var_94afbc2d, var_b31a6ddf)
{
	if(isdefined(var_b31a6ddf))
	{
		self function_37f7858a(var_94afbc2d, var_b31a6ddf);
	}
	else
	{
		self function_37f7858a(var_94afbc2d, "tag_body");
	}
}

/*
	Name: function_6c616f86
	Namespace: namespace_c3aa959
	Checksum: 0x76AA8AA4
	Offset: 0x19D8
	Size: 0x38B
	Parameters: 7
	Flags: None
*/
function function_6c616f86(var_a84127cf, var_fe311e35, var_b31a6ddf, var_4f28b6f8, var_3552e158, var_a75a5093, var_8157d62a)
{
	self.var_5b824555[var_a84127cf] = function_a8fb77bd();
	self.var_5b824555[var_a84127cf].var_7e300fa9 = var_fe311e35;
	self.var_5b824555[var_a84127cf].var_4f28b6f8 = function_9b7fda5e(0, self.var_722885f3, "script_origin");
	self.var_5b824555[var_a84127cf].var_4f28b6f8 function_6c615f3e(self, var_b31a6ddf);
	self.var_5b824555[var_a84127cf].var_4f28b6f8.var_48b937ab = var_4f28b6f8;
	self thread function_d79f8f84(self.var_5b824555[var_a84127cf].var_4f28b6f8);
	if(isdefined(var_3552e158))
	{
		self.var_5b824555[var_a84127cf].var_db4ade87 = function_9b7fda5e(0, self.var_722885f3, "script_origin");
		self.var_5b824555[var_a84127cf].var_db4ade87 function_6c615f3e(self, var_b31a6ddf);
		self.var_5b824555[var_a84127cf].var_db4ade87.var_48b937ab = var_3552e158;
		self thread function_d79f8f84(self.var_5b824555[var_a84127cf].var_3552e158);
	}
	if(isdefined(var_a75a5093))
	{
		self.var_5b824555[var_a84127cf].var_db4ade87 = function_9b7fda5e(0, self.var_722885f3, "script_origin");
		self.var_5b824555[var_a84127cf].var_db4ade87 function_6c615f3e(self, var_b31a6ddf);
		self.var_5b824555[var_a84127cf].var_db4ade87.var_48b937ab = var_a75a5093;
		self thread function_d79f8f84(self.var_5b824555[var_a84127cf].var_a75a5093);
	}
	if(isdefined(var_8157d62a))
	{
		self.var_5b824555[var_a84127cf].var_db4ade87 = function_9b7fda5e(0, self.var_722885f3, "script_origin");
		self.var_5b824555[var_a84127cf].var_db4ade87 function_6c615f3e(self, var_b31a6ddf);
		self.var_5b824555[var_a84127cf].var_db4ade87.var_48b937ab = var_8157d62a;
		self thread function_d79f8f84(self.var_5b824555[var_a84127cf].var_8157d62a);
	}
}

/*
	Name: function_da638558
	Namespace: namespace_c3aa959
	Checksum: 0x66896DA
	Offset: 0x1D70
	Size: 0x233
	Parameters: 0
	Flags: None
*/
function function_da638558()
{
	self.var_73fc57b5 = [];
	self.var_73fc57b5["default"] = "dirt";
	self.var_73fc57b5["metal"] = "dirt";
	self.var_73fc57b5["concrete"] = "dirt";
	self.var_73fc57b5["wood"] = "dirt";
	self.var_73fc57b5["dirt"] = "dirt";
	self.var_73fc57b5["gravel"] = "dirt";
	self.var_73fc57b5["grass"] = "dirt";
	self.var_73fc57b5["mud"] = "dirt";
	self.var_73fc57b5["snow"] = "dirt";
	self.var_73fc57b5["asphalt"] = "dirt";
	self.var_73fc57b5["brick"] = "dirt";
	self.var_73fc57b5["glass"] = "dirt";
	self.var_73fc57b5["plaster"] = "dirt";
	self.var_73fc57b5["sand"] = "dirt";
	self.var_73fc57b5["rock"] = "dirt";
	self.var_73fc57b5["water"] = "water";
	self.var_73fc57b5["foliage"] = "dirt";
	self function_6f7a0b1("dirt", "veh_chopper_prop_wash_dirt");
	self function_6f7a0b1("water", "veh_chopper_prop_wash_water");
}

/*
	Name: function_6f7a0b1
	Namespace: namespace_c3aa959
	Checksum: 0xECEA22A5
	Offset: 0x1FB0
	Size: 0x8B
	Parameters: 2
	Flags: None
*/
function function_6f7a0b1(var_73fc57b5, var_48b937ab)
{
	self.var_3b922784[var_73fc57b5] = function_9b7fda5e(0, self.var_722885f3, "script_origin");
	self.var_3b922784[var_73fc57b5].var_48b937ab = var_48b937ab;
	self thread function_d79f8f84(self.var_3b922784[var_73fc57b5]);
}

/*
	Name: function_54614ecb
	Namespace: namespace_c3aa959
	Checksum: 0x4D8F93D5
	Offset: 0x2048
	Size: 0x8B
	Parameters: 2
	Flags: None
*/
function function_54614ecb(var_73fc57b5, var_48b937ab)
{
	self.var_5a88e5e6[var_73fc57b5] = function_9b7fda5e(0, self.var_722885f3, "script_origin");
	self.var_5a88e5e6[var_73fc57b5].var_48b937ab = var_48b937ab;
	self thread function_d79f8f84(self.var_5a88e5e6[var_73fc57b5]);
}

/*
	Name: function_88849460
	Namespace: namespace_c3aa959
	Checksum: 0x72A394CA
	Offset: 0x20E0
	Size: 0x1A3
	Parameters: 1
	Flags: None
*/
function function_88849460(var_ec74b091)
{
	if(isdefined(self.var_40eba907))
	{
		self.var_5b824555 = [];
		self.var_757e5378 = [];
		self.var_107addd3 = [];
		self.var_b8a8616d = 0;
		self.var_f3557ba3 = 17.6;
		self.var_735ca9d3 = 20;
		self.var_27e60f8e = 5;
		switch(self.var_40eba907)
		{
			case "veh_heli_ai_mp":
			{
				break;
			}
			case "veh_heli_guard_mp":
			{
				break;
			}
			case "veh_heli_supplydrop_mp":
			{
				break;
			}
			case "veh_heli_gunner_mp":
			{
				break;
			}
			case "veh_heli_player_gunner_mp":
			{
				break;
			}
			case "veh_drn_qrdrone_mp":
			{
				break;
			}
			case default:
			{
				/#
					function_895b00("Dev Block strings are not supported" + self.var_9d34dca7 + "Dev Block strings are not supported");
				#/
				break;
			}
		}
		self function_da638558();
		self thread function_dd8650fa();
		/#
			if(function_4bd0142f("Dev Block strings are not supported") > 0)
			{
				function_2e4b8c78("Dev Block strings are not supported" + self.var_9d34dca7 + "Dev Block strings are not supported");
			}
		#/
	}
	else
	{
		function_895b00("Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_d79f8f84
	Namespace: namespace_c3aa959
	Checksum: 0x428358F
	Offset: 0x2290
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_d79f8f84(var_144da553)
{
	self waittill("hash_d5da096");
	var_144da553 function_52fddbd0();
	var_144da553 function_4a1ecb6c(4);
	var_144da553 function_dc8c8404();
}

/*
	Name: function_b0f82a9a
	Namespace: namespace_c3aa959
	Checksum: 0x6FC06931
	Offset: 0x22F8
	Size: 0x23
	Parameters: 2
	Flags: None
*/
function function_b0f82a9a(var_ec74b091, var_aa10fce8)
{
	var_aa10fce8 notify("hash_d5da096");
}

/*
	Name: function_a56741ae
	Namespace: namespace_c3aa959
	Checksum: 0xCCED5956
	Offset: 0x2328
	Size: 0xBD
	Parameters: 1
	Flags: None
*/
function function_a56741ae(var_e84834f2)
{
	switch(var_e84834f2.var_7e300fa9)
	{
		case "engine":
		{
			var_e84834f2.var_4f28b6f8 function_c2931a36(var_e84834f2.var_4f28b6f8.var_48b937ab, 2);
			break;
		}
		case "wind":
		{
			break;
		}
		case default:
		{
			/#
				function_895b00("Dev Block strings are not supported" + var_e84834f2.var_fe311e35 + "Dev Block strings are not supported");
			#/
			break;
		}
	}
}

/*
	Name: function_724b963d
	Namespace: namespace_c3aa959
	Checksum: 0x62C30E8
	Offset: 0x23F0
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_724b963d()
{
	self function_a56741ae(self.var_5b824555["lfe"]);
	self thread function_7987add6("cobra", "turbine");
	self thread function_7987add6("cobra", "top_rotor");
	self thread function_7987add6("cobra", "tail_rotor");
}

/*
	Name: function_84f521c2
	Namespace: namespace_c3aa959
	Checksum: 0xA308CBF8
	Offset: 0x24A0
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_84f521c2()
{
	self function_a56741ae(self.var_5b824555["lfe"]);
	self thread function_7987add6("hind", "turbine");
	self thread function_7987add6("hind", "top_rotor");
	self thread function_7987add6("hind", "tail_rotor");
}

/*
	Name: function_f6e33b96
	Namespace: namespace_c3aa959
	Checksum: 0x1308D5BC
	Offset: 0x2550
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_f6e33b96()
{
	self thread function_7987add6("supply", "turbine");
	self thread function_7987add6("supply", "top_rotor");
	self function_a56741ae(self.var_5b824555["lfe"]);
}

/*
	Name: function_b71ea01a
	Namespace: namespace_c3aa959
	Checksum: 0xBF01500E
	Offset: 0x25D8
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_b71ea01a()
{
	self function_a56741ae(self.var_5b824555["lfe"]);
	self function_a56741ae(self.var_5b824555["radio"]);
	self thread function_7987add6("huey", "turbine");
	self thread function_7987add6("huey", "top_rotor");
	self thread function_7987add6("huey", "tail_rotor");
	self thread function_7987add6("huey", "wind_rt");
}

/*
	Name: function_6d926985
	Namespace: namespace_c3aa959
	Checksum: 0x99EC1590
	Offset: 0x26D8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_6d926985()
{
}

/*
	Name: function_605975f7
	Namespace: namespace_c3aa959
	Checksum: 0x651F2C6C
	Offset: 0x26E8
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_605975f7()
{
	self function_a56741ae(self.var_5b824555["lfe"]);
	self thread function_7987add6("heli_guard", "turbine");
	self thread function_7987add6("heli_guard", "rotor");
	self thread function_ac8463bc();
}

/*
	Name: function_7987add6
	Namespace: namespace_c3aa959
	Checksum: 0x37EF6DDF
	Offset: 0x2788
	Size: 0x45D
	Parameters: 4
	Flags: None
*/
function function_7987add6(var_30d06b90, var_9cba62f7, var_3865186, var_bd0e4236)
{
	self endon("hash_d5da096");
	var_e84834f2 = self.var_5b824555[var_9cba62f7];
	var_dbd52590 = var_e84834f2.var_4f28b6f8 function_c2931a36(var_e84834f2.var_4f28b6f8.var_48b937ab, 0.5);
	if(!isdefined(var_3865186))
	{
		var_3865186 = 0.5;
	}
	while(isdefined(self))
	{
		if(!isdefined(level.var_a25d357c[var_30d06b90]) || !isdefined(level.var_a25d357c[var_30d06b90][var_9cba62f7]))
		{
			/#
				function_895b00("Dev Block strings are not supported");
			#/
			return;
		}
		var_e9d0865f = level.var_a25d357c[var_30d06b90][var_9cba62f7].var_963c0d0e;
		var_7b9dcc8d = level.var_a25d357c[var_30d06b90][var_9cba62f7].var_f171eb19;
		var_68e2787b = level.var_a25d357c[var_30d06b90][var_9cba62f7].var_4c17c9a7;
		var_d18b074e = level.var_a25d357c[var_30d06b90][var_9cba62f7].var_796ea722;
		var_98e80580 = level.var_a25d357c[var_30d06b90][var_9cba62f7].var_da5e6377;
		var_9099572a = level.var_a25d357c[var_30d06b90][var_9cba62f7].var_bf6937c9;
		var_a6ca18ad = self function_1439c75a();
		self.var_b8a8616d = function_69c2f683(function_ccc6aafb(function_5f9a4869(var_a6ca18ad, var_a6ca18ad))) / self.var_f3557ba3;
		var_f28b00d = namespace_4fe3eef1::function_1bc38161(self.var_27e60f8e, var_e9d0865f, var_7b9dcc8d, var_68e2787b, self.var_b8a8616d);
		var_974d67b3 = namespace_4fe3eef1::function_1bc38161(self.var_27e60f8e, var_d18b074e, var_98e80580, var_9099572a, self.var_b8a8616d);
		if(isdefined(var_bd0e4236))
		{
			if(!isdefined(self.var_24f1a6b9))
			{
				self.var_24f1a6b9 = 0;
			}
			var_4f7ebe9e = namespace_4fe3eef1::function_1bc38161(5, 50, 0, 1, function_69c2f683(self.var_24f1a6b9));
			var_f28b00d = var_f28b00d - var_4f7ebe9e;
		}
		if(isdefined(var_f28b00d) && isdefined(var_974d67b3))
		{
			var_e84834f2.var_4f28b6f8 function_98e1d594(var_e84834f2.var_4f28b6f8.var_48b937ab, var_f28b00d, var_974d67b3, 1, 0.15);
			/#
				if(function_4bd0142f("Dev Block strings are not supported") > 0)
				{
					function_895b00("Dev Block strings are not supported" + self.var_b8a8616d);
					function_895b00("Dev Block strings are not supported" + var_974d67b3);
					function_895b00("Dev Block strings are not supported" + self.var_b8a8616d);
					function_895b00("Dev Block strings are not supported" + var_f28b00d);
				}
			#/
		}
		wait(var_3865186);
	}
}

/*
	Name: function_ac8463bc
	Namespace: namespace_c3aa959
	Checksum: 0xB776073C
	Offset: 0x2BF0
	Size: 0x397
	Parameters: 0
	Flags: None
*/
function function_ac8463bc()
{
	self endon("hash_d5da096");
	self function_54614ecb("dirt", "prj_brass_loop_dirt");
	self function_54614ecb("water", "prj_brass_loop_water");
	self.var_8b6e8518 = 0;
	var_a52faa04 = undefined;
	var_40bd487a = self;
	var_ad926b8a = undefined;
	var_a7597f64 = undefined;
	var_5806c6ef = undefined;
	var_61d1dc95 = undefined;
	var_5453e6dd = VectorScale((1, 1, 1), 100000);
	while(isdefined(self))
	{
		wait(1 + function_72a94f05(0, 0.2));
		if(function_cb3d1c9b(var_5453e6dd, var_40bd487a.var_722885f3) < 144)
		{
			continue;
		}
		var_5453e6dd = var_40bd487a.var_722885f3;
		var_a52faa04 = function_b3bb41e6(var_40bd487a.var_722885f3, var_40bd487a.var_722885f3 - VectorScale((0, 0, 1), 100000));
		var_a0df740f = var_a52faa04["surfacetype"];
		if(!isdefined(var_a52faa04))
		{
			continue;
		}
		var_ad926b8a = var_a7597f64;
		var_a7597f64 = var_a0df740f;
		if(!isdefined(var_ad926b8a) || !isdefined(var_a7597f64))
		{
			continue;
		}
		if(!isdefined(self.var_73fc57b5[var_a7597f64]) || !isdefined(self.var_73fc57b5[var_ad926b8a]))
		{
			/#
			#/
			continue;
		}
		var_7758f108 = self.var_73fc57b5[var_a7597f64];
		var_61d1dc95 = self.var_5a88e5e6[var_7758f108];
		var_4f5c6866 = self.var_73fc57b5[var_ad926b8a];
		var_5806c6ef = self.var_5a88e5e6[var_4f5c6866];
		if(!isdefined(var_a52faa04["position"]))
		{
			if(isdefined(var_5806c6ef))
			{
				var_5806c6ef function_4a1ecb6c(0.5);
			}
			continue;
		}
		if(!self.var_8b6e8518)
		{
			var_5806c6ef function_4a1ecb6c(0.5);
		}
		var_61d1dc95.var_722885f3 = var_a52faa04["position"];
		var_5806c6ef.var_722885f3 = var_a52faa04["position"];
		if(isdefined(var_7758f108) && self.var_8b6e8518)
		{
			if(var_7758f108 == var_4f5c6866 && var_5806c6ef function_149386d4())
			{
				continue;
			}
			var_5806c6ef function_4a1ecb6c(0.5);
			var_61d1dc95 function_c2931a36(var_61d1dc95.var_48b937ab, 0.75);
		}
	}
}

/*
	Name: function_dd8650fa
	Namespace: namespace_c3aa959
	Checksum: 0x516F5007
	Offset: 0x2F90
	Size: 0x30F
	Parameters: 0
	Flags: None
*/
function function_dd8650fa()
{
	self endon("hash_d5da096");
	var_a52faa04 = undefined;
	var_40bd487a = self;
	var_ad926b8a = undefined;
	var_a7597f64 = undefined;
	var_5806c6ef = undefined;
	var_61d1dc95 = undefined;
	var_5453e6dd = VectorScale((1, 1, 1), 100000);
	while(isdefined(self))
	{
		wait(1 + function_72a94f05(0, 0.2));
		if(function_cb3d1c9b(var_5453e6dd, var_40bd487a.var_722885f3) < 144)
		{
			continue;
		}
		var_5453e6dd = var_40bd487a.var_722885f3;
		var_a52faa04 = function_b3bb41e6(var_40bd487a.var_722885f3, var_40bd487a.var_722885f3 - VectorScale((0, 0, 1), 100000));
		var_a0df740f = var_a52faa04["surfacetype"];
		if(!isdefined(var_a52faa04))
		{
			continue;
		}
		var_ad926b8a = var_a7597f64;
		var_a7597f64 = var_a0df740f;
		if(!isdefined(var_ad926b8a) || !isdefined(var_a7597f64))
		{
			continue;
		}
		if(!isdefined(self.var_73fc57b5[var_a7597f64]) || !isdefined(self.var_73fc57b5[var_ad926b8a]))
		{
			/#
			#/
			continue;
		}
		var_7758f108 = self.var_73fc57b5[var_a7597f64];
		var_61d1dc95 = self.var_3b922784[var_7758f108];
		var_4f5c6866 = self.var_73fc57b5[var_ad926b8a];
		var_5806c6ef = self.var_3b922784[var_4f5c6866];
		if(!isdefined(var_a52faa04["position"]))
		{
			if(isdefined(var_5806c6ef))
			{
				var_5806c6ef function_4a1ecb6c(0.5);
			}
			continue;
		}
		var_61d1dc95.var_722885f3 = var_a52faa04["position"];
		var_5806c6ef.var_722885f3 = var_a52faa04["position"];
		if(isdefined(var_7758f108))
		{
			if(var_7758f108 == var_4f5c6866 && var_5806c6ef function_149386d4())
			{
				continue;
			}
			var_5806c6ef function_4a1ecb6c(0.5);
			var_61d1dc95 function_c2931a36(var_61d1dc95.var_48b937ab, 0.5);
		}
	}
}

/*
	Name: function_c0362d70
	Namespace: namespace_c3aa959
	Checksum: 0x2D7F6EA5
	Offset: 0x32A8
	Size: 0x3EF
	Parameters: 1
	Flags: None
*/
function function_c0362d70(var_ec74b091)
{
	/#
		function_895b00("Dev Block strings are not supported");
	#/
	self endon("hash_d5da096");
	var_7ab529c8 = 1200;
	var_b9848c3a = 350;
	if(self.var_9d34dca7 == "qrdrone_mp")
	{
		var_7ab529c8 = 120;
		var_b9848c3a = 1;
	}
	var_7c08c14 = 0.15;
	var_886ed31f = 0.05;
	var_551e1161 = 3;
	var_32459284 = var_551e1161;
	var_3d62d337 = 1;
	var_87daa7fe = var_3d62d337;
	var_a52faa04 = undefined;
	var_87645ac3 = undefined;
	var_40bd487a = self;
	while(isdefined(self))
	{
		if(var_87daa7fe <= 0)
		{
			var_87daa7fe = var_3d62d337;
		}
		if(!namespace_82b91a51::function_193e964(var_ec74b091, var_87daa7fe))
		{
			continue;
		}
		if(!isdefined(self))
		{
			return;
		}
		var_32459284--;
		if(var_32459284 <= 0)
		{
			var_32459284 = var_551e1161;
			var_a52faa04 = function_e1dc201c(var_40bd487a.var_722885f3, var_40bd487a.var_722885f3 - VectorScale((0, 0, 1), 100000), 0, var_40bd487a);
			var_87645ac3 = function_7d15e2f8(var_40bd487a.var_722885f3, var_a52faa04["position"]);
			var_87daa7fe = var_87645ac3 - var_b9848c3a / var_7ab529c8 - var_b9848c3a * var_7c08c14 - var_886ed31f + var_886ed31f;
		}
		if(!isdefined(var_a52faa04))
		{
			continue;
		}
		/#
			namespace_33b293fd::function_a7ee953(isdefined(var_87645ac3));
		#/
		if(var_87645ac3 > var_7ab529c8)
		{
			var_87daa7fe = var_3d62d337;
			continue;
		}
		if(isdefined(var_a52faa04["entity"]))
		{
			var_87daa7fe = var_3d62d337;
			continue;
		}
		if(!isdefined(var_a52faa04["position"]))
		{
			var_87daa7fe = var_3d62d337;
			continue;
		}
		if(!isdefined(var_a52faa04["surfacetype"]))
		{
			var_a52faa04["surfacetype"] = "dirt";
		}
		if(!isdefined(self.var_c49dd27b) || !isdefined(self.var_c49dd27b[var_a52faa04["surfacetype"]]))
		{
			/#
				if(isdefined(self.var_9d34dca7))
				{
					function_895b00("Dev Block strings are not supported" + var_a52faa04["Dev Block strings are not supported"] + "Dev Block strings are not supported" + self.var_9d34dca7);
				}
				else
				{
					function_895b00("Dev Block strings are not supported" + var_a52faa04["Dev Block strings are not supported"] + "Dev Block strings are not supported");
				}
			#/
			return;
		}
		if(isdefined(self.var_c49dd27b[var_a52faa04["surfacetype"]]))
		{
			function_fd4ba5e1(var_ec74b091, self.var_c49dd27b[var_a52faa04["surfacetype"]], var_a52faa04["position"]);
		}
	}
}

/*
	Name: function_8c4a19c3
	Namespace: namespace_c3aa959
	Checksum: 0x11088405
	Offset: 0x36A0
	Size: 0x87
	Parameters: 3
	Flags: None
*/
function function_8c4a19c3(var_43718187, var_93b50d82, var_bfb3493)
{
	var_45e40a78 = function_c9149a61();
	if(var_43718187)
	{
		return var_45e40a78 function_c2931a36(var_93b50d82);
	}
	else if(isdefined(var_bfb3493))
	{
		var_45e40a78 function_4a1ecb6c(0.1);
		return undefined;
	}
}

/*
	Name: function_2464918e
	Namespace: namespace_c3aa959
	Checksum: 0x896B4C2E
	Offset: 0x3730
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_2464918e(var_43718187)
{
	self.var_ccbbc5dd = function_8c4a19c3(var_43718187, "veh_hind_alarm_missile_locking_mp", self.var_ccbbc5dd);
}

/*
	Name: function_fc6333ac
	Namespace: namespace_c3aa959
	Checksum: 0xE54ECBF0
	Offset: 0x3778
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_fc6333ac(var_43718187)
{
	self.var_a28e7490 = function_8c4a19c3(var_43718187, "veh_hind_alarm_missile_locked_mp", self.var_a28e7490);
}

/*
	Name: function_b7cd0832
	Namespace: namespace_c3aa959
	Checksum: 0x475C0F62
	Offset: 0x37C0
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_b7cd0832(var_43718187)
{
	self.var_60b3cc24 = function_8c4a19c3(var_43718187, "veh_hind_alarm_missile_fired", self.var_60b3cc24);
}

/*
	Name: function_acadd7e3
	Namespace: namespace_c3aa959
	Checksum: 0x7927696C
	Offset: 0x3808
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_acadd7e3(var_43718187)
{
	var_45e40a78 = function_c461ca58();
	if(var_43718187)
	{
		self.var_23d2acc8 = var_45e40a78 function_c2931a36("veh_helicopter_alarm");
	}
	else if(isdefined(self.var_23d2acc8) && self.var_23d2acc8)
	{
		var_45e40a78 function_4a1ecb6c(0.1);
	}
}

/*
	Name: function_595cc128
	Namespace: namespace_c3aa959
	Checksum: 0x8FCF2004
	Offset: 0x38A0
	Size: 0xAF
	Parameters: 1
	Flags: None
*/
function function_595cc128(var_45e40a78)
{
	if(!isdefined(var_45e40a78))
	{
		var_b31a6ddf = "tag_origin";
		if(isdefined(self.var_b52e71ae))
		{
			var_b31a6ddf = self.var_b52e71ae;
		}
		var_45e40a78 = function_9b7fda5e(0, self function_d48f2ab3(var_b31a6ddf), "script_origin");
		var_45e40a78 function_37f7858a(self, var_b31a6ddf);
		self thread function_f13d07a3(var_45e40a78);
	}
	return var_45e40a78;
}

/*
	Name: function_c9149a61
	Namespace: namespace_c3aa959
	Checksum: 0x8015AF96
	Offset: 0x3958
	Size: 0x29
	Parameters: 0
	Flags: None
*/
function function_c9149a61()
{
	self.var_95a9b9a2 = function_595cc128(self.var_95a9b9a2);
	return self.var_95a9b9a2;
}

/*
	Name: function_c461ca58
	Namespace: namespace_c3aa959
	Checksum: 0xF694987C
	Offset: 0x3990
	Size: 0x29
	Parameters: 0
	Flags: None
*/
function function_c461ca58()
{
	self.var_7668ed31 = function_595cc128(self.var_7668ed31);
	return self.var_7668ed31;
}

/*
	Name: function_f13d07a3
	Namespace: namespace_c3aa959
	Checksum: 0xCA9315FE
	Offset: 0x39C8
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_f13d07a3(var_144da553)
{
	self waittill("hash_d5da096");
	var_144da553 function_4a1ecb6c(0.1);
	var_144da553 function_dc8c8404();
}

/*
	Name: function_3b932b30
	Namespace: namespace_c3aa959
	Checksum: 0xD3BC2D80
	Offset: 0x3A20
	Size: 0x527
	Parameters: 0
	Flags: None
*/
function function_3b932b30()
{
	self endon("hash_d5da096");
	var_a7d2a161 = 1;
	var_ad4d971e = function_9b7fda5e(0, self.var_722885f3, "script_origin");
	var_235b15d1 = function_9b7fda5e(0, self.var_722885f3, "script_origin");
	var_7f8c9efe = function_9b7fda5e(0, self.var_722885f3, "script_origin");
	var_ad4d971e thread function_1838714b(self);
	var_235b15d1 thread function_1838714b(self);
	var_7f8c9efe thread function_1838714b(self);
	self.var_24f1a6b9 = 0;
	var_3b0dede1 = var_235b15d1 function_c2931a36("veh_qrdrone_move_down");
	var_235b15d1 function_98e1d594("veh_qrdrone_move_down", 0, 0);
	var_b5f6560e = var_ad4d971e function_c2931a36("veh_qrdrone_move_up");
	var_ad4d971e function_98e1d594("veh_qrdrone_move_up", 0, 0);
	var_a0a5b4ee = var_7f8c9efe function_c2931a36("veh_qrdrone_vertical");
	var_7f8c9efe function_98e1d594("veh_qrdrone_vertical", 0, 0);
	var_b31a6ddf = "tag_body";
	var_ad4d971e function_37f7858a(self, var_b31a6ddf);
	var_235b15d1 function_37f7858a(self, var_b31a6ddf);
	var_7f8c9efe function_37f7858a(self, var_b31a6ddf);
	self thread function_b49c4150();
	while(1)
	{
		var_3a0b26fe = self.var_722885f3[2];
		wait(0.1);
		self.var_24f1a6b9 = var_3a0b26fe - self.var_722885f3[2];
		if(self.var_24f1a6b9 < 0)
		{
			var_8b5af710 = self.var_24f1a6b9 * -1;
			var_552e2877 = namespace_4fe3eef1::function_1bc38161(5, 40, 0, 1, var_8b5af710);
			var_44b61995 = namespace_4fe3eef1::function_1bc38161(5, 40, 0.9, 1.1, var_8b5af710);
			var_ea8778eb = namespace_4fe3eef1::function_1bc38161(5, 50, 0, 1, var_8b5af710);
			var_c7951015 = namespace_4fe3eef1::function_1bc38161(5, 50, 0.9, 1.1, var_8b5af710);
		}
		else
		{
			var_552e2877 = 0;
			var_44b61995 = 1;
			var_ea8778eb = namespace_4fe3eef1::function_1bc38161(5, 50, 0, 1, self.var_24f1a6b9);
			var_c7951015 = namespace_4fe3eef1::function_1bc38161(5, 50, 0.95, 0.8, self.var_24f1a6b9);
		}
		var_d3266344 = namespace_4fe3eef1::function_1bc38161(5, 50, 0, 1, self.var_24f1a6b9);
		var_65f47596 = namespace_4fe3eef1::function_1bc38161(5, 50, 1, 0.8, self.var_24f1a6b9);
		var_235b15d1 function_98e1d594("veh_qrdrone_move_down", var_d3266344, var_65f47596, var_a7d2a161);
		var_ad4d971e function_98e1d594("veh_qrdrone_move_up", var_552e2877, var_44b61995, var_a7d2a161);
		var_7f8c9efe function_98e1d594("veh_qrdrone_vertical", var_ea8778eb, var_c7951015, var_a7d2a161);
	}
}

/*
	Name: function_1838714b
	Namespace: namespace_c3aa959
	Checksum: 0x9BD30416
	Offset: 0x3F50
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_1838714b(var_7c07fd78)
{
	var_7c07fd78 waittill("hash_d5da096");
	self function_dc8c8404();
}

/*
	Name: function_5ffdb9d
	Namespace: namespace_c3aa959
	Checksum: 0x38D0BAC6
	Offset: 0x3F88
	Size: 0x22F
	Parameters: 2
	Flags: None
*/
function function_5ffdb9d(var_30d06b90, var_9cba62f7)
{
	self endon("hash_d5da096");
	level endon("hash_2693b45");
	var_a7d2a161 = 2.5;
	var_1aee8e22 = function_9b7fda5e(0, self.var_722885f3, "script_origin");
	var_1aee8e22 thread function_1838714b(self);
	var_7204da72 = var_1aee8e22 function_c2931a36("veh_qrdrone_idle_rotate");
	function_a69510c2(var_7204da72, 0);
	var_b31a6ddf = "tag_body";
	var_1aee8e22 function_37f7858a(self, var_b31a6ddf);
	while(1)
	{
		var_7bdeef39 = function_69c2f683(self.var_6ab6f4fd[1]);
		wait(0.1);
		var_638f75c = var_7bdeef39 - function_69c2f683(self.var_6ab6f4fd[1]);
		var_348548e9 = function_69c2f683(var_638f75c);
		var_7cc0c99 = namespace_4fe3eef1::function_1bc38161(0, 5, 0, 0.4, var_348548e9);
		var_129fd00c = namespace_4fe3eef1::function_1bc38161(0, 4, 0.9, 1.05, var_348548e9);
		var_1aee8e22 function_98e1d594("veh_qrdrone_idle_rotate", var_7cc0c99, var_129fd00c, var_a7d2a161);
	}
}

/*
	Name: function_b49c4150
	Namespace: namespace_c3aa959
	Checksum: 0xD2787177
	Offset: 0x41C0
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_b49c4150()
{
	self endon("hash_d5da096");
	var_5dc5e20a = function_d4b4bd92()[0];
	var_52ab61fa = 1;
	while(1)
	{
		if(function_69c2f683(self.var_24f1a6b9) > 5 && var_52ab61fa)
		{
			self function_921a1574(0, "veh_qrdrone_move_start");
			var_52ab61fa = 0;
		}
		else if(function_69c2f683(self.var_24f1a6b9) < 5 && !var_52ab61fa)
		{
			var_52ab61fa = 1;
		}
		wait(0.05);
	}
}

