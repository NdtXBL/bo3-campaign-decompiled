#using scripts\codescripts\struct;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\trigger_shared;

#namespace namespace_9750c824;

/*
	Name: function_d290ebfa
	Namespace: namespace_9750c824
	Checksum: 0x6EDA387
	Offset: 0x228
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	level thread function_a0c5a719();
	level thread function_7bcb0782();
	namespace_71e9cb84::function_50f16166("world", "sndHakimPaVox", 1, 3, "int", &function_5e9a8778, 0, 0);
	level thread function_4904d6ff();
	level thread function_1a66f9f3();
}

/*
	Name: function_a0c5a719
	Namespace: namespace_9750c824
	Checksum: 0x58D882C3
	Offset: 0x2E0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_a0c5a719()
{
	level thread function_759e7aaa();
}

/*
	Name: function_759e7aaa
	Namespace: namespace_9750c824
	Checksum: 0x435F7F81
	Offset: 0x308
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_759e7aaa()
{
	level waittill("hash_51e4b2c0");
	level thread function_60df3271();
	var_49992acb = (-5922, 186, 1813);
	var_5dc5e20a = function_79c174a3(0);
	level.var_69a1bedf = 1;
	level function_8b5fd6e1(var_5dc5e20a, var_49992acb, "mus_assassination_layer_1", 0, 1, 250, 1300, "mus_assassination_layer_2", 0, 1, 50, 700, "mus_assassination_stinger");
}

/*
	Name: function_60df3271
	Namespace: namespace_9750c824
	Checksum: 0xD9985DC2
	Offset: 0x3D0
	Size: 0x2D
	Parameters: 0
	Flags: None
*/
function function_60df3271()
{
	level waittill("hash_8409b4c");
	wait(3);
	level.var_69a1bedf = 0;
	level notify("hash_1842ee53");
}

/*
	Name: function_8b5fd6e1
	Namespace: namespace_9750c824
	Checksum: 0x7085026B
	Offset: 0x408
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
	Namespace: namespace_9750c824
	Checksum: 0x26961E9
	Offset: 0x818
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
	var_49992acb = (-5922, 186, 1813);
	wait(2);
	var_5dc5e20a = function_79c174a3(0);
	if(isdefined(var_5dc5e20a))
	{
		level thread function_8b5fd6e1(var_5dc5e20a, var_49992acb, "mus_assassination_layer_1", 0, 1, 250, 1300, "mus_assassination_layer_2", 0, 1, 50, 700, "mus_assassination_stinger");
	}
}

/*
	Name: function_4904d6ff
	Namespace: namespace_9750c824
	Checksum: 0x306FFC1B
	Offset: 0x938
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_4904d6ff()
{
	level.var_27ec4154 = function_84970cc4("_000_haki", "_001_haki", "_002_haki", "_003_haki");
	level.var_6d0444d4 = namespace_14b42b8a::function_7faf4c39("sndHakimPaVox", "targetname");
}

/*
	Name: function_5e9a8778
	Namespace: namespace_9750c824
	Checksum: 0x24C7455A
	Offset: 0x9A8
	Size: 0x109
	Parameters: 7
	Flags: None
*/
function function_5e9a8778(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!isdefined(level.var_6d0444d4))
	{
		return;
	}
	if(var_9193c732)
	{
		if(var_9193c732 == 5)
		{
			level notify("hash_4e3eaac8");
			break;
		}
		foreach(var_35940ed8 in level.var_6d0444d4)
		{
			level thread function_372f5bfa(var_35940ed8, var_9193c732);
			wait(0.016);
		}
	}
}

/*
	Name: function_372f5bfa
	Namespace: namespace_9750c824
	Checksum: 0x31C1ACEA
	Offset: 0xAC0
	Size: 0xCB
	Parameters: 2
	Flags: None
*/
function function_372f5bfa(var_35940ed8, var_9193c732)
{
	level endon("hash_1842ee53");
	if(var_35940ed8.var_db7bb468 == "large")
	{
		wait(0.05);
	}
	var_48b937ab = "vox_lot1_hakim_pa_" + var_35940ed8.var_db7bb468 + level.var_27ec4154[var_9193c732 - 1];
	var_8d3311 = function_921a1574(0, var_48b937ab, var_35940ed8.var_722885f3);
	level waittill("hash_4e3eaac8");
	function_356a1c2a(var_8d3311);
}

/*
	Name: function_7bcb0782
	Namespace: namespace_9750c824
	Checksum: 0x37C1431C
	Offset: 0xB98
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_7bcb0782()
{
	if(!isdefined(level.var_b1373a38))
	{
		level.var_b1373a38 = function_9b7fda5e(0, (-6820, 251, 1992), "script.origin");
	}
	level waittill("hash_b1373a38");
	level.var_b1373a38 function_921a1574(0, "evt_crowd_swell");
	wait(5);
	level.var_b1373a38 function_dc8c8404();
}

/*
	Name: function_1a66f9f3
	Namespace: namespace_9750c824
	Checksum: 0x9555F13
	Offset: 0xC38
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_1a66f9f3()
{
	level waittill("hash_52e37ee2");
	level thread function_e675c6f2();
	var_49992acb = (-8944, 1407, 4186);
	var_5dc5e20a = function_79c174a3(0);
	level.var_69a1bedf = 1;
	level thread function_a89a73f3(var_5dc5e20a, var_49992acb, "evt_air_scare_layer_1", 0, 1, 100, 600, "evt_air_scare_layer_2", 0, 1, 150, 300);
}

/*
	Name: function_e675c6f2
	Namespace: namespace_9750c824
	Checksum: 0xBC6199CE
	Offset: 0xCF8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_e675c6f2()
{
	level waittill("hash_a38d24cd");
	level.var_69a1bedf = 0;
}

/*
	Name: function_a89a73f3
	Namespace: namespace_9750c824
	Checksum: 0xA4A0A04A
	Offset: 0xD20
	Size: 0x403
	Parameters: 13
	Flags: None
*/
function function_a89a73f3(var_5dc5e20a, var_49992acb, var_21071b78, var_608e2e1e, var_510a3b88, var_937fa2ef, var_ca956561, var_930e8ab3, var_3a8bb3b5, var_c311aac3, var_217833b4, var_f097dfca, var_d8bcfff1)
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
	level thread function_dc4a5405(var_61fae9bf, var_f6acc4c, var_496a5b77, var_59b1545e);
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
	Name: function_dc4a5405
	Namespace: namespace_9750c824
	Checksum: 0x36C6CDBA
	Offset: 0x1130
	Size: 0x113
	Parameters: 4
	Flags: None
*/
function function_dc4a5405(var_11e3ff05, var_37e6796e, var_105ef70b, var_9e5787d0)
{
	level endon("hash_a38d24cd");
	level waittill("hash_2693b45");
	var_11e3ff05 function_dc8c8404();
	var_37e6796e function_dc8c8404();
	var_105ef70b = undefined;
	var_9e5787d0 = undefined;
	var_49992acb = (-8944, 1407, 4186);
	wait(2);
	var_5dc5e20a = function_79c174a3(0);
	if(isdefined(var_5dc5e20a))
	{
		level thread function_a89a73f3(var_5dc5e20a, var_49992acb, "evt_air_scare_layer_1", 0, 1, 100, 600, "evt_air_scare_layer_2", 0, 1, 150, 300);
	}
}

