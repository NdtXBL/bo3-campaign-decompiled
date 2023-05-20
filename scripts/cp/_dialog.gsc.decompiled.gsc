#using scripts\codescripts\struct;
#using scripts\shared\ai\systems\face;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\math_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_71b8dba1;

/*
	Name: function_2dc19561
	Namespace: namespace_71b8dba1
	Checksum: 0xAE9083F0
	Offset: 0x370
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("dialog", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_71b8dba1
	Checksum: 0x11DB08A0
	Offset: 0x3B0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	level.var_8d753d94 = function_a8fb77bd();
	level.var_8d753d94.var_35e95274 = [];
	namespace_dabbe128::function_356a4ee1(&function_bfb57e5a);
}

/*
	Name: function_bfb57e5a
	Namespace: namespace_71b8dba1
	Checksum: 0xA24DCB57
	Offset: 0x410
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_bfb57e5a()
{
	self function_5b7e454a(&"offsite_comms_complete");
}

/*
	Name: function_69554b3e
	Namespace: namespace_71b8dba1
	Checksum: 0xC4C71D70
	Offset: 0x440
	Size: 0xFB
	Parameters: 2
	Flags: None
*/
function function_69554b3e(var_6ec80991, var_4b66e891)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_6ec80991), "Dev Block strings are not supported");
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_4b66e891), "Dev Block strings are not supported");
	#/
	if(!isdefined(level.var_695a72d7))
	{
		level.var_695a72d7 = [];
	}
	if(!isdefined(level.var_695a72d7["generic"]))
	{
		level.var_695a72d7["generic"] = [];
	}
	level.var_695a72d7["generic"][var_6ec80991] = var_4b66e891;
	namespace_1fb6a2e5::function_ed9df341("vox#" + var_6ec80991, &function_3c0e32a, 0, var_6ec80991);
}

/*
	Name: function_3c0e32a
	Namespace: namespace_71b8dba1
	Checksum: 0xA941FC30
	Offset: 0x548
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_3c0e32a(var_d0fd3b65)
{
	if(function_65f192a6(self))
	{
		if(self namespace_957e94ce::function_7922262b("shared_igc"))
		{
			function_13b3b16a(var_d0fd3b65);
		}
		else
		{
			function_81141386(var_d0fd3b65);
		}
	}
	else if(function_9fc88ab6(var_d0fd3b65))
	{
		level function_13b3b16a(var_d0fd3b65);
	}
	else
	{
		function_81141386(var_d0fd3b65);
	}
}

/*
	Name: function_9fc88ab6
	Namespace: namespace_71b8dba1
	Checksum: 0x91F25A
	Offset: 0x610
	Size: 0x81
	Parameters: 1
	Flags: None
*/
function function_9fc88ab6(var_e8800af4)
{
	var_95b0c1af = undefined;
	if(isdefined(level.var_695a72d7) && isdefined(level.var_695a72d7["generic"]))
	{
		var_95b0c1af = level.var_695a72d7["generic"][var_e8800af4];
	}
	if(!isdefined(var_95b0c1af))
	{
		return 0;
	}
	return function_77fdb408(var_95b0c1af, "plyr");
}

/*
	Name: function_81141386
	Namespace: namespace_71b8dba1
	Checksum: 0xCD48912E
	Offset: 0x6A0
	Size: 0x163
	Parameters: 5
	Flags: None
*/
function function_81141386(var_d0fd3b65, var_ee7dbbc9, var_57b7ba95, var_4acdf566, var_43937b21)
{
	if(!isdefined(var_57b7ba95))
	{
		var_57b7ba95 = 0;
	}
	var_a3d46ee4 = self;
	if(self == level)
	{
		if(isdefined(var_43937b21) && var_43937b21)
		{
			var_a3d46ee4 = function_9b7fda5e("script_model", (0, 0, 0));
			level.var_b87b8f90 = var_a3d46ee4;
		}
		else
		{
			var_a3d46ee4 = function_9b7fda5e("script_origin", (0, 0, 0));
		}
		waittillframeend;
		level notify("hash_120cde7f", var_a3d46ee4);
		var_57b7ba95 = 1;
	}
	var_a3d46ee4 endon("hash_128f8789");
	var_a3d46ee4 thread function_263a2879(var_d0fd3b65, var_ee7dbbc9, var_57b7ba95, var_4acdf566);
	var_a3d46ee4 waittillmatch("hash_90f83311");
	if(self == level)
	{
		var_a3d46ee4 function_dc8c8404();
		if(isdefined(level.var_b87b8f90))
		{
			level.var_b87b8f90 function_dc8c8404();
		}
	}
}

/*
	Name: function_263a2879
	Namespace: namespace_71b8dba1
	Checksum: 0xE81D3E10
	Offset: 0x810
	Size: 0x2A5
	Parameters: 4
	Flags: Private
*/
function private function_263a2879(var_d0fd3b65, var_ee7dbbc9, var_57b7ba95, var_4acdf566)
{
	if(!isdefined(var_57b7ba95))
	{
		var_57b7ba95 = 0;
	}
	self endon("hash_128f8789");
	self.var_f3995442 = 1;
	self thread function_665c78f1(var_d0fd3b65);
	level endon("hash_3962ec94");
	self endon("hash_3962ec94");
	if(isdefined(var_ee7dbbc9) && var_ee7dbbc9 > 0)
	{
		wait(var_ee7dbbc9);
	}
	if(self.var_e6e9b8de === "script_origin")
	{
		var_57b7ba95 = 1;
	}
	if(!var_57b7ba95)
	{
		if(!isdefined(self.var_3a90f16b) || self.var_3a90f16b <= 0)
		{
			if(!function_65f192a6(self) || (!isdefined(self.var_564407fb) && self.var_564407fb))
			{
				/#
					namespace_33b293fd::function_94739542("Dev Block strings are not supported");
				#/
				self.var_f3995442 = undefined;
				self notify("hash_90f83311", var_d0fd3b65);
				return;
			}
		}
	}
	self.var_fe2c8dda = 1;
	if(isdefined(self.var_8fc0e50e) && (self.var_8fc0e50e == "human" || self.var_8fc0e50e == "human_riotshield" || self.var_8fc0e50e == "human_rpg" || self.var_8fc0e50e == "civilian"))
	{
		self namespace_71e9cb84::function_74d6b22f("facial_dial", 1);
	}
	self namespace_4bf1e5d2::function_eb490e88(0, var_d0fd3b65, 1, undefined, undefined, undefined, var_4acdf566);
	self waittillmatch("hash_90f83311");
	if(isdefined(self.var_8fc0e50e) && (self.var_8fc0e50e == "human" || self.var_8fc0e50e == "human_riotshield" || self.var_8fc0e50e == "human_rpg" || self.var_8fc0e50e == "civilian"))
	{
		self namespace_71e9cb84::function_74d6b22f("facial_dial", 0);
	}
	self.var_fe2c8dda = undefined;
	self.var_f3995442 = undefined;
}

/*
	Name: function_665c78f1
	Namespace: namespace_71b8dba1
	Checksum: 0xD0441982
	Offset: 0xAC0
	Size: 0x5D
	Parameters: 1
	Flags: None
*/
function function_665c78f1(var_d0fd3b65)
{
	self endon("hash_128f8789");
	self notify("hash_8e6b4ba3");
	self endon("hash_8e6b4ba3");
	namespace_82b91a51::function_f20332a2(level, "kill_pending_dialog", self, "kill_pending_dialog");
	self.var_f3995442 = undefined;
}

/*
	Name: function_13b3b16a
	Namespace: namespace_71b8dba1
	Checksum: 0xF1C3DFEB
	Offset: 0xB28
	Size: 0xF3
	Parameters: 2
	Flags: None
*/
function function_13b3b16a(var_d0fd3b65, var_ee7dbbc9)
{
	if(self == level)
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a thread function_13b3b16a(var_d0fd3b65, var_ee7dbbc9);
		}
		namespace_84970cc4::function_866592e(level.var_9b1393e7, "done speaking", var_d0fd3b65);
	}
	else
	{
		function_81141386(var_d0fd3b65, var_ee7dbbc9, 0, self);
	}
}

/*
	Name: function_a463d127
	Namespace: namespace_71b8dba1
	Checksum: 0xB79BC563
	Offset: 0xC28
	Size: 0x391
	Parameters: 5
	Flags: None
*/
function function_a463d127(var_d0fd3b65, var_ee7dbbc9, var_7b81749, var_4acdf566, var_43937b21)
{
	if(!isdefined(var_7b81749))
	{
		var_7b81749 = "dni";
	}
	if(var_7b81749 === "dni")
	{
		var_8ef9b1c0 = function_d6df1f20(level.var_695a72d7["generic"][var_d0fd3b65], "_");
		var_46866c13 = undefined;
		switch(var_8ef9b1c0[var_8ef9b1c0.size - 1])
		{
			case "diaz":
			{
				var_46866c13 = &"CPUI_DIAZ_SEBASTIAN";
				break;
			}
			case "ecmd":
			{
				var_46866c13 = &"CPUI_EGYPTIAN_COMMAND";
				break;
			}
			case "xiul":
			{
				var_46866c13 = &"CPUI_GOH_XIULAN";
				break;
			}
			case "hend":
			{
				var_46866c13 = &"CPUI_HENDRICKS_JACOB";
				break;
			}
			case "khal":
			{
				var_46866c13 = &"CPUI_KHALIL_ZEYAD";
				break;
			}
			case "mare":
			{
				var_46866c13 = &"CPUI_MARETTI_PETER";
				break;
			}
			case "kane":
			{
				var_46866c13 = &"CPUI_KANE_RACHEL";
				break;
			}
			case "hall":
			{
				var_46866c13 = &"CPUI_HALL_SARAH";
				break;
			}
			case "tayr":
			{
				var_46866c13 = &"CPUI_TAYLOR_JOHN";
				break;
			}
			case "vtpl":
			case "wapl":
			{
				var_46866c13 = &"CPUI_VTOL_PILOT";
				break;
			}
			case default:
			{
				var_46866c13 = undefined;
				break;
			}
		}
		if(isdefined(var_46866c13) && !function_27c72c1b())
		{
			foreach(var_5dc5e20a in level.var_2395e945)
			{
				if(!isdefined(var_4acdf566) || var_4acdf566 == var_5dc5e20a)
				{
					var_5dc5e20a function_5b7e454a(&"offsite_comms_message", 1, var_46866c13);
				}
			}
		}
	}
	level function_81141386(var_d0fd3b65, var_ee7dbbc9, 1, var_4acdf566, var_43937b21);
	if(!function_27c72c1b())
	{
		if(var_7b81749 === "dni")
		{
			foreach(var_5dc5e20a in level.var_2395e945)
			{
				if(!isdefined(var_4acdf566) || var_4acdf566 == var_5dc5e20a)
				{
					var_5dc5e20a function_5b7e454a(&"offsite_comms_complete");
				}
			}
		}
	}
}

