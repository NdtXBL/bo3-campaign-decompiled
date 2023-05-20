#using scripts\codescripts\struct;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\trigger_shared;

#namespace namespace_172c963;

/*
	Name: function_d290ebfa
	Namespace: namespace_172c963
	Checksum: 0xEDE6BDEC
	Offset: 0x288
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	thread function_2c912bd();
	thread function_153b7792();
	thread function_efd49790();
	level thread function_a0c5a719();
	level thread function_a768b615();
	level thread function_75bb865();
	level thread function_4e5472a7();
	level thread function_45100b4d();
	level thread function_2b64c5fe();
	level thread function_6c080ebb();
	level thread function_66507a64();
}

/*
	Name: function_2c912bd
	Namespace: namespace_172c963
	Checksum: 0x5A02317C
	Offset: 0x388
	Size: 0x11
	Parameters: 0
	Flags: None
*/
function function_2c912bd()
{
	level notify("hash_17d831e1");
}

/*
	Name: function_153b7792
	Namespace: namespace_172c963
	Checksum: 0x6D2C596C
	Offset: 0x3A8
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_153b7792()
{
	level waittill("hash_cf6daea2");
}

/*
	Name: function_efd49790
	Namespace: namespace_172c963
	Checksum: 0x9036BA8A
	Offset: 0x3C0
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_efd49790()
{
	level waittill("hash_de9f3fa1");
}

/*
	Name: function_a0c5a719
	Namespace: namespace_172c963
	Checksum: 0x2BD07DE5
	Offset: 0x3D8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_a0c5a719()
{
	level thread function_c05308a7();
}

/*
	Name: function_c05308a7
	Namespace: namespace_172c963
	Checksum: 0x947E6694
	Offset: 0x400
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_c05308a7()
{
	level waittill("hash_ad7eaa98");
	level thread function_61f01886();
	var_49992acb = (-163, -2934, -5050);
	var_5dc5e20a = function_79c174a3(0);
	level.var_69a1bedf = 1;
	level function_8b5fd6e1(var_5dc5e20a, var_49992acb, "mus_robothall_layer_1", 0, 1, 400, 1600, "mus_robothall_layer_2", 0, 1, 250, 1000, "mus_robothall_end");
}

/*
	Name: function_61f01886
	Namespace: namespace_172c963
	Checksum: 0x9A798DDC
	Offset: 0x4C8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_61f01886()
{
	level waittill("hash_b3e68f04");
	level.var_69a1bedf = 0;
}

/*
	Name: function_8b5fd6e1
	Namespace: namespace_172c963
	Checksum: 0xB4B7E0EA
	Offset: 0x4F0
	Size: 0x403
	Parameters: 13
	Flags: None
*/
function function_8b5fd6e1(var_5dc5e20a, var_49992acb, var_21071b78, var_608e2e1e, var_510a3b88, var_937fa2ef, var_ca956561, var_930e8ab3, var_3a8bb3b5, var_c311aac3, var_217833b4, var_f097dfca, var_d8bcfff1)
{
	level endon("hash_2693b45");
	level endon("hash_643a7daf");
	var_5dc5e20a endon("hash_128f8789");
	var_5dc5e20a endon("hash_643a7daf");
	if(!isdefined(var_5dc5e20a))
	{
		return;
	}
	var_9d968d78 = undefined;
	var_f9dfcb3 = undefined;
	if(isdefined(var_21071b78))
	{
		var_61fae9bf = function_9b7fda5e(0, (0, 0, 0), "script_origin");
		var_496a5b77 = var_61fae9bf function_c2931a36(var_21071b78, 3);
		var_14a9459 = var_608e2e1e;
		var_7a3099f7 = var_510a3b88;
		var_33f29632 = var_937fa2ef;
		var_1e0bf224 = var_ca956561;
		var_9d968d78 = 0;
	}
	if(isdefined(var_930e8ab3))
	{
		var_f6acc4c = function_9b7fda5e(0, (0, 0, 0), "script_origin");
		var_59b1545e = var_f6acc4c function_c2931a36(var_930e8ab3, 3);
		var_40d74244 = var_3a8bb3b5;
		var_f63e9846 = var_c311aac3;
		var_3ab0f833 = var_217833b4;
		var_ddcfce71 = var_f097dfca;
		var_f9dfcb3 = 0;
	}
	level thread function_860d167b(var_61fae9bf, var_f6acc4c, var_496a5b77, var_59b1545e);
	while(isdefined(level.var_69a1bedf) && level.var_69a1bedf)
	{
		if(!isdefined(var_5dc5e20a))
		{
			return;
		}
		var_7d15e2f8 = function_7d15e2f8(var_49992acb, var_5dc5e20a.var_722885f3);
		if(isdefined(var_9d968d78))
		{
			var_9d968d78 = namespace_4fe3eef1::function_1bc38161(var_33f29632, var_1e0bf224, var_14a9459, var_7a3099f7, var_7d15e2f8);
			var_9d968d78 = function_69c2f683(1 - var_9d968d78);
			function_a69510c2(var_496a5b77, var_9d968d78);
		}
		if(isdefined(var_f9dfcb3))
		{
			var_f9dfcb3 = namespace_4fe3eef1::function_1bc38161(var_3ab0f833, var_ddcfce71, var_40d74244, var_f63e9846, var_7d15e2f8);
			var_f9dfcb3 = function_69c2f683(1 - var_f9dfcb3);
			function_a69510c2(var_59b1545e, var_f9dfcb3);
		}
		wait(0.1);
	}
	level notify("hash_61477803");
	if(isdefined(var_d8bcfff1))
	{
		function_921a1574(0, var_d8bcfff1, (0, 0, 0));
	}
	if(isdefined(var_61fae9bf))
	{
		var_61fae9bf function_dc8c8404();
	}
	if(isdefined(var_f6acc4c))
	{
		var_f6acc4c function_dc8c8404();
	}
}

/*
	Name: function_860d167b
	Namespace: namespace_172c963
	Checksum: 0x39178E6B
	Offset: 0x900
	Size: 0x113
	Parameters: 4
	Flags: None
*/
function function_860d167b(var_11e3ff05, var_37e6796e, var_105ef70b, var_9e5787d0)
{
	level endon("hash_61477803");
	level waittill("hash_2693b45");
	var_11e3ff05 function_dc8c8404();
	var_37e6796e function_dc8c8404();
	var_105ef70b = undefined;
	var_9e5787d0 = undefined;
	var_49992acb = (-163, -2934, -5050);
	wait(2);
	var_5dc5e20a = function_79c174a3(0);
	if(isdefined(var_5dc5e20a))
	{
		level thread function_8b5fd6e1(var_5dc5e20a, var_49992acb, "mus_robothall_layer_1", 0, 1, 400, 1600, "mus_robothall_layer_2", 0, 1, 250, 1000, "mus_robothall_end");
	}
}

/*
	Name: function_a768b615
	Namespace: namespace_172c963
	Checksum: 0x1F8A8FCF
	Offset: 0xA20
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_a768b615()
{
	var_5f6e94d0 = function_99201f25(0, "sndScares", "targetname");
	if(!isdefined(var_5f6e94d0) || var_5f6e94d0.size <= 0)
	{
		return;
	}
	namespace_84970cc4::function_966ecb29(var_5f6e94d0, &function_bccbeb90);
}

/*
	Name: function_bccbeb90
	Namespace: namespace_172c963
	Checksum: 0x685FCF8D
	Offset: 0xAA0
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_bccbeb90()
{
	var_b07228b6 = namespace_14b42b8a::function_7922262b(self.var_b07228b6, "targetname");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_aef176e7);
		if(var_aef176e7 function_65f192a6())
		{
			function_921a1574(0, self.var_d47f13c, var_b07228b6.var_722885f3);
			break;
		}
	}
}

/*
	Name: function_75bb865
	Namespace: namespace_172c963
	Checksum: 0xA66E42B7
	Offset: 0xB48
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_75bb865()
{
	var_b9230b42 = function_99201f25(0, "sndJumpLand", "targetname");
	if(!isdefined(var_b9230b42) || var_b9230b42.size <= 0)
	{
		return;
	}
	namespace_84970cc4::function_966ecb29(var_b9230b42, &function_c2d4afb7);
}

/*
	Name: function_c2d4afb7
	Namespace: namespace_172c963
	Checksum: 0xDD3B3E19
	Offset: 0xBC8
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_c2d4afb7()
{
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_aef176e7);
		self thread namespace_4dbf3ae3::function_d1278be0(var_aef176e7, &function_c2f42d4e);
	}
}

/*
	Name: function_c2f42d4e
	Namespace: namespace_172c963
	Checksum: 0xE964F39A
	Offset: 0xC20
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_c2f42d4e(var_a3d46ee4)
{
	function_921a1574(0, self.var_d47f13c, var_a3d46ee4.var_722885f3);
}

/*
	Name: function_4e5472a7
	Namespace: namespace_172c963
	Checksum: 0xA45DB3B0
	Offset: 0xC60
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_4e5472a7()
{
	level waittill("hash_fc92edec");
	wait(3);
	namespace_4fe3eef1::function_11908f52("evt_escape_walla", (20225, 2651, -6631));
	level waittill("hash_188db8ef");
	namespace_4fe3eef1::function_b2f15380("evt_escape_walla", (20225, 2651, -6631));
}

/*
	Name: function_45100b4d
	Namespace: namespace_172c963
	Checksum: 0x9D5ECEAA
	Offset: 0xCD8
	Size: 0x97
	Parameters: 0
	Flags: None
*/
function function_45100b4d()
{
	level endon("hash_a8bf0d73");
	level waittill("hash_ccd35adb");
	while(1)
	{
		function_921a1574(0, "vox_walla_call", (-1045, -4195, 564));
		wait(4);
		function_921a1574(0, "vox_walla_call_response", (621, -5090, 376));
		wait(function_dc99997a(2, 7));
	}
}

/*
	Name: function_2b64c5fe
	Namespace: namespace_172c963
	Checksum: 0x1F8D82B4
	Offset: 0xD78
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_2b64c5fe()
{
	level waittill("hash_a8bf0d73");
	function_921a1574(0, "vox_walla_battlecry", (-138, -4871, 311));
}

/*
	Name: function_6c080ebb
	Namespace: namespace_172c963
	Checksum: 0x265DED44
	Offset: 0xDC0
	Size: 0x1D3
	Parameters: 0
	Flags: None
*/
function function_6c080ebb()
{
	level waittill("hash_fc92edec");
	level thread function_9d912a9d(20210, 4156, -6727);
	level thread function_9d912a9d(20369, 3460, -6700);
	level thread function_9d912a9d(20369, 3460, -6700);
	level thread function_9d912a9d(20176, 2461, -6547);
	level thread function_9d912a9d(21068, 2494, -6526);
	level thread function_9d912a9d(22036, 2473, -6543);
	level thread function_9d912a9d(23219, 2550, -6545);
	level thread function_9d912a9d(23132, 1542, -6547);
	level thread function_9d912a9d(23132, 1542, -6547);
	level thread function_9d912a9d(24602, 1593, -6243);
	level thread function_9d912a9d(25098, 1888, -6524);
	level thread function_9d912a9d(25120, 1258, -6557);
	level thread function_9d912a9d(25522, 1821, -6447);
	level thread function_9d912a9d(25516, 1302, -6511);
}

/*
	Name: function_9d912a9d
	Namespace: namespace_172c963
	Checksum: 0x12C8FDAB
	Offset: 0xFA0
	Size: 0x43
	Parameters: 3
	Flags: None
*/
function function_9d912a9d(var_b55730e, var_e552f8a5, var_bf507e3c)
{
	namespace_4fe3eef1::function_11908f52("evt_escape_alarm", (var_b55730e, var_e552f8a5, var_bf507e3c));
}

/*
	Name: function_698dfbe4
	Namespace: namespace_172c963
	Checksum: 0xB3C2C607
	Offset: 0xFF0
	Size: 0xCF
	Parameters: 7
	Flags: None
*/
function function_698dfbe4(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		function_9c128ee("amb_lab_walla", (1240, 285, -1203));
		continue;
	}
	else
	{
		function_c0384f26("amb_lab_walla", (1240, 285, -1203));
		function_921a1574(0, "amb_lab_walla_stop", (1240, 285, -1203));
		continue;
	}
}

/*
	Name: function_66507a64
	Namespace: namespace_172c963
	Checksum: 0x7059DAEF
	Offset: 0x10C8
	Size: 0x3C3
	Parameters: 0
	Flags: None
*/
function function_66507a64()
{
	namespace_4fe3eef1::function_11908f52("amb_glitchy_screens", (3275, -2730, -4743));
	namespace_4fe3eef1::function_11908f52("amb_glitchy_screens", (232, -939, -4529));
	namespace_4fe3eef1::function_11908f52("amb_glitchy_screens", (3952, -1962, -4781));
	namespace_4fe3eef1::function_11908f52("amb_flourescent_light_quiet", (1649, -999, -4547));
	namespace_4fe3eef1::function_11908f52("amb_flourescent_light_quiet", (209, 53, -4409));
	namespace_4fe3eef1::function_11908f52("amb_billboard_glitch_loop", (1100, -954, 325));
	namespace_4fe3eef1::function_11908f52("amb_billboard_glitch_loop", (-505, 1787, 4005));
	namespace_4fe3eef1::function_11908f52("amb_billboard_glitch_loop", (-25, -1367, 424));
	namespace_4fe3eef1::function_11908f52("amb_billboard_glitch_loop", (398, -2739, 399));
	namespace_4fe3eef1::function_11908f52("amb_computer", (4476, -2321, -4913));
	namespace_4fe3eef1::function_11908f52("amb_computer", (4492, -2606, -4914));
	namespace_4fe3eef1::function_11908f52("amb_air_vent", (4214, -2387, -4753));
	namespace_4fe3eef1::function_11908f52("amb_air_vent", (3623, -2391, -4781));
	namespace_4fe3eef1::function_11908f52("amb_quiet_monkey_machine", (4200, -2553, -4755));
	namespace_4fe3eef1::function_11908f52("amb_quiet_monkey_machine", (3691, -2553, -4757));
	namespace_4fe3eef1::function_11908f52("amb_quiet_monkey_machine", (3663, -2205, -4758));
	namespace_4fe3eef1::function_11908f52("amb_quiet_monkey_machine", (4121, -2205, -4759));
	namespace_4fe3eef1::function_11908f52("pfx_steam_hollow", (1487, 1043, -2042));
	namespace_4fe3eef1::function_11908f52("pfx_steam_hollow", (1903, 1280, -1871));
	namespace_4fe3eef1::function_11908f52("amb_flourescent_light_quiet", (1678, 416, -1813));
	namespace_4fe3eef1::function_11908f52("amb_flourescent_light_quiet", (2326, -2166, -4608));
	namespace_4fe3eef1::function_11908f52("amb_air_vent", (2265, -1672, -4526));
	namespace_4fe3eef1::function_11908f52("amb_air_vent_rattle", (2265, -1672, -4526));
	namespace_4fe3eef1::function_11908f52("amb_flourescent_light_quiet", (2652, -2736, -4656));
}

