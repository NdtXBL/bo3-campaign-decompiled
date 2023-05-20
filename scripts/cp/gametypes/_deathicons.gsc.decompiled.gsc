#using scripts\codescripts\struct;
#using scripts\cp\gametypes\_globallogic_utils;
#using scripts\shared\callbacks_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_f17c3089;

/*
	Name: function_2dc19561
	Namespace: namespace_f17c3089
	Checksum: 0x7C31F568
	Offset: 0x168
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("deathicons", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_f17c3089
	Checksum: 0xC44F2BC0
	Offset: 0x1A8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_dabbe128::function_c61b24c4(&function_c35e6aab);
	namespace_dabbe128::function_eb99da89(&function_fb4f96b5);
}

/*
	Name: function_c35e6aab
	Namespace: namespace_f17c3089
	Checksum: 0x2DF4678D
	Offset: 0x1F8
	Size: 0x2F
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	if(!isdefined(level.var_c877b52d))
	{
		level.var_c877b52d = &function_c877b52d;
	}
	if(!level.var_de12b72f)
	{
		return;
	}
}

/*
	Name: function_fb4f96b5
	Namespace: namespace_f17c3089
	Checksum: 0x5A8FD029
	Offset: 0x230
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_fb4f96b5()
{
	self.var_d11175ff = [];
}

/*
	Name: function_44455ed8
	Namespace: namespace_f17c3089
	Checksum: 0x99EC1590
	Offset: 0x248
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_44455ed8()
{
}

/*
	Name: function_69554b3e
	Namespace: namespace_f17c3089
	Checksum: 0xF2244B14
	Offset: 0x258
	Size: 0x243
	Parameters: 4
	Flags: None
*/
function function_69554b3e(var_aa10fce8, var_fb95d3bf, var_3e94206a, var_4573206)
{
	if(!level.var_de12b72f || (isdefined(level.var_3da0c335) && level.var_3da0c335))
	{
		return;
	}
	var_60e3a384 = var_aa10fce8.var_722885f3;
	var_fb95d3bf endon("hash_8d7b7db3");
	var_fb95d3bf endon("hash_643a7daf");
	wait(0.05);
	namespace_82b91a51::function_7000c5f1();
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_e7a38025[var_3e94206a]));
	#/
	if(function_6f1ebe57("ui_hud_showdeathicons") == "0")
	{
		return;
	}
	if(level.var_50527ffe)
	{
		return;
	}
	if(isdefined(self.var_a3be9036))
	{
		self.var_a3be9036 function_89cd542d();
	}
	var_1c39c516 = function_edb2e310(var_3e94206a);
	var_1c39c516.var_4f8217af = var_60e3a384[0];
	var_1c39c516.var_297f9d46 = var_60e3a384[1];
	var_1c39c516.var_37d22dd = var_60e3a384[2] + 54;
	var_1c39c516.var_aabe9f43 = 0.61;
	var_1c39c516.var_740f6833 = 1;
	if(level.var_2016892b)
	{
		var_1c39c516 function_9befb288("headicon_dead", 14, 14);
	}
	else
	{
		var_1c39c516 function_9befb288("headicon_dead", 7, 7);
	}
	var_1c39c516 function_26b3bd1e(1);
	self.var_a3be9036 = var_1c39c516;
	var_1c39c516 thread function_c0c86ea2(var_4573206);
}

/*
	Name: function_c0c86ea2
	Namespace: namespace_f17c3089
	Checksum: 0xF81CE849
	Offset: 0x4A8
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_c0c86ea2(var_4573206)
{
	self endon("hash_128f8789");
	wait(var_4573206);
	self function_ba7f003e(1);
	self.var_aabe9f43 = 0;
	wait(1);
	self function_89cd542d();
}

/*
	Name: function_c877b52d
	Namespace: namespace_f17c3089
	Checksum: 0xF1653F6C
	Offset: 0x518
	Size: 0xDB
	Parameters: 10
	Flags: None
*/
function function_c877b52d(var_f9a179ed, var_ba36487d, var_ac1ce8c8, var_a77ad8eb, var_e8bb43ee, var_a2edc186, var_b2e5f7d2, var_51e6a548, var_64a5a080, var_75b85c5)
{
	if(var_ba36487d == "MOD_FALLING" && self function_8029a253() == 1)
	{
		var_75b85c5 function_d7a0a9d8();
		if(!isdefined(self.var_320486a0))
		{
			thread function_69554b3e(var_75b85c5, self, self.var_3e94206a, 5);
		}
		return 1;
	}
	return 0;
}

