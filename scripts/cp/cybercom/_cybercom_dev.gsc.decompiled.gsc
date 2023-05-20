#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_tactical_rig;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\system_shared;

#namespace namespace_afd2f70b;

/*
	Name: function_a0e51d80
	Namespace: namespace_afd2f70b
	Checksum: 0xC5B65AEA
	Offset: 0x318
	Size: 0x1BF
	Parameters: 4
	Flags: None
*/
function function_a0e51d80(var_dd89f865, var_761bddd, var_982bfcf2, var_d900369a)
{
	var_3fc1574 = GetTime() + var_761bddd * 1000;
	var_cec7adaa = function_b6b79a0(var_982bfcf2 / 2);
	var_a84bd888 = var_dd89f865 + (var_cec7adaa * -1, 0, 0);
	var_1a5347c3 = var_dd89f865 + (var_cec7adaa, 0, 0);
	var_5e2b69e1 = var_dd89f865 + (0, var_cec7adaa * -1, 0);
	var_842de44a = var_dd89f865 + (0, var_cec7adaa, 0);
	var_e4d48d14 = var_dd89f865 + (0, 0, var_cec7adaa * -1);
	var_56dbfc4f = var_dd89f865 + (0, 0, var_cec7adaa);
	while(var_3fc1574 > GetTime())
	{
		/#
			function_4e418837(var_a84bd888, var_1a5347c3, var_d900369a, 1, 0, 1);
			function_4e418837(var_5e2b69e1, var_842de44a, var_d900369a, 1, 0, 1);
			function_4e418837(var_e4d48d14, var_56dbfc4f, var_d900369a, 1, 0, 1);
		#/
		wait(0.05);
	}
}

/*
	Name: function_b9907dab
	Namespace: namespace_afd2f70b
	Checksum: 0xFDD5B616
	Offset: 0x4E0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_b9907dab()
{
	/#
		function_2f40de54("Dev Block strings are not supported");
		level thread function_7874d5f4();
	#/
}

/*
	Name: function_244cbceb
	Namespace: namespace_afd2f70b
	Checksum: 0x85BBAA5
	Offset: 0x528
	Size: 0x107
	Parameters: 0
	Flags: None
*/
function function_244cbceb()
{
	self notify("hash_244cbceb");
	self endon("hash_244cbceb");
	self endon("hash_643a7daf");
	self endon("hash_ab1f9ea1");
	while(1)
	{
		wait(1);
		if(isdefined(self.var_175490fb.var_ebeecfd5) && self.var_175490fb.var_ebeecfd5)
		{
			continue;
		}
		if(isdefined(self.var_175490fb.var_2e20c9bd))
		{
			var_2d11f419 = self function_76145bb7(self.var_175490fb.var_2e20c9bd);
			var_d921672c = self function_d1693908(var_2d11f419);
			if(var_d921672c)
			{
				self function_822aa28(var_2d11f419, 100);
			}
		}
	}
}

/*
	Name: function_7874d5f4
	Namespace: namespace_afd2f70b
	Checksum: 0x38569580
	Offset: 0x638
	Size: 0x70F
	Parameters: 0
	Flags: None
*/
function function_7874d5f4()
{
	function_6c1294b8("devgui_cybercore", "");
	function_6c1294b8("devgui_cybercore_upgrade", "");
	while(1)
	{
		var_c1905327 = function_6f1ebe57("devgui_cybercore");
		if(var_c1905327 == "")
		{
			wait(0.5);
			continue;
		}
		var_5c820472 = function_4bd0142f("scr_player_number") - 1;
		var_2395e945 = function_3f10449f();
		if(var_5c820472 >= var_2395e945.size)
		{
			function_6c1294b8("devgui_cybercore", "");
			function_6c1294b8("devgui_cybercore_upgrade", "");
			function_2e4b8c78("Invalid Player specified. Use SET PLAYER NUMBER in Cybercom DEVGUI to set valid player");
			continue;
		}
		if(var_c1905327 == "juiceme")
		{
			function_6c1294b8("devgui_cybercore", "");
			function_6c1294b8("devgui_cybercore_upgrade", "");
			function_2e4b8c78("Giving Constant Juice to all players");
			foreach(var_5dc5e20a in var_2395e945)
			{
				var_5dc5e20a thread function_244cbceb();
			}
			continue;
		}
		if(var_c1905327 == "clearAll")
		{
			function_2e4b8c78("Clearing all abilities on all players");
			foreach(var_5dc5e20a in var_2395e945)
			{
				var_5dc5e20a namespace_726a1ef0::function_78908229();
				var_5dc5e20a namespace_d00ec32::function_c219b381();
			}
			function_6c1294b8("devgui_cybercore", "");
			function_6c1294b8("devgui_cybercore_upgrade", "");
			continue;
		}
		if(var_c1905327 == "giveAll")
		{
			function_2e4b8c78("Giving all abilities on all players");
			foreach(var_5dc5e20a in var_2395e945)
			{
				var_5dc5e20a namespace_d00ec32::function_edff667f();
			}
			function_6c1294b8("devgui_cybercore", "");
			function_6c1294b8("devgui_cybercore_upgrade", "");
			continue;
		}
		var_5dc5e20a = var_2395e945[var_5c820472];
		var_5c820472++;
		var_f8d4f987 = function_4bd0142f("devgui_cybercore_upgrade");
		if(var_c1905327 == "clearPlayer")
		{
			function_2e4b8c78("Clearing abilities on player: " + var_5c820472);
			var_5dc5e20a namespace_726a1ef0::function_78908229();
			var_5dc5e20a namespace_d00ec32::function_c219b381();
			function_6c1294b8("devgui_cybercore", "");
			function_6c1294b8("devgui_cybercore_upgrade", "");
			continue;
		}
		else if(var_c1905327 == "control")
		{
			function_6c1294b8("devgui_cybercore", "");
			function_6c1294b8("devgui_cybercore_upgrade", "");
			continue;
		}
		else if(var_c1905327 == "martial")
		{
			function_6c1294b8("devgui_cybercore", "");
			function_6c1294b8("devgui_cybercore_upgrade", "");
			continue;
		}
		else if(var_c1905327 == "chaos")
		{
			function_6c1294b8("devgui_cybercore", "");
			function_6c1294b8("devgui_cybercore_upgrade", "");
			continue;
		}
		if(isdefined(level.var_ab0cd3b2[var_c1905327]))
		{
			var_5dc5e20a namespace_726a1ef0::function_8ffa26e2(var_c1905327, var_f8d4f987);
		}
		else
		{
			var_5dc5e20a namespace_d00ec32::function_a724d44(var_c1905327, var_f8d4f987);
		}
		if(var_f8d4f987)
		{
		}
		else
		{
		}
		function_2e4b8c78("TRUE" + "FALSE");
		function_6c1294b8("devgui_cybercore", "");
		function_6c1294b8("devgui_cybercore_upgrade", "");
	}
}

