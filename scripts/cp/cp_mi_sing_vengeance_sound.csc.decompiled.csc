#using scripts\codescripts\struct;
#using scripts\shared\audio_shared;
#using scripts\shared\clientfield_shared;

#namespace namespace_7c587e3e;

/*
	Name: function_d290ebfa
	Namespace: namespace_7c587e3e
	Checksum: 0x8020F836
	Offset: 0x238
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_71e9cb84::function_50f16166("toplayer", "slowmo_duck_active", 1, 2, "int", &function_41d671f5, 0, 0);
	level thread function_dcd7454a();
	level thread function_38ba2136();
	level thread function_4035bef1();
	level thread function_a0c5a719();
}

/*
	Name: function_41d671f5
	Namespace: namespace_7c587e3e
	Checksum: 0xA7484CA6
	Offset: 0x2F0
	Size: 0x83
	Parameters: 7
	Flags: None
*/
function function_41d671f5(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 > 0)
	{
		namespace_4fe3eef1::function_36bbd2b2("cp_mi_sing_vengeance_slowmo");
	}
	else
	{
		namespace_4fe3eef1::function_36bbd2b2("default");
	}
}

/*
	Name: function_dcd7454a
	Namespace: namespace_7c587e3e
	Checksum: 0x49F64289
	Offset: 0x380
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_dcd7454a()
{
	level waittill("hash_52a22e61");
	level endon("hash_c2155d7e");
	level thread function_cc438941();
	namespace_4fe3eef1::function_36bbd2b2("cp_vengeance_cafe");
	level waittill("hash_d240c7d8");
	namespace_4fe3eef1::function_36bbd2b2("default");
}

/*
	Name: function_cc438941
	Namespace: namespace_7c587e3e
	Checksum: 0x2A501537
	Offset: 0x3F8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_cc438941()
{
	level waittill("hash_c2155d7e");
	namespace_4fe3eef1::function_36bbd2b2("default");
}

/*
	Name: function_38ba2136
	Namespace: namespace_7c587e3e
	Checksum: 0x6DC3A808
	Offset: 0x430
	Size: 0x20B
	Parameters: 0
	Flags: None
*/
function function_38ba2136()
{
	namespace_4fe3eef1::function_11908f52("mus_stereo_apartment", (19235, -5438, 328));
	namespace_4fe3eef1::function_11908f52("amb_tv_static", (19770, -5345, 476));
	namespace_4fe3eef1::function_11908f52("amb_toilet_loop", (19517, -5609, 483));
	namespace_4fe3eef1::function_11908f52("amb_light_buzzer", (20871, 1399, 218));
	namespace_4fe3eef1::function_11908f52("amb_light_buzzer", (21833, -1005, 207));
	namespace_4fe3eef1::function_11908f52("amb_light_buzzer", (22547, -1539, 351));
	namespace_4fe3eef1::function_11908f52("amb_light_buzzer", (20765, -3112, 294));
	namespace_4fe3eef1::function_11908f52("amb_light_buzzer_quiet", (21250, -1740, 247));
	namespace_4fe3eef1::function_11908f52("amb_subway_light", (20871, 1399, 218));
	namespace_4fe3eef1::function_11908f52("amb_light_buzzer", (-18962, -19697, 216));
	namespace_4fe3eef1::function_11908f52("mus_diagetic_ethnic", (21756, 2890, 266));
	namespace_4fe3eef1::function_11908f52("amb_tv_static", (22486, 8265, 210));
	namespace_4fe3eef1::function_11908f52("amb_tv_static", (21856, 8521, 209));
}

/*
	Name: function_4035bef1
	Namespace: namespace_7c587e3e
	Checksum: 0xEF3D189C
	Offset: 0x648
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_4035bef1()
{
	var_4dbf3ae3 = function_6ada35ba(0, "siren", "targetname");
	if(!isdefined(var_4dbf3ae3))
	{
		return;
	}
	while(1)
	{
		var_4dbf3ae3 waittill("hash_4dbf3ae3", var_aef176e7);
		if(var_aef176e7 function_65f192a6())
		{
			function_921a1574(0, "amb_police_siren", (23974, 2768, 631));
			break;
		}
	}
}

/*
	Name: function_a0c5a719
	Namespace: namespace_7c587e3e
	Checksum: 0xA5DCFA6F
	Offset: 0x708
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
	Namespace: namespace_7c587e3e
	Checksum: 0x7B37EF78
	Offset: 0x730
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_759e7aaa()
{
	level waittill("hash_51e4b2c0");
	level thread function_60df3271();
	var_49992acb = (21636, -1368, 228);
	var_5dc5e20a = function_79c174a3(0);
	level.var_69a1bedf = 1;
	level function_8b5fd6e1(var_5dc5e20a, var_49992acb, "mus_assassination_layer_1", 0, 1, 250, 600, "mus_assassination_layer_2", 0, 1, 50, 400, "mus_assassination_stinger");
}

/*
	Name: function_60df3271
	Namespace: namespace_7c587e3e
	Checksum: 0x1CD929C0
	Offset: 0x7F8
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
	Namespace: namespace_7c587e3e
	Checksum: 0xE69AE2B5
	Offset: 0x830
	Size: 0x3EB
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
	Namespace: namespace_7c587e3e
	Checksum: 0x19620907
	Offset: 0xC28
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
	var_49992acb = (21636, -1368, 228);
	wait(2);
	var_5dc5e20a = function_79c174a3(0);
	if(isdefined(var_5dc5e20a))
	{
		level thread function_8b5fd6e1(var_5dc5e20a, var_49992acb, "mus_assassination_layer_1", 0, 1, 250, 1300, "mus_assassination_layer_2", 0, 1, 50, 700, "mus_assassination_stinger");
	}
}

