#using scripts\codescripts\struct;
#using scripts\cp\gametypes\_save;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\visionset_mgr_shared;

#namespace namespace_16f9ecd3;

/*
	Name: __init__sytem__
	Namespace: namespace_16f9ecd3
	Checksum: 0xC005C270
	Offset: 0x2D8
	Size: 0x3B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("oed", &__init__, &__main__, undefined);
}

/*
	Name: __init__
	Namespace: namespace_16f9ecd3
	Checksum: 0x14F4E14B
	Offset: 0x320
	Size: 0x3BB
	Parameters: 0
	Flags: None
*/
function __init__()
{
	clientfield::register("toplayer", "ev_toggle", 1, 1, "int");
	clientfield::register("toplayer", "sitrep_toggle", 1, 1, "int");
	clientfield::register("toplayer", "tmode_toggle", 1, 3, "int");
	clientfield::register("toplayer", "active_dni_fx", 1, 1, "counter");
	clientfield::register("toplayer", "hack_dni_fx", 1, 1, "counter");
	clientfield::register("actor", "thermal_active", 1, 1, "int");
	clientfield::register("actor", "sitrep_material", 1, 1, "int");
	clientfield::register("actor", "force_tmode", 1, 1, "int");
	clientfield::register("actor", "tagged", 1, 1, "int");
	clientfield::register("vehicle", "thermal_active", 1, 1, "int");
	clientfield::register("vehicle", "sitrep_material", 1, 1, "int");
	clientfield::register("scriptmover", "thermal_active", 1, 1, "int");
	clientfield::register("scriptmover", "sitrep_material", 1, 1, "int");
	clientfield::register("item", "sitrep_material", 1, 1, "int");
	if(!isdefined(level.var_598df736))
	{
		level.var_598df736 = 50;
	}
	visionset_mgr::register_info("visionset", "tac_mode", 1, level.var_598df736, 15, 1, &visionset_mgr::ramp_in_out_thread_per_player, 0);
	callback::on_spawned(&on_player_spawned);
	spawner::add_global_spawn_function("axis", &function_d47e8f1b);
	spawner::add_global_spawn_function("allies", &function_d47e8f1b);
	level.var_d829fe9f = 1;
	level.var_1e983b11 = 1;
	level.var_f8b5c03f = 0;
	level.var_b3ce91e0 = &function_b3ce91e0;
	level.disable_thermal = &disable_thermal;
}

/*
	Name: __main__
	Namespace: namespace_16f9ecd3
	Checksum: 0x3F596E70
	Offset: 0x6E8
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function __main__()
{
	function_9b299cd6();
}

/*
	Name: function_9b299cd6
	Namespace: namespace_16f9ecd3
	Checksum: 0x83F9C8ED
	Offset: 0x708
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_9b299cd6()
{
	waittillframeend;
	if(level.var_1e983b11)
	{
		Array::thread_all(util::query_ents(associativeArray("classname", "weapon_"), 1, [], 1, 1), &function_e228c18a);
	}
}

/*
	Name: on_player_spawned
	Namespace: namespace_16f9ecd3
	Checksum: 0xBEAB933A
	Offset: 0x788
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
	self.var_d829fe9f = level.var_d829fe9f;
	self.var_aa3f3ac2 = 0;
	self function_1c59df50(self.var_aa3f3ac2);
	self.var_1e983b11 = level.var_1e983b11;
	self.var_d5846b2c = 0;
	var_99268403 = 0;
	if(!SessionModeIsCampaignZombiesGame())
	{
		if(isdefined(GetLocalProfileInt("tacticalModeAutoOn")) && GetLocalProfileInt("tacticalModeAutoOn"))
		{
			self.var_d5846b2c = 1;
			var_99268403 = 0;
		}
	}
	self function_12a9df06(self.var_d5846b2c, var_99268403);
	self clientfield::set_to_player("sitrep_toggle", 1);
	self thread function_cec8e852();
	self thread init_heroes();
}

/*
	Name: function_cec8e852
	Namespace: namespace_16f9ecd3
	Checksum: 0x9D6433FD
	Offset: 0x8D0
	Size: 0x1F7
	Parameters: 0
	Flags: None
*/
function function_cec8e852()
{
	self endon("death");
	self endon("hash_3b109bff");
	while(1)
	{
		/#
			level flagsys::wait_till_clear("Dev Block strings are not supported");
		#/
		if(level.var_d829fe9f && self.var_d829fe9f && self ActionSlotOneButtonPressed())
		{
			if(!scene::is_igc_active())
			{
				self.var_aa3f3ac2 = !isdefined(self.var_aa3f3ac2) && self.var_aa3f3ac2;
				self function_1c59df50(self.var_aa3f3ac2);
				while(self ActionSlotOneButtonPressed())
				{
					wait(0.05);
				}
			}
		}
		if(!SessionModeIsCampaignZombiesGame() && level.var_1e983b11 && self.var_1e983b11 && self ActionSlotFourButtonPressed())
		{
			if(!scene::is_igc_active())
			{
				self.var_d5846b2c = !isdefined(self.var_d5846b2c) && self.var_d5846b2c;
				self function_12a9df06(self.var_d5846b2c);
				visionset_mgr::activate("visionset", "tac_mode", self, 0.05, 0, 0.8);
				wait(0.85);
				while(self ActionSlotFourButtonPressed())
				{
					wait(0.05);
				}
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_d47e8f1b
	Namespace: namespace_16f9ecd3
	Checksum: 0x64FC4F22
	Offset: 0xAD0
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_d47e8f1b()
{
	if(self.team == "axis")
	{
		self function_b3ce91e0();
	}
	else if(self.team == "allies")
	{
		self function_b3ce91e0();
	}
}

/*
	Name: function_b3ce91e0
	Namespace: namespace_16f9ecd3
	Checksum: 0x326818C7
	Offset: 0xB38
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_b3ce91e0(str_disable)
{
	self endon("death");
	self clientfield::set("thermal_active", 1);
	self thread function_ba755d7a();
	if(isdefined(str_disable))
	{
		level waittill(str_disable);
		self disable_thermal();
	}
}

/*
	Name: function_ba755d7a
	Namespace: namespace_16f9ecd3
	Checksum: 0x1CBE5FFE
	Offset: 0xBB8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_ba755d7a()
{
	self endon("disable_thermal");
	self waittill("death");
	if(isdefined(self))
	{
		self disable_thermal();
	}
}

/*
	Name: disable_thermal
	Namespace: namespace_16f9ecd3
	Checksum: 0xA498E3D0
	Offset: 0xC00
	Size: 0x31
	Parameters: 0
	Flags: None
*/
function disable_thermal()
{
	self clientfield::set("thermal_active", 0);
	self notify("disable_thermal");
}

/*
	Name: function_b3c589a6
	Namespace: namespace_16f9ecd3
	Checksum: 0x7213FD1F
	Offset: 0xC40
	Size: 0xAD
	Parameters: 1
	Flags: None
*/
function function_b3c589a6(b_enabled)
{
	if(!isdefined(b_enabled))
	{
		b_enabled = 1;
	}
	level.var_d829fe9f = b_enabled;
	foreach(e_player in level.players)
	{
		e_player.var_d829fe9f = b_enabled;
	}
}

/*
	Name: function_e234a6a6
	Namespace: namespace_16f9ecd3
	Checksum: 0x39B38F1C
	Offset: 0xCF8
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_e234a6a6(b_enabled)
{
	if(!isdefined(b_enabled))
	{
		b_enabled = 1;
	}
	self.var_d829fe9f = b_enabled;
	if(!b_enabled)
	{
		self function_1c59df50(b_enabled);
	}
}

/*
	Name: function_fc1750c9
	Namespace: namespace_16f9ecd3
	Checksum: 0xC4891479
	Offset: 0xD50
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_fc1750c9(b_enabled)
{
	if(!isdefined(b_enabled))
	{
		b_enabled = 1;
	}
	self.var_1e983b11 = b_enabled;
	if(b_enabled)
	{
		if(!SessionModeIsCampaignZombiesGame() && (isdefined(GetLocalProfileInt("tacticalModeAutoOn")) && GetLocalProfileInt("tacticalModeAutoOn")))
		{
			self function_12a9df06(1, 0);
		}
	}
	else
	{
		self function_12a9df06(0, 0);
	}
}

/*
	Name: function_35ce409
	Namespace: namespace_16f9ecd3
	Checksum: 0x582CD158
	Offset: 0xE20
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_35ce409(b_enabled)
{
	if(!isdefined(b_enabled))
	{
		b_enabled = 1;
	}
	function_1c59df50(b_enabled);
}

/*
	Name: function_1c59df50
	Namespace: namespace_16f9ecd3
	Checksum: 0xC5F1F7BF
	Offset: 0xE60
	Size: 0x163
	Parameters: 1
	Flags: None
*/
function function_1c59df50(b_enabled)
{
	if(!isdefined(b_enabled))
	{
		b_enabled = 1;
	}
	self.var_aa3f3ac2 = b_enabled;
	if(self.var_aa3f3ac2)
	{
		if(isdefined(self.var_d5846b2c) && self.var_d5846b2c)
		{
			self.var_2b22c8c8 = 1;
		}
		else
		{
			self.var_2b22c8c8 = 0;
		}
		self function_12a9df06(0, 0, 0);
	}
	if(self.var_aa3f3ac2)
	{
		self notify("hash_2b839b92");
	}
	else
	{
		self notify("hash_49d8a575");
	}
	self clientfield::set_to_player("ev_toggle", self.var_aa3f3ac2);
	if(!self.var_aa3f3ac2)
	{
		if(isdefined(self.var_2b22c8c8) && self.var_2b22c8c8)
		{
			if(!SessionModeIsCampaignZombiesGame() && (isdefined(GetLocalProfileInt("tacticalModeAutoOn")) && GetLocalProfileInt("tacticalModeAutoOn")))
			{
				self function_12a9df06(1, 0, 0);
			}
		}
	}
}

/*
	Name: function_12a9df06
	Namespace: namespace_16f9ecd3
	Checksum: 0x7DABBB2C
	Offset: 0xFD0
	Size: 0x193
	Parameters: 3
	Flags: None
*/
function function_12a9df06(b_enabled, var_99268403, var_8bdc47ed)
{
	if(!isdefined(b_enabled))
	{
		b_enabled = 1;
	}
	if(!isdefined(var_99268403))
	{
		var_99268403 = 1;
	}
	if(!isdefined(var_8bdc47ed))
	{
		var_8bdc47ed = 1;
	}
	self.var_d5846b2c = b_enabled;
	if(var_8bdc47ed && self.var_d5846b2c)
	{
		self function_1c59df50(0);
	}
	if(self.var_d5846b2c)
	{
		self notify("hash_8d6266d8");
	}
	else
	{
		self notify("hash_e0fad893");
	}
	self function_fe41568a(self.var_d5846b2c);
	code = 0;
	if(!isdefined(self.var_73c16596))
	{
		self.var_73c16596 = 0;
	}
	self.var_73c16596++;
	self.var_73c16596 = self.var_73c16596 & 1;
	code = self.var_73c16596;
	if(var_99268403)
	{
		code = code | 2;
	}
	if(self.var_d5846b2c)
	{
		code = code | 4;
	}
	self clientfield::set_to_player("tmode_toggle", code);
	self savegame::function_bee608f0("tmode", self.var_d5846b2c);
}

/*
	Name: init_heroes
	Namespace: namespace_16f9ecd3
	Checksum: 0x22F410BC
	Offset: 0x1170
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function init_heroes()
{
	var_c649c515 = GetEntArray();
	foreach(e_hero in var_c649c515)
	{
		if(isdefined(e_hero.is_hero) && e_hero.is_hero)
		{
			e_hero thread function_b3ce91e0();
		}
	}
}

/*
	Name: function_f0f40bb5
	Namespace: namespace_16f9ecd3
	Checksum: 0x9B87AA15
	Offset: 0x1248
	Size: 0xAD
	Parameters: 1
	Flags: None
*/
function function_f0f40bb5(b_enabled)
{
	if(!isdefined(b_enabled))
	{
		b_enabled = 1;
	}
	level.var_1e983b11 = b_enabled;
	foreach(e_player in level.players)
	{
		e_player.var_1e983b11 = b_enabled;
	}
}

/*
	Name: function_6e4b8a4f
	Namespace: namespace_16f9ecd3
	Checksum: 0xD7561243
	Offset: 0x1300
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_6e4b8a4f(b_enabled)
{
	if(!isdefined(b_enabled))
	{
		b_enabled = 1;
	}
	self.var_10b39c91 = b_enabled;
	self clientfield::set("force_tmode", b_enabled);
}

/*
	Name: function_e228c18a
	Namespace: namespace_16f9ecd3
	Checksum: 0x6A66AF27
	Offset: 0x1358
	Size: 0x93
	Parameters: 2
	Flags: None
*/
function function_e228c18a(var_63c5785a, str_disable)
{
	if(!isdefined(var_63c5785a))
	{
		var_63c5785a = 0;
	}
	self endon("death");
	self clientfield::set("sitrep_material", 1);
	self thread function_6042d612();
	if(isdefined(str_disable))
	{
		level waittill(str_disable);
		self function_14ec2d71();
	}
}

/*
	Name: function_6042d612
	Namespace: namespace_16f9ecd3
	Checksum: 0xFAEF3FF8
	Offset: 0x13F8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_6042d612()
{
	self waittill("death");
	if(isdefined(self))
	{
		self function_14ec2d71();
	}
}

/*
	Name: function_14ec2d71
	Namespace: namespace_16f9ecd3
	Checksum: 0xFCDE8D83
	Offset: 0x1430
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_14ec2d71()
{
	self clientfield::set("sitrep_material", 0);
}

/*
	Name: function_cb36c1ba
	Namespace: namespace_16f9ecd3
	Checksum: 0xFF22C134
	Offset: 0x1460
	Size: 0xE9
	Parameters: 1
	Flags: None
*/
function function_cb36c1ba(b_active)
{
	if(!isdefined(b_active))
	{
		b_active = 1;
	}
	foreach(player in level.players)
	{
		player.var_c5bcb2b9 = !isdefined(player.var_c5bcb2b9) && player.var_c5bcb2b9;
		player clientfield::set_to_player("sitrep_toggle", player.var_c5bcb2b9);
	}
}

/*
	Name: function_34347f5d
	Namespace: namespace_16f9ecd3
	Checksum: 0xA1955D30
	Offset: 0x1558
	Size: 0xC7
	Parameters: 0
	Flags: None
*/
function function_34347f5d()
{
	if(!isdefined(self.angles))
	{
		self.angles = (0, 0, 0);
	}
	var_8b914409 = level.scriptbundles["sitrep"][self.scriptbundlename];
	var_92fa0808 = util::spawn_model(var_8b914409.model, self.origin, self.angles);
	if(isdefined(var_8b914409.var_259ea471))
	{
		var_92fa0808.var_79c8542e = var_8b914409.var_259ea471;
	}
	else
	{
		var_92fa0808.var_79c8542e = 0;
	}
	return var_92fa0808;
}

