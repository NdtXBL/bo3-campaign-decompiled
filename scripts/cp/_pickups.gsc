#using scripts\codescripts\struct;
#using scripts\cp\_laststand;
#using scripts\cp\_pickups;
#using scripts\cp\_scoreevents;
#using scripts\cp\_util;
#using scripts\shared\ai_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\statemachine_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_death_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_9ae542c5;

/*
	Name: function_9b385ca5
	Namespace: namespace_9ae542c5
	Checksum: 0x6EE9770B
	Offset: 0x3C8
	Size: 0xE5
	Parameters: 0
	Flags: None
*/
function function_9b385ca5()
{
	namespace_d63e16f5::function_9b385ca5();
	self.var_b40c8b78 = 1;
	self.var_74ef8b0c = 0;
	self.var_e7b9c303 = 128;
	self.var_6aa5050d = 256;
	self.var_90a8298c = 2;
	self.var_af900c85 = (0, 0, 0);
	self.var_dcf4479e = 0;
	self.var_db666eb1 = VectorScale((1, 0, 0), 45);
	self.var_2655604d = 64;
	self.var_ba68bd3 = 0;
	self.var_f4821922 = 1;
	self.var_5c6e11a4 = [];
	self.var_5c6e11a4[0] = &function_915789e0;
	self.var_c7279522 = [];
	self.var_c7279522[0] = &function_f84750dc;
}

/*
	Name: function_e57da5ad
	Namespace: namespace_9ae542c5
	Checksum: 0x2322EA50
	Offset: 0x4B8
	Size: 0x31
	Parameters: 0
	Flags: None
*/
function function_e57da5ad()
{
	if(isdefined(self.var_ce54c88c))
	{
		return self.var_ce54c88c;
	}
	else if(isdefined(self.var_a6c557b4))
	{
		return self.var_a6c557b4;
	}
	return undefined;
}

/*
	Name: spawn_at_struct
	Namespace: namespace_9ae542c5
	Checksum: 0x6E49965B
	Offset: 0x4F8
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function spawn_at_struct(str_struct)
{
	if(!isdefined(str_struct.angles))
	{
		str_struct.angles = (0, 0, 0);
	}
	function_2156149c(str_struct.origin, str_struct.angles);
}

/*
	Name: function_8f5ea154
	Namespace: namespace_9ae542c5
	Checksum: 0x6734B55
	Offset: 0x560
	Size: 0x2B
	Parameters: 2
	Flags: None
*/
function function_8f5ea154(v_pos, v_angles)
{
	function_2156149c(v_pos, v_angles);
}

/*
	Name: function_2156149c
	Namespace: namespace_9ae542c5
	Checksum: 0xAD595426
	Offset: 0x598
	Size: 0x97
	Parameters: 2
	Flags: None
*/
function function_2156149c(v_pos, v_angles)
{
	while(1)
	{
		if(isdefined(self.var_22e59a35))
		{
			[[self.var_22e59a35]](v_pos, v_angles);
		}
		else
		{
			self.var_2cb2c9c5 = "Press ^3[{+usereload}]^7 to drop " + self.var_1c709f79;
			function_4d925e68(v_pos, v_angles);
		}
		self waittill("hash_f9bc44a3");
		function_d2e1e79d();
	}
}

/*
	Name: function_4d925e68
	Namespace: namespace_9ae542c5
	Checksum: 0x908A9C1C
	Offset: 0x638
	Size: 0x2CB
	Parameters: 2
	Flags: None
*/
function function_4d925e68(v_pos, v_angles)
{
	if(!isdefined(self.var_a6c557b4))
	{
		self.var_a6c557b4 = util::spawn_model(self.var_c65ad26d, v_pos + (0, 0, self.var_ba68bd3), v_angles);
		self.var_a6c557b4 notsolid();
		if(isdefined(self.var_1fd664a9))
		{
			PlayFXOnTag(self.var_1fd664a9, self.var_a6c557b4, "tag_origin");
		}
	}
	self.var_ec6c2cf4 = "Press and hold ^3[{+activate}]^7 to pick up " + self.var_1c709f79;
	if(!isdefined(self.var_52e14d7c))
	{
		e_trigger = namespace_d63e16f5::function_89293eac(v_pos);
		namespace_d63e16f5::function_2180809b(e_trigger);
	}
	self.var_52e14d7c SetVisibleToAll();
	self.var_52e14d7c.origin = v_pos;
	self.var_52e14d7c notify("hash_2e14467e");
	self.var_52e14d7c notify("hash_4e236be4", 1);
	self.var_52e14d7c setHintString(self.var_ec6c2cf4);
	self.var_52e14d7c.var_23a943a5 = self.var_1c709f79;
	if(!isdefined(self.var_52e14d7c.targetname))
	{
		m_str_targetname = "";
		var_8b14ca2b = StrTok(ToLower(self.var_1c709f79), " ");
		foreach(var_d928705c in var_8b14ca2b)
		{
			if(n_index > 0)
			{
				m_str_targetname = m_str_targetname + "_";
			}
			m_str_targetname = m_str_targetname + var_d928705c;
		}
		self.var_52e14d7c.targetname = "trigger_" + m_str_targetname;
	}
	if(self.var_f4821922)
	{
		self thread namespace_d63e16f5::function_a72a316b();
	}
}

/*
	Name: function_107b02f9
	Namespace: namespace_9ae542c5
	Checksum: 0x356DD499
	Offset: 0x910
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_107b02f9()
{
	self endon("hash_2f46dd38");
	if(self.var_dcf4479e <= 0)
	{
		return;
	}
	self thread function_ac20c633();
	wait(self.var_dcf4479e);
	if(isdefined(self.var_c07a933c))
	{
		[[self.var_c07a933c]]();
	}
	else
	{
		function_cefc7c8b();
	}
}

/*
	Name: function_ac20c633
	Namespace: namespace_9ae542c5
	Checksum: 0x27912AB0
	Offset: 0x988
	Size: 0x9D
	Parameters: 0
	Flags: None
*/
function function_ac20c633()
{
	self endon("hash_2f46dd38");
	for(n_time_remaining = self.var_dcf4479e; n_time_remaining >= 0 && isdefined(self.var_a6c557b4);  = self.var_dcf4479e)
	{
		/#
			print3d(self.var_a6c557b4.origin + VectorScale((0, 0, 1), 15), n_time_remaining, (1, 0, 0), 1, 1, 20);
		#/
		wait(1);
	}
}

/*
	Name: function_cefc7c8b
	Namespace: namespace_9ae542c5
	Checksum: 0xFA6D1213
	Offset: 0xA30
	Size: 0x11
	Parameters: 0
	Flags: None
*/
function function_cefc7c8b()
{
	self notify("hash_f9bc44a3");
}

/*
	Name: function_d2e1e79d
	Namespace: namespace_9ae542c5
	Checksum: 0x6BED268A
	Offset: 0xA50
	Size: 0x2F
	Parameters: 0
	Flags: None
*/
function function_d2e1e79d()
{
	if(self.var_74ef8b0c > 0)
	{
	}
	else if(self.var_b40c8b78 > 0)
	{
		wait(self.var_b40c8b78);
	}
}

/*
	Name: function_915789e0
	Namespace: namespace_9ae542c5
	Checksum: 0x112051C1
	Offset: 0xA88
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_915789e0(e_triggerer)
{
	self.var_a6c557b4 delete();
	self.var_52e14d7c SetInvisibleToAll();
}

/*
	Name: function_f84750dc
	Namespace: namespace_9ae542c5
	Checksum: 0xFFB7B0CF
	Offset: 0xAD0
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_f84750dc(e_triggerer)
{
	function_4d925e68(e_triggerer.origin, e_triggerer.angles);
}

/*
	Name: function_5fba2032
	Namespace: namespace_9ae542c5
	Checksum: 0x12461893
	Offset: 0xB10
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_5fba2032()
{
	namespace_d63e16f5::function_5fba2032();
}

#namespace pickups;

/*
	Name: function_9ae542c5
	Namespace: pickups
	Checksum: 0x1ED54090
	Offset: 0xB30
	Size: 0x775
	Parameters: 0
	Flags: 6
*/
function private autoexec function_9ae542c5()
{
	classes.var_9ae542c5[0] = spawnstruct();
	classes.var_9ae542c5[0].__vtable[-1422930206] = &namespace_d63e16f5::function_ab2fcee2;
	classes.var_9ae542c5[0].__vtable[-1993785684] = &namespace_d63e16f5::function_89293eac;
	classes.var_9ae542c5[0].__vtable[-1918751361] = &namespace_d63e16f5::function_8da22d7f;
	classes.var_9ae542c5[0].__vtable[738951197] = &namespace_d63e16f5::function_2c0b801d;
	classes.var_9ae542c5[0].__vtable[-1751768132] = &namespace_d63e16f5::function_979623bc;
	classes.var_9ae542c5[0].__vtable[-908068637] = &namespace_d63e16f5::wait_for_button_release;
	classes.var_9ae542c5[0].__vtable[-1983032275] = &namespace_d63e16f5::destroy;
	classes.var_9ae542c5[0].__vtable[1998664073] = &namespace_d63e16f5::remove;
	classes.var_9ae542c5[0].__vtable[1355165250] = &namespace_d63e16f5::drop;
	classes.var_9ae542c5[0].__vtable[-419528313] = &namespace_d63e16f5::function_e6fe8187;
	classes.var_9ae542c5[0].__vtable[1137419972] = &namespace_d63e16f5::function_43cba6c4;
	classes.var_9ae542c5[0].__vtable[1366098661] = &namespace_d63e16f5::function_516d02e5;
	classes.var_9ae542c5[0].__vtable[87726411] = &namespace_d63e16f5::function_53a994b;
	classes.var_9ae542c5[0].__vtable[2111823028] = &namespace_d63e16f5::function_7ddfdcb4;
	classes.var_9ae542c5[0].__vtable[1002111075] = &namespace_d63e16f5::function_3bbb0063;
	classes.var_9ae542c5[0].__vtable[1562574218] = &namespace_d63e16f5::function_5d22fd8a;
	classes.var_9ae542c5[0].__vtable[-234604426] = &namespace_d63e16f5::carry;
	classes.var_9ae542c5[0].__vtable[-1490407061] = &namespace_d63e16f5::function_a72a316b;
	classes.var_9ae542c5[0].__vtable[-444976957] = &namespace_d63e16f5::function_e57a30c3;
	classes.var_9ae542c5[0].__vtable[1291604272] = &namespace_d63e16f5::function_4cfc5130;
	classes.var_9ae542c5[0].__vtable[562069659] = &namespace_d63e16f5::function_2180809b;
	classes.var_9ae542c5[0].__vtable[-1223116993] = &namespace_d63e16f5::function_b718b73f;
	classes.var_9ae542c5[0].__vtable[1291392716] = &namespace_d63e16f5::function_4cf916cc;
	classes.var_9ae542c5[0].__vtable[-896363193] = &namespace_d63e16f5::function_ca929547;
	classes.var_9ae542c5[0].__vtable[131884998] = &namespace_d63e16f5::function_7dc67c6;
	classes.var_9ae542c5[0].__vtable[-1690805083] = &namespace_d63e16f5::function_9b385ca5;
	classes.var_9ae542c5[0].__vtable[1606033458] = &namespace_9ae542c5::function_5fba2032;
	classes.var_9ae542c5[0].__vtable[-129543972] = &namespace_9ae542c5::function_f84750dc;
	classes.var_9ae542c5[0].__vtable[-1856534048] = &namespace_9ae542c5::function_915789e0;
	classes.var_9ae542c5[0].__vtable[-756947043] = &namespace_9ae542c5::function_d2e1e79d;
	classes.var_9ae542c5[0].__vtable[-822313845] = &namespace_9ae542c5::function_cefc7c8b;
	classes.var_9ae542c5[0].__vtable[-1407138253] = &namespace_9ae542c5::function_ac20c633;
	classes.var_9ae542c5[0].__vtable[276497145] = &namespace_9ae542c5::function_107b02f9;
	classes.var_9ae542c5[0].__vtable[1301438056] = &namespace_9ae542c5::function_4d925e68;
	classes.var_9ae542c5[0].__vtable[559289500] = &namespace_9ae542c5::function_2156149c;
	classes.var_9ae542c5[0].__vtable[-1889623724] = &namespace_9ae542c5::function_8f5ea154;
	classes.var_9ae542c5[0].__vtable[-1912518662] = &namespace_9ae542c5::spawn_at_struct;
	classes.var_9ae542c5[0].__vtable[-444750419] = &namespace_9ae542c5::function_e57da5ad;
	classes.var_9ae542c5[0].__vtable[-1690805083] = &namespace_9ae542c5::function_9b385ca5;
}

#namespace namespace_d63e16f5;

/*
	Name: function_9b385ca5
	Namespace: namespace_d63e16f5
	Checksum: 0xF8B46E77
	Offset: 0x12B0
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_9b385ca5()
{
	self.var_caa76426 = 1;
	self.var_ed97ef12 = 0;
	self.var_f4821922 = 0;
	self.var_6c8f4632 = 36;
	self.var_2269b061 = 128;
	self.var_bc6dcf34 = 72;
	self.var_c665189f = 128;
	self.var_352ef9 = &function_4cf916cc;
	self.var_1c709f79 = "Item";
}

/*
	Name: function_7dc67c6
	Namespace: namespace_d63e16f5
	Checksum: 0x70DD5230
	Offset: 0x1338
	Size: 0x9
	Parameters: 0
	Flags: None
*/
function function_7dc67c6()
{
	return self.var_cc8132d;
}

/*
	Name: function_ca929547
	Namespace: namespace_d63e16f5
	Checksum: 0xABDBAA18
	Offset: 0x1350
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_ca929547()
{
	if(isdefined(self.var_ecab686c))
	{
		self thread [[self.var_ecab686c]]();
		break;
	}
	while(isdefined(self.var_52e14d7c))
	{
		if(!self.var_caa76426)
		{
			self.var_52e14d7c setHintString("Bring Toolbox to repair");
			wait(0.05);
			continue;
		}
		wait(0.05);
	}
}

/*
	Name: function_4cf916cc
	Namespace: namespace_d63e16f5
	Checksum: 0x602AC1CF
	Offset: 0x13D0
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_4cf916cc(player)
{
	self notify("hash_4cf916cc");
	if(isdefined(self.var_9c969a83))
	{
		self thread [[self.var_9c969a83]](player);
	}
}

/*
	Name: function_b718b73f
	Namespace: namespace_d63e16f5
	Checksum: 0xEBAEBEFF
	Offset: 0x1418
	Size: 0xB7
	Parameters: 0
	Flags: None
*/
function function_b718b73f()
{
	self endon("unmake");
	while(1)
	{
		self.var_52e14d7c waittill("trigger", player);
		if(isdefined(player.var_ca526183) && player.var_ca526183 && player.var_11120dca.var_1c709f79 == "Toolbox")
		{
			remove(player.var_11120dca);
			[[self.var_352ef9]](player);
		}
		wait(0.05);
	}
}

/*
	Name: function_2180809b
	Namespace: namespace_d63e16f5
	Checksum: 0xE5F1BD89
	Offset: 0x14D8
	Size: 0x37
	Parameters: 1
	Flags: None
*/
function function_2180809b(e_trigger)
{
	/#
		Assert(!isdefined(self.var_52e14d7c));
	#/
	self.var_52e14d7c = e_trigger;
}

/*
	Name: function_4cfc5130
	Namespace: namespace_d63e16f5
	Checksum: 0x35DFCF4F
	Offset: 0x1518
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_4cfc5130()
{
	self.var_f4821922 = 1;
	self thread function_a72a316b();
}

/*
	Name: function_e57a30c3
	Namespace: namespace_d63e16f5
	Checksum: 0xBAE3018C
	Offset: 0x1548
	Size: 0x1D
	Parameters: 0
	Flags: None
*/
function function_e57a30c3()
{
	self.var_f4821922 = 0;
	self notify("hash_a72a316b");
}

/*
	Name: function_a72a316b
	Namespace: namespace_d63e16f5
	Checksum: 0xBD8CC8F3
	Offset: 0x1570
	Size: 0x1D9
	Parameters: 0
	Flags: None
*/
function function_a72a316b()
{
	self notify("hash_a72a316b");
	self endon("hash_a72a316b");
	self endon("unmake");
	while(1)
	{
		wait(0.05);
		if(!isdefined(self.var_52e14d7c))
		{
			return;
		}
		self.var_52e14d7c waittill("trigger", e_triggerer);
		if(isdefined(e_triggerer.var_ca526183) && e_triggerer.var_ca526183)
		{
			self.var_52e14d7c function_cb2c15eb(e_triggerer, "");
			continue;
		}
		if(!self.var_f4821922)
		{
			continue;
		}
		if(isdefined(e_triggerer.var_8407f02a) && e_triggerer.var_8407f02a)
		{
			continue;
		}
		if(!e_triggerer util::use_button_held())
		{
			continue;
		}
		if(isdefined(self.var_f83480ac) && ![[self.var_f83480ac]]())
		{
			continue;
		}
		if(!isdefined(self.var_52e14d7c))
		{
			return;
		}
		if(!e_triggerer istouching(self.var_52e14d7c))
		{
			continue;
		}
		if(isdefined(e_triggerer.var_ca526183) && e_triggerer.var_ca526183)
		{
			continue;
		}
		if(e_triggerer laststand::player_is_in_laststand())
		{
			continue;
		}
		e_triggerer.var_ca526183 = 1;
		self thread carry(e_triggerer);
		return;
	}
}

/*
	Name: carry
	Namespace: namespace_d63e16f5
	Checksum: 0xE4F384FB
	Offset: 0x1758
	Size: 0x173
	Parameters: 1
	Flags: None
*/
function carry(e_triggerer)
{
	e_triggerer endon("death");
	e_triggerer endon("player_downed");
	e_triggerer.var_11120dca = self;
	self.var_cc8132d = e_triggerer;
	self.var_52e14d7c notify("hash_4e236be4", 0);
	self notify("hash_2f46dd38");
	e_triggerer DisableWeapons();
	wait(0.5);
	if(isdefined(self.var_5c6e11a4))
	{
		foreach(var_f9c63f75 in self.var_5c6e11a4)
		{
			self thread [[var_f9c63f75]](e_triggerer);
		}
	}
	else
	{
		e_triggerer AllowJump(0);
	}
	self thread function_3bbb0063(e_triggerer);
	self thread function_43cba6c4(e_triggerer);
	self thread function_516d02e5(e_triggerer);
}

/*
	Name: function_5d22fd8a
	Namespace: namespace_d63e16f5
	Checksum: 0x24EECAE5
	Offset: 0x18D8
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_5d22fd8a()
{
	return "Press ^3[{+usereload}]^7 to drop " + self.var_1c709f79;
}

/*
	Name: function_3bbb0063
	Namespace: namespace_d63e16f5
	Checksum: 0x61EC9E7D
	Offset: 0x18F8
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_3bbb0063(player)
{
	player util::function_67cfce72(function_5d22fd8a());
}

/*
	Name: function_7ddfdcb4
	Namespace: namespace_d63e16f5
	Checksum: 0x2BEF749C
	Offset: 0x1938
	Size: 0x7F
	Parameters: 1
	Flags: None
*/
function function_7ddfdcb4(player)
{
	self endon("death");
	player endon("death");
	player endon("hash_8d73907f");
	while(1)
	{
		player util::function_67cfce72(function_5d22fd8a(), undefined, undefined, 0, 0.35);
		wait(0.35);
	}
}

/*
	Name: function_53a994b
	Namespace: namespace_d63e16f5
	Checksum: 0x20051AE
	Offset: 0x19C0
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_53a994b(player)
{
	player notify("hash_8d73907f");
	player util::function_79f9f98d();
}

/*
	Name: function_516d02e5
	Namespace: namespace_d63e16f5
	Checksum: 0x44A73738
	Offset: 0x1A00
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_516d02e5(e_triggerer)
{
	e_triggerer endon("hash_e6fe8187");
	e_triggerer endon("death");
	e_triggerer endon("player_downed");
	self thread function_2c0b801d(e_triggerer);
	while(e_triggerer useButtonPressed())
	{
		wait(0.05);
	}
	while(!e_triggerer useButtonPressed())
	{
		wait(0.05);
	}
	self thread drop(e_triggerer);
}

/*
	Name: function_43cba6c4
	Namespace: namespace_d63e16f5
	Checksum: 0xB599F0F8
	Offset: 0x1AC0
	Size: 0x227
	Parameters: 1
	Flags: None
*/
function function_43cba6c4(e_triggerer)
{
	e_triggerer endon("hash_e6fe8187");
	e_triggerer endon("death");
	e_triggerer endon("player_downed");
	v_eye_origin = e_triggerer GetEye();
	v_player_angles = e_triggerer getPlayerAngles();
	v_player_angles = v_player_angles + self.var_db666eb1;
	v_player_angles = AnglesToForward(v_player_angles);
	v_angles = e_triggerer.angles + self.var_af900c85;
	v_origin = v_eye_origin + v_player_angles * self.var_2655604d;
	if(!isdefined(self.var_4f46ac84))
	{
		if(isdefined(self.var_c65ad26d))
		{
			self.var_4f46ac84 = self.var_c65ad26d;
		}
		else
		{
			self.var_4f46ac84 = "script_origin";
		}
	}
	self.var_ce54c88c = util::spawn_model(self.var_4f46ac84, v_origin, v_angles);
	self.var_ce54c88c notsolid();
	while(isdefined(self.var_ce54c88c))
	{
		v_eye_origin = e_triggerer GetEye();
		v_player_angles = e_triggerer getPlayerAngles();
		v_player_angles = v_player_angles + self.var_db666eb1;
		v_player_angles = AnglesToForward(v_player_angles);
		self.var_ce54c88c.angles = e_triggerer.angles + self.var_af900c85;
		self.var_ce54c88c.origin = v_eye_origin + v_player_angles * self.var_2655604d;
		wait(0.05);
	}
}

/*
	Name: function_e6fe8187
	Namespace: namespace_d63e16f5
	Checksum: 0x578DB70B
	Offset: 0x1CF0
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_e6fe8187(e_triggerer)
{
	e_triggerer endon("death");
	e_triggerer endon("player_downed");
	if(!e_triggerer.var_ca526183)
	{
		return;
	}
	e_triggerer notify("hash_e6fe8187");
	e_triggerer enableWeapons();
	e_triggerer.var_ca526183 = 0;
	e_triggerer AllowJump(1);
}

/*
	Name: drop
	Namespace: namespace_d63e16f5
	Checksum: 0xBE645FBC
	Offset: 0x1D80
	Size: 0x12B
	Parameters: 1
	Flags: None
*/
function drop(e_triggerer)
{
	function_e6fe8187(e_triggerer);
	e_triggerer util::function_79f9f98d();
	if(isdefined(self.var_ce54c88c))
	{
		self.var_ce54c88c delete();
	}
	if(isdefined(self.var_c7279522))
	{
		foreach(var_2c0c6c13 in self.var_c7279522)
		{
			[[var_2c0c6c13]](e_triggerer);
		}
	}
	self.var_cc8132d = undefined;
	self thread function_a72a316b();
	e_triggerer thread wait_for_button_release();
}

/*
	Name: remove
	Namespace: namespace_d63e16f5
	Checksum: 0x46C8C2E1
	Offset: 0x1EB8
	Size: 0x7D
	Parameters: 1
	Flags: None
*/
function remove(e_triggerer)
{
	function_e6fe8187(e_triggerer);
	e_triggerer util::function_79f9f98d();
	if(isdefined(self.var_ce54c88c))
	{
		self.var_ce54c88c delete();
	}
	self.var_cc8132d = undefined;
	self notify("hash_f9bc44a3");
}

/*
	Name: destroy
	Namespace: namespace_d63e16f5
	Checksum: 0xE215B463
	Offset: 0x1F40
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function destroy()
{
	if(isdefined(self.var_cc8132d))
	{
		function_e6fe8187(self.var_cc8132d);
		self.var_cc8132d util::function_79f9f98d();
	}
	if(isdefined(self.var_ce54c88c))
	{
		self.var_ce54c88c delete();
	}
	self.var_cc8132d = undefined;
}

/*
	Name: wait_for_button_release
	Namespace: namespace_d63e16f5
	Checksum: 0x7ECAF472
	Offset: 0x1FC0
	Size: 0x3D
	Parameters: 0
	Flags: None
*/
function wait_for_button_release()
{
	self endon("death_or_disconnect");
	self.var_8407f02a = 1;
	self function_979623bc();
	self.var_8407f02a = undefined;
}

/*
	Name: function_979623bc
	Namespace: namespace_d63e16f5
	Checksum: 0x3F68BC31
	Offset: 0x2008
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_979623bc()
{
	self endon("player_downed");
	while(self useButtonPressed())
	{
		wait(0.05);
	}
}

/*
	Name: function_2c0b801d
	Namespace: namespace_d63e16f5
	Checksum: 0x2F2E6149
	Offset: 0x2048
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_2c0b801d(e_triggerer)
{
	self notify("hash_2c0b801d");
	self endon("hash_2c0b801d");
	e_triggerer util::waittill_any("player_downed", "death");
	if(isdefined(self.var_cc8132d))
	{
		drop(e_triggerer);
	}
}

/*
	Name: function_8da22d7f
	Namespace: namespace_d63e16f5
	Checksum: 0x9111D7EE
	Offset: 0x20C0
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_8da22d7f(v_origin)
{
	var_f36962fb = function_ab2fcee2(v_origin, self.var_bc6dcf34, self.var_c665189f, "Bring Toolbox to repair");
	return var_f36962fb;
}

/*
	Name: function_89293eac
	Namespace: namespace_d63e16f5
	Checksum: 0x1EA0C7
	Offset: 0x2118
	Size: 0x67
	Parameters: 1
	Flags: None
*/
function function_89293eac(v_origin)
{
	e_trigger = function_ab2fcee2(v_origin, self.var_6c8f4632, self.var_2269b061, "");
	e_trigger SetHintLowPriority(1);
	return e_trigger;
}

/*
	Name: function_ab2fcee2
	Namespace: namespace_d63e16f5
	Checksum: 0x6EB896D7
	Offset: 0x2188
	Size: 0x167
	Parameters: 4
	Flags: None
*/
function function_ab2fcee2(v_origin, n_radius, n_height, str_hint)
{
	/#
		Assert(isdefined(v_origin), "Dev Block strings are not supported");
	#/
	/#
		Assert(isdefined(n_radius), "Dev Block strings are not supported");
	#/
	/#
		Assert(isdefined(n_height), "Dev Block strings are not supported");
	#/
	e_trigger = spawn("trigger_radius", v_origin, 0, n_radius, n_height);
	e_trigger TriggerIgnoreTeam();
	e_trigger SetVisibleToAll();
	e_trigger SetTeamForTrigger("none");
	e_trigger setcursorhint("HINT_NOICON");
	if(isdefined(str_hint))
	{
		e_trigger setHintString(str_hint);
	}
	return e_trigger;
}

/*
	Name: function_5fba2032
	Namespace: namespace_d63e16f5
	Checksum: 0x99EC1590
	Offset: 0x22F8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5fba2032()
{
}

#namespace pickups;

/*
	Name: function_d63e16f5
	Namespace: pickups
	Checksum: 0x11C3C08
	Offset: 0x2308
	Size: 0x535
	Parameters: 0
	Flags: 6
*/
function private autoexec function_d63e16f5()
{
	classes.var_d63e16f5[0] = spawnstruct();
	classes.var_d63e16f5[0].__vtable[1606033458] = &namespace_d63e16f5::function_5fba2032;
	classes.var_d63e16f5[0].__vtable[-1422930206] = &namespace_d63e16f5::function_ab2fcee2;
	classes.var_d63e16f5[0].__vtable[-1993785684] = &namespace_d63e16f5::function_89293eac;
	classes.var_d63e16f5[0].__vtable[-1918751361] = &namespace_d63e16f5::function_8da22d7f;
	classes.var_d63e16f5[0].__vtable[738951197] = &namespace_d63e16f5::function_2c0b801d;
	classes.var_d63e16f5[0].__vtable[-1751768132] = &namespace_d63e16f5::function_979623bc;
	classes.var_d63e16f5[0].__vtable[-908068637] = &namespace_d63e16f5::wait_for_button_release;
	classes.var_d63e16f5[0].__vtable[-1983032275] = &namespace_d63e16f5::destroy;
	classes.var_d63e16f5[0].__vtable[1998664073] = &namespace_d63e16f5::remove;
	classes.var_d63e16f5[0].__vtable[1355165250] = &namespace_d63e16f5::drop;
	classes.var_d63e16f5[0].__vtable[-419528313] = &namespace_d63e16f5::function_e6fe8187;
	classes.var_d63e16f5[0].__vtable[1137419972] = &namespace_d63e16f5::function_43cba6c4;
	classes.var_d63e16f5[0].__vtable[1366098661] = &namespace_d63e16f5::function_516d02e5;
	classes.var_d63e16f5[0].__vtable[87726411] = &namespace_d63e16f5::function_53a994b;
	classes.var_d63e16f5[0].__vtable[2111823028] = &namespace_d63e16f5::function_7ddfdcb4;
	classes.var_d63e16f5[0].__vtable[1002111075] = &namespace_d63e16f5::function_3bbb0063;
	classes.var_d63e16f5[0].__vtable[1562574218] = &namespace_d63e16f5::function_5d22fd8a;
	classes.var_d63e16f5[0].__vtable[-234604426] = &namespace_d63e16f5::carry;
	classes.var_d63e16f5[0].__vtable[-1490407061] = &namespace_d63e16f5::function_a72a316b;
	classes.var_d63e16f5[0].__vtable[-444976957] = &namespace_d63e16f5::function_e57a30c3;
	classes.var_d63e16f5[0].__vtable[1291604272] = &namespace_d63e16f5::function_4cfc5130;
	classes.var_d63e16f5[0].__vtable[562069659] = &namespace_d63e16f5::function_2180809b;
	classes.var_d63e16f5[0].__vtable[-1223116993] = &namespace_d63e16f5::function_b718b73f;
	classes.var_d63e16f5[0].__vtable[1291392716] = &namespace_d63e16f5::function_4cf916cc;
	classes.var_d63e16f5[0].__vtable[-896363193] = &namespace_d63e16f5::function_ca929547;
	classes.var_d63e16f5[0].__vtable[131884998] = &namespace_d63e16f5::function_7dc67c6;
	classes.var_d63e16f5[0].__vtable[-1690805083] = &namespace_d63e16f5::function_9b385ca5;
}

