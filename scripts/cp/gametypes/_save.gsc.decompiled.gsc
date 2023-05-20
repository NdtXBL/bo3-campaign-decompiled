#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\shared\_oob;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\load_shared;
#using scripts\shared\player_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_9f824288;

/*
	Name: function_2dc19561
	Namespace: namespace_9f824288
	Checksum: 0x941DE505
	Offset: 0x348
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("save", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_9f824288
	Checksum: 0xA7F8EFEA
	Offset: 0x388
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	if(!isdefined(world.var_a249d1db))
	{
		world.var_a249d1db = [];
	}
	if(!isdefined(world.var_ddd24795))
	{
		world.var_ddd24795 = [];
	}
	if(!isdefined(world.var_7fd0dd8a))
	{
		world.var_7fd0dd8a = [];
	}
	foreach(var_5948b3df in namespace_4dbf3ae3::function_4ac0de5b())
	{
		if(isdefined(var_5948b3df.var_d981bb2d) && var_5948b3df.var_d981bb2d)
		{
			var_5948b3df thread function_908f2d2a();
		}
	}
	level.var_67e1f60e = [];
}

/*
	Name: function_2706f7ee
	Namespace: namespace_9f824288
	Checksum: 0x10F70FC8
	Offset: 0x4B0
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function function_2706f7ee()
{
	if(!isdefined(world.var_a249d1db))
	{
		world.var_a249d1db = [];
	}
}

/*
	Name: function_d7916d65
	Namespace: namespace_9f824288
	Checksum: 0x99EC1590
	Offset: 0x4D8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_d7916d65()
{
}

/*
	Name: function_8c0c4b3a
	Namespace: namespace_9f824288
	Checksum: 0xFFAAD58A
	Offset: 0x4E8
	Size: 0x77
	Parameters: 1
	Flags: None
*/
function function_8c0c4b3a(var_4be20d44)
{
	if(isdefined(level.var_31b95173) && level.var_31b95173 != var_4be20d44)
	{
		/#
			function_95d3daf8("Dev Block strings are not supported" + level.var_31b95173 + "Dev Block strings are not supported" + var_4be20d44 + "Dev Block strings are not supported");
		#/
	}
	level.var_31b95173 = var_4be20d44;
}

/*
	Name: function_1bfdd60e
	Namespace: namespace_9f824288
	Checksum: 0x6AF5884B
	Offset: 0x568
	Size: 0x31
	Parameters: 0
	Flags: None
*/
function function_1bfdd60e()
{
	if(!isdefined(level.var_31b95173))
	{
		function_8c0c4b3a(level.var_cd724008);
	}
	return level.var_31b95173;
}

/*
	Name: function_b263cd27
	Namespace: namespace_9f824288
	Checksum: 0x5D629A5E
	Offset: 0x5A8
	Size: 0x8F
	Parameters: 2
	Flags: None
*/
function function_b263cd27(var_4be20d44, var_9368ba0c)
{
	var_3d29746 = function_1bfdd60e();
	if(!isdefined(world.var_ddd24795))
	{
		world.var_ddd24795 = [];
	}
	if(!isdefined(world.var_ddd24795[var_3d29746]))
	{
		world.var_ddd24795[var_3d29746] = [];
	}
	world.var_ddd24795[var_3d29746][var_4be20d44] = var_9368ba0c;
}

/*
	Name: function_30cdba3
	Namespace: namespace_9f824288
	Checksum: 0x633206B1
	Offset: 0x640
	Size: 0x8B
	Parameters: 2
	Flags: None
*/
function function_30cdba3(var_4be20d44, var_7786e1f)
{
	var_3d29746 = function_1bfdd60e();
	if(isdefined(world.var_ddd24795) && isdefined(world.var_ddd24795[var_3d29746]) && isdefined(world.var_ddd24795[var_3d29746][var_4be20d44]))
	{
		return world.var_ddd24795[var_3d29746][var_4be20d44];
	}
	return var_7786e1f;
}

/*
	Name: function_18a1a0fe
	Namespace: namespace_9f824288
	Checksum: 0xA4EE0264
	Offset: 0x6D8
	Size: 0x59
	Parameters: 0
	Flags: None
*/
function function_18a1a0fe()
{
	var_3d29746 = function_1bfdd60e();
	if(isdefined(world.var_ddd24795) && isdefined(world.var_ddd24795[var_3d29746]))
	{
		world.var_ddd24795[var_3d29746] = [];
	}
}

/*
	Name: function_1f201c0b
	Namespace: namespace_9f824288
	Checksum: 0x40514082
	Offset: 0x740
	Size: 0x9
	Parameters: 0
	Flags: Private
*/
function private function_1f201c0b()
{
	return self.var_b3d32c97;
}

/*
	Name: function_bee608f0
	Namespace: namespace_9f824288
	Checksum: 0xAAD627EC
	Offset: 0x758
	Size: 0x141
	Parameters: 2
	Flags: None
*/
function function_bee608f0(var_4be20d44, var_9368ba0c)
{
	if(function_27c72c1b())
	{
		var_98e91480 = "offline";
		if(function_bac7e7e9())
		{
			var_98e91480 = "online";
		}
		var_c98fc56a = "CPZM" + var_98e91480;
	}
	else
	{
		var_c98fc56a = "CP";
	}
	var_3d29746 = self function_1f201c0b();
	if(!isdefined(world.var_7fd0dd8a))
	{
		world.var_7fd0dd8a = [];
	}
	if(!isdefined(world.var_7fd0dd8a[var_c98fc56a]))
	{
		world.var_7fd0dd8a[var_c98fc56a] = [];
	}
	if(!isdefined(world.var_7fd0dd8a[var_c98fc56a][var_3d29746]))
	{
		world.var_7fd0dd8a[var_c98fc56a][var_3d29746] = [];
	}
	world.var_7fd0dd8a[var_c98fc56a][var_3d29746][var_4be20d44] = var_9368ba0c;
}

/*
	Name: function_36adbb9c
	Namespace: namespace_9f824288
	Checksum: 0xC99594FE
	Offset: 0x8A8
	Size: 0x129
	Parameters: 2
	Flags: None
*/
function function_36adbb9c(var_4be20d44, var_7786e1f)
{
	if(function_27c72c1b())
	{
		var_98e91480 = "offline";
		if(function_bac7e7e9())
		{
			var_98e91480 = "online";
		}
		var_c98fc56a = "CPZM" + var_98e91480;
	}
	else
	{
		var_c98fc56a = "CP";
	}
	var_3d29746 = self function_1f201c0b();
	if(isdefined(world.var_7fd0dd8a) && isdefined(world.var_7fd0dd8a[var_c98fc56a]) && isdefined(world.var_7fd0dd8a[var_c98fc56a][var_3d29746]) && isdefined(world.var_7fd0dd8a[var_c98fc56a][var_3d29746][var_4be20d44]))
	{
		return world.var_7fd0dd8a[var_c98fc56a][var_3d29746][var_4be20d44];
	}
	return var_7786e1f;
}

/*
	Name: function_cd9b21ef
	Namespace: namespace_9f824288
	Checksum: 0xEB4B79E7
	Offset: 0x9E0
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_cd9b21ef()
{
	if(function_27c72c1b())
	{
		var_98e91480 = "offline";
		if(function_bac7e7e9())
		{
			var_98e91480 = "online";
		}
		var_c98fc56a = "CPZM" + var_98e91480;
	}
	else
	{
		var_c98fc56a = "CP";
	}
	var_3d29746 = self function_1f201c0b();
	if(isdefined(world.var_7fd0dd8a) && isdefined(world.var_7fd0dd8a[var_c98fc56a]))
	{
		world.var_7fd0dd8a[var_c98fc56a] = [];
	}
}

/*
	Name: function_37ae30c6
	Namespace: namespace_9f824288
	Checksum: 0x8CB05BA6
	Offset: 0xAC0
	Size: 0x249
	Parameters: 0
	Flags: None
*/
function function_37ae30c6()
{
	if(function_27c72c1b())
	{
		var_98e91480 = "offline";
		if(function_bac7e7e9())
		{
			var_98e91480 = "online";
		}
		var_c98fc56a = "CPZM" + var_98e91480;
	}
	else
	{
		var_c98fc56a = "CP";
	}
	if(!isdefined(world.var_7fd0dd8a))
	{
		world.var_7fd0dd8a = [];
	}
	if(!isdefined(world.var_7fd0dd8a[var_c98fc56a]))
	{
		world.var_7fd0dd8a[var_c98fc56a] = [];
	}
	var_e22c8ccd = function_391512da(world.var_7fd0dd8a[var_c98fc56a]);
	if(isdefined(var_e22c8ccd))
	{
		foreach(var_f54b9c82 in var_e22c8ccd)
		{
			var_9f2fde67 = 0;
			foreach(var_5dc5e20a in level.var_2395e945)
			{
				if(var_f54b9c82 === var_5dc5e20a function_1f201c0b())
				{
					var_9f2fde67 = 1;
					break;
				}
			}
			if(!var_9f2fde67)
			{
				function_6c668988(world.var_7fd0dd8a[var_c98fc56a], var_f54b9c82, 1);
			}
		}
	}
}

/*
	Name: function_f6ab8f28
	Namespace: namespace_9f824288
	Checksum: 0x89B48C00
	Offset: 0xD18
	Size: 0x25
	Parameters: 0
	Flags: None
*/
function function_f6ab8f28()
{
	return function_4bd0142f("ui_blocksaves", 1) == 0;
}

/*
	Name: function_fb150717
	Namespace: namespace_9f824288
	Checksum: 0x3F0242E0
	Offset: 0xD48
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_fb150717()
{
	if(isdefined(level.var_cc93e6eb) && level.var_cc93e6eb || function_4bd0142f("scr_no_checkpoints", 0))
	{
		return;
	}
	level thread function_74fcb9ca();
}

/*
	Name: function_74fcb9ca
	Namespace: namespace_9f824288
	Checksum: 0x7B915531
	Offset: 0xDA0
	Size: 0x8B
	Parameters: 0
	Flags: Private
*/
function private function_74fcb9ca()
{
	level notify("hash_5d2cdd99");
	level endon("hash_5d2cdd99");
	level endon("hash_2693b45");
	function_d2250e2f();
	wait(0.05);
	wait(0.05);
	function_297d2d7c();
	function_d5bb3a54();
	level thread function_152fdd8c(0);
}

/*
	Name: function_908f2d2a
	Namespace: namespace_9f824288
	Checksum: 0xC87FDA4F
	Offset: 0xE38
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_908f2d2a()
{
	self endon("hash_128f8789");
	self waittill("hash_4dbf3ae3");
	function_5d2cdd99();
}

/*
	Name: function_5d2cdd99
	Namespace: namespace_9f824288
	Checksum: 0x82F1B4C4
	Offset: 0xE70
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_5d2cdd99(var_c36855a9)
{
	if(!isdefined(var_c36855a9))
	{
		var_c36855a9 = 0;
	}
	level thread function_1add9d4a(var_c36855a9);
}

/*
	Name: function_d5bb3a54
	Namespace: namespace_9f824288
	Checksum: 0x99EC1590
	Offset: 0xEB0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_d5bb3a54()
{
}

/*
	Name: function_152fdd8c
	Namespace: namespace_9f824288
	Checksum: 0x3A937828
	Offset: 0xEC0
	Size: 0x29B
	Parameters: 1
	Flags: None
*/
function function_152fdd8c(var_67520c6a)
{
	if(function_f6ab8f28())
	{
		wait(0.2);
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_5dc5e20a namespace_5dc5e20a::function_a05055fe();
			var_5dc5e20a function_bee608f0("saved_weapon", var_5dc5e20a.var_76789e00.var_4be20d44);
			var_5dc5e20a function_bee608f0("saved_weapondata", var_5dc5e20a.var_dfd8c1e1);
			var_5dc5e20a function_bee608f0("lives", var_5dc5e20a.var_dc4a16f6);
			var_5dc5e20a.var_76789e00 = undefined;
			var_5dc5e20a.var_dfd8c1e1 = undefined;
		}
		var_5dc5e20a = namespace_82b91a51::function_5e770196();
		if(isdefined(var_5dc5e20a))
		{
			var_5dc5e20a function_bee608f0("savegame_score", var_5dc5e20a.var_44fb8955["score"]);
			var_5dc5e20a function_bee608f0("savegame_kills", var_5dc5e20a.var_44fb8955["kills"]);
			var_5dc5e20a function_bee608f0("savegame_assists", var_5dc5e20a.var_44fb8955["assists"]);
			var_5dc5e20a function_bee608f0("savegame_incaps", var_5dc5e20a.var_44fb8955["incaps"]);
			var_5dc5e20a function_bee608f0("savegame_revives", var_5dc5e20a.var_44fb8955["revives"]);
		}
		function_ba933d27();
		wait(var_67520c6a);
		if(isdefined(var_5dc5e20a))
		{
			namespace_82b91a51::function_964b7eb7(var_5dc5e20a, &"COOP_REACHED_SKIPTO");
		}
	}
}

/*
	Name: function_319d38eb
	Namespace: namespace_9f824288
	Checksum: 0x856B9D76
	Offset: 0x1168
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_319d38eb()
{
	if(isdefined(level.var_fded4d6e) && level.var_fded4d6e)
	{
		return 0;
	}
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(!function_5b49d38c(var_5dc5e20a))
		{
			return 0;
		}
		if(var_5dc5e20a namespace_71e9cb84::function_7922262b("burn"))
		{
			return 0;
		}
		if(var_5dc5e20a namespace_564407fb::function_38a9aff8())
		{
			return 0;
		}
		if(var_5dc5e20a.var_e0beb6ee == "spectator")
		{
			if(isdefined(self.var_ac3f0a6a))
			{
				return 0;
			}
			else
			{
				return 1;
			}
		}
		if(var_5dc5e20a namespace_6ece97b7::function_b99692eb())
		{
			return 0;
		}
		if(isdefined(var_5dc5e20a.var_31863fce) && var_5dc5e20a.var_31863fce)
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_1add9d4a
	Namespace: namespace_9f824288
	Checksum: 0x46ADFA6B
	Offset: 0x12E0
	Size: 0x13B
	Parameters: 1
	Flags: Private
*/
function private function_1add9d4a(var_c36855a9)
{
	level notify("hash_1add9d4a");
	level endon("hash_1add9d4a");
	level endon("hash_7be398c7");
	level endon("hash_2693b45");
	wait(0.1);
	while(1)
	{
		if(function_147f4ca3())
		{
			wait(0.1);
			function_d2250e2f();
			wait(6);
			for(var_e2502f23 = 0; var_e2502f23 < 5; var_e2502f23++)
			{
				if(function_319d38eb())
				{
					break;
				}
				wait(1);
			}
			if(var_e2502f23 == 5)
			{
				continue;
			}
			function_297d2d7c();
			function_d5bb3a54();
			if(var_c36855a9)
			{
				level thread function_152fdd8c(1.5);
			}
			return;
		}
		wait(1);
	}
}

/*
	Name: function_147f4ca3
	Namespace: namespace_9f824288
	Checksum: 0xF03359C1
	Offset: 0x1428
	Size: 0x1EF
	Parameters: 0
	Flags: None
*/
function function_147f4ca3()
{
	if(isdefined(level.var_cc93e6eb) && level.var_cc93e6eb)
	{
		return 0;
	}
	if(function_4bd0142f("scr_no_checkpoints", 0))
	{
		return 0;
	}
	if(isdefined(level.var_fded4d6e) && level.var_fded4d6e)
	{
		return 0;
	}
	var_3d59bfa3 = 0;
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(var_5dc5e20a function_2c89c30c())
		{
			var_3d59bfa3++;
		}
	}
	var_24cd4120 = level.var_2395e945.size;
	if(var_3d59bfa3 < var_24cd4120)
	{
		return 0;
	}
	if(!function_8dc86b60())
	{
		return 0;
	}
	if(!function_a3a9b003())
	{
		return 0;
	}
	if(isdefined(level.var_67e1f60e))
	{
		foreach(var_86365a77 in level.var_67e1f60e)
		{
			if(!level [[var_86365a77]]())
			{
				return 0;
			}
		}
	}
	return 1;
}

/*
	Name: function_2c89c30c
	Namespace: namespace_9f824288
	Checksum: 0xF56B5C4E
	Offset: 0x1620
	Size: 0x265
	Parameters: 0
	Flags: Private
*/
function private function_2c89c30c()
{
	var_f839d525 = 1;
	if(isdefined(self.var_3a90f16b) && isdefined(self.var_47c252e3) && self.var_47c252e3 > 0)
	{
		var_f839d525 = self.var_3a90f16b / self.var_47c252e3;
	}
	if(var_f839d525 < 0.7)
	{
		return 0;
	}
	if(isdefined(self.var_1f7aa415) && self.var_1f7aa415 > GetTime() - 1500)
	{
		return 0;
	}
	if(self namespace_71e9cb84::function_7922262b("burn"))
	{
		return 0;
	}
	if(self function_507b9a81())
	{
		return 0;
	}
	if(self function_3b370451())
	{
		return 0;
	}
	if(self function_8b6e8518())
	{
		return 0;
	}
	if(self namespace_82b91a51::function_f152131e())
	{
		return 0;
	}
	if(self namespace_564407fb::function_38a9aff8())
	{
		return 0;
	}
	if(self.var_e0beb6ee == "spectator")
	{
		if(isdefined(self.var_ac3f0a6a))
		{
			return 0;
		}
		else
		{
			return 1;
		}
	}
	if(self namespace_6ece97b7::function_b99692eb())
	{
		return 0;
	}
	if(isdefined(self.var_31863fce) && self.var_31863fce)
	{
		return 0;
	}
	if(self namespace_957e94ce::function_7922262b("mobile_armory_in_use"))
	{
		return 0;
	}
	foreach(var_dfcc01fd in self function_21995b5a())
	{
		var_18dd9b7b = self function_3e11318f(var_dfcc01fd);
		if(var_18dd9b7b > 0.1)
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_a3a9b003
	Namespace: namespace_9f824288
	Checksum: 0x640ECE73
	Offset: 0x1890
	Size: 0x183
	Parameters: 0
	Flags: Private
*/
function private function_a3a9b003()
{
	if(!function_4bd0142f("tu1_saveGameAiProximityCheck", 1))
	{
		return 1;
	}
	var_65184ffa = function_b8494651("axis");
	foreach(var_d84e54db in var_65184ffa)
	{
		if(!isdefined(var_d84e54db))
		{
			continue;
		}
		if(!function_5b49d38c(var_d84e54db))
		{
			continue;
		}
		if(function_8d0347b8(var_d84e54db) && var_d84e54db function_b7f9b625())
		{
			continue;
		}
		if(isdefined(var_d84e54db.var_c584775c) && var_d84e54db.var_c584775c)
		{
			continue;
		}
		var_e0fabc1 = var_d84e54db function_2808d83d();
		if(var_e0fabc1 <= 80)
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_f70dd749
	Namespace: namespace_9f824288
	Checksum: 0x800E3BA6
	Offset: 0x1A20
	Size: 0x125
	Parameters: 0
	Flags: Private
*/
function private function_f70dd749()
{
	if(!isdefined(self.var_6050ab17))
	{
		return 1;
	}
	if(!function_65f192a6(self.var_6050ab17))
	{
		return 1;
	}
	if(isdefined(self.var_8432fff3) && isdefined(self.var_8432fff3.var_b07228b6) && function_65f192a6(self.var_8432fff3.var_b07228b6))
	{
		return 0;
	}
	var_e0fabc1 = self function_2808d83d();
	if(var_e0fabc1 < 500)
	{
		return 0;
	}
	else if(var_e0fabc1 > 1000 || var_e0fabc1 < 0)
	{
		return 1;
	}
	else if(function_8d0347b8(self) && self function_75754e3a(self.var_6050ab17) && self function_7bede136())
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_2808d83d
	Namespace: namespace_9f824288
	Checksum: 0x3D97FDB9
	Offset: 0x1B50
	Size: 0xDD
	Parameters: 0
	Flags: None
*/
function function_2808d83d()
{
	var_587c5717 = -1;
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_2a97d9fd = function_7d15e2f8(var_5dc5e20a.var_722885f3, self.var_722885f3);
		if(var_2a97d9fd < var_587c5717 || var_587c5717 < 0)
		{
			var_587c5717 = var_2a97d9fd;
		}
	}
	return var_587c5717;
}

/*
	Name: function_8dc86b60
	Namespace: namespace_9f824288
	Checksum: 0xDE2A5E1F
	Offset: 0x1C38
	Size: 0x181
	Parameters: 0
	Flags: Private
*/
function private function_8dc86b60()
{
	var_db6b9d9f = 0;
	foreach(var_f461b5d in function_99201f25("grenade", "classname"))
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_2c3e05ad = function_cb3d1c9b(var_f461b5d.var_722885f3, var_5dc5e20a.var_722885f3);
			if(var_2c3e05ad < 90000)
			{
				var_db6b9d9f++;
			}
		}
	}
	if(var_db6b9d9f > 0 && var_db6b9d9f >= level.var_9b1393e7.size)
	{
		return 0;
	}
	return 1;
}

