#using scripts\codescripts\struct;
#using scripts\shared\audio_shared;

#namespace namespace_e0a1d00c;

/*
	Name: function_d290ebfa
	Namespace: namespace_e0a1d00c
	Checksum: 0x7C39D44D
	Offset: 0x110
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	thread function_cfda56c6();
	level thread function_625f0409();
}

/*
	Name: function_cfda56c6
	Namespace: namespace_e0a1d00c
	Checksum: 0x776B7969
	Offset: 0x148
	Size: 0x11
	Parameters: 0
	Flags: None
*/
function function_cfda56c6()
{
	level notify("hash_9c8a3479");
}

/*
	Name: function_625f0409
	Namespace: namespace_e0a1d00c
	Checksum: 0x28AB373F
	Offset: 0x168
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_625f0409()
{
	level waittill("hash_ace596");
	level thread function_69ca5e40();
	var_49992acb = (-3972, 759, 4462);
	var_5dc5e20a = function_79c174a3(0);
	level.var_69a1bedf = 1;
	level thread function_8b5fd6e1(var_5dc5e20a, var_49992acb, "mus_diveramper_layer_1", 0, 1, 450, 1200, "mus_diveramper_layer_2", 0, 1, 250, 700, "mus_diveramper_stinger");
}

/*
	Name: function_69ca5e40
	Namespace: namespace_e0a1d00c
	Checksum: 0xABBE80F9
	Offset: 0x230
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_69ca5e40()
{
	level waittill("hash_a38d24cd");
	level.var_69a1bedf = 0;
}

/*
	Name: function_8b5fd6e1
	Namespace: namespace_e0a1d00c
	Checksum: 0x8E00A520
	Offset: 0x258
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
	Namespace: namespace_e0a1d00c
	Checksum: 0x893E9A89
	Offset: 0x668
	Size: 0x113
	Parameters: 4
	Flags: None
*/
function function_860d167b(var_11e3ff05, var_37e6796e, var_105ef70b, var_9e5787d0)
{
	level endon("hash_a38d24cd");
	level waittill("hash_2693b45");
	var_11e3ff05 function_dc8c8404();
	var_37e6796e function_dc8c8404();
	var_105ef70b = undefined;
	var_9e5787d0 = undefined;
	var_49992acb = (-3972, 759, 4462);
	wait(2);
	var_5dc5e20a = function_79c174a3(0);
	if(isdefined(var_5dc5e20a))
	{
		level thread function_8b5fd6e1(var_5dc5e20a, var_49992acb, "mus_diveramper_layer_1", 0, 1, 250, 700, "mus_diveramper_layer_2", 0, 1, 50, 300, "mus_diveramper_stinger");
	}
}

