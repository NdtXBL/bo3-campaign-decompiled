#namespace namespace_4ed4457c;

/*
	Name: function_573980e0
	Namespace: namespace_4ed4457c
	Checksum: 0x4DA4D193
	Offset: 0x70
	Size: 0xB7
	Parameters: 2
	Flags: None
*/
function function_573980e0(var_a467390a, var_a9f4c2c5)
{
	/#
		if(isdefined(level.var_3415bd7a[var_a467390a]))
		{
			function_895b00("Dev Block strings are not supported" + var_a467390a + "Dev Block strings are not supported");
			return;
		}
		level.var_3415bd7a[var_a467390a] = function_a8fb77bd();
		level.var_3415bd7a[var_a467390a].var_a9f4c2c5 = "Dev Block strings are not supported";
		level.var_3415bd7a[var_a467390a].var_a9f4c2c5 = var_a9f4c2c5;
	#/
}

/*
	Name: function_2a240d1a
	Namespace: namespace_4ed4457c
	Checksum: 0x9C1B5CFB
	Offset: 0x130
	Size: 0x131
	Parameters: 4
	Flags: None
*/
function function_2a240d1a(var_a467390a, var_26a8b438, var_86365a77, var_f54b9c82)
{
	/#
		if(!isdefined(level.var_3415bd7a[var_a467390a].var_b9d80cd1))
		{
			level.var_3415bd7a[var_a467390a].var_b9d80cd1 = [];
		}
		var_791757 = level.var_3415bd7a[var_a467390a].var_b9d80cd1.size;
		level.var_3415bd7a[var_a467390a].var_b9d80cd1[var_791757] = var_26a8b438;
		level.var_3415bd7a[var_a467390a].var_86365a77[var_791757] = var_86365a77;
		if(isdefined(var_f54b9c82))
		{
			if(!isdefined(level.var_3415bd7a[var_a467390a].var_330af417))
			{
				level.var_3415bd7a[var_a467390a].var_330af417 = [];
			}
			level.var_3415bd7a[var_a467390a].var_330af417[var_791757] = var_f54b9c82;
		}
	#/
}

/*
	Name: function_c85aeeff
	Namespace: namespace_4ed4457c
	Checksum: 0xAB49B5D0
	Offset: 0x270
	Size: 0x175
	Parameters: 5
	Flags: None
*/
function function_c85aeeff(var_6725d265, var_43d33b65, var_5a160d62, var_43a34966, var_86365a77)
{
	/#
		if(!isdefined(level.var_3415bd7a[var_43d33b65]))
		{
			function_573980e0(var_43d33b65, var_5a160d62);
		}
		level.var_3415bd7a[var_43d33b65].var_6725d265 = var_6725d265;
		if(!isdefined(level.var_3415bd7a[var_6725d265].var_b80b6a5e))
		{
			level.var_3415bd7a[var_6725d265].var_b80b6a5e = [];
		}
		if(!isdefined(var_43a34966))
		{
			var_982bfcf2 = level.var_3415bd7a[var_6725d265].var_b80b6a5e.size;
		}
		else
		{
			var_982bfcf2 = var_43a34966;
		}
		level.var_3415bd7a[var_6725d265].var_b80b6a5e[var_982bfcf2] = var_43d33b65;
		if(isdefined(var_86365a77))
		{
			if(!isdefined(level.var_3415bd7a[var_6725d265].var_92128d15))
			{
				level.var_3415bd7a[var_6725d265].var_92128d15 = [];
			}
			level.var_3415bd7a[var_6725d265].var_92128d15[var_982bfcf2] = var_86365a77;
		}
	#/
}

/*
	Name: function_af0c3893
	Namespace: namespace_4ed4457c
	Checksum: 0xA8AEB386
	Offset: 0x3F0
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_af0c3893(var_a467390a)
{
	/#
		level.var_3415bd7a[var_a467390a].var_5989e69a = 1;
	#/
}

/*
	Name: function_d8c9ef6e
	Namespace: namespace_4ed4457c
	Checksum: 0xDC9FD09D
	Offset: 0x428
	Size: 0x275
	Parameters: 1
	Flags: None
*/
function function_d8c9ef6e(var_a467390a)
{
	/#
		function_2ab1ba27("Dev Block strings are not supported");
		if(isdefined(level.var_c076b585))
		{
			level.var_c076b585.var_297f9d46 = 130;
			level.var_c076b585.var_aab28b83 = 0;
		}
		level.var_3415bd7a["Dev Block strings are not supported"].var_a9f4c2c5 = function_cd0bfb3c(level.var_3415bd7a[var_a467390a].var_a9f4c2c5, "Dev Block strings are not supported");
		level.var_3415bd7a["Dev Block strings are not supported"].var_a467390a = var_a467390a;
		var_593795dd = 0;
		if(isdefined(level.var_3415bd7a[var_a467390a].var_b9d80cd1))
		{
			var_b9d80cd1 = level.var_3415bd7a[var_a467390a].var_b9d80cd1;
			for(var_c957f6b6 = 0; var_c957f6b6 < var_b9d80cd1.size; var_c957f6b6++)
			{
				var_8caa0808 = var_c957f6b6 + 1 + "Dev Block strings are not supported" + var_b9d80cd1[var_c957f6b6];
				level.var_3415bd7a["Dev Block strings are not supported"].var_b9d80cd1[var_c957f6b6] = function_cd0bfb3c(var_8caa0808, "Dev Block strings are not supported", 20 * var_c957f6b6);
				var_593795dd = var_c957f6b6;
			}
		}
		else if(isdefined(level.var_3415bd7a[var_a467390a].var_6725d265) && !isdefined(level.var_3415bd7a[var_a467390a].var_5989e69a))
		{
			var_593795dd++;
			var_8caa0808 = var_593795dd + 1 + "Dev Block strings are not supported" + "Dev Block strings are not supported";
			level.var_3415bd7a["Dev Block strings are not supported"].var_b9d80cd1[var_593795dd] = function_cd0bfb3c(var_8caa0808, "Dev Block strings are not supported", 20 * var_593795dd);
		}
	#/
}

/*
	Name: function_2ab1ba27
	Namespace: namespace_4ed4457c
	Checksum: 0xB94BF3F
	Offset: 0x6A8
	Size: 0x127
	Parameters: 1
	Flags: None
*/
function function_2ab1ba27(var_a467390a)
{
	/#
		if(isdefined(level.var_3415bd7a[var_a467390a]))
		{
			if(isdefined(level.var_3415bd7a[var_a467390a].var_a9f4c2c5))
			{
				level.var_3415bd7a[var_a467390a].var_a9f4c2c5 function_89cd542d();
			}
			if(isdefined(level.var_3415bd7a[var_a467390a].var_b9d80cd1))
			{
				var_b9d80cd1 = level.var_3415bd7a[var_a467390a].var_b9d80cd1;
				for(var_c957f6b6 = 0; var_c957f6b6 < var_b9d80cd1.size; var_c957f6b6++)
				{
					var_b9d80cd1[var_c957f6b6] function_89cd542d();
				}
			}
		}
		level.var_3415bd7a[var_a467390a].var_a9f4c2c5 = undefined;
		level.var_3415bd7a[var_a467390a].var_b9d80cd1 = [];
	#/
}

/*
	Name: function_cd0bfb3c
	Namespace: namespace_4ed4457c
	Checksum: 0x8AB091B4
	Offset: 0x7D8
	Size: 0xCB
	Parameters: 3
	Flags: None
*/
function function_cd0bfb3c(var_8caa0808, var_fe311e35, var_ae0dead4)
{
	/#
		var_297f9d46 = 100;
		if(isdefined(var_fe311e35) && var_fe311e35 == "Dev Block strings are not supported")
		{
			var_5c21ad3d = 2;
		}
		else
		{
			var_5c21ad3d = 1.3;
			var_297f9d46 = var_297f9d46 + 30;
		}
		if(!isdefined(var_ae0dead4))
		{
			var_ae0dead4 = 0;
		}
		var_297f9d46 = var_297f9d46 + var_ae0dead4;
		return function_8bd98a60(var_8caa0808, 10, var_297f9d46, var_5c21ad3d);
	#/
}

/*
	Name: function_8bd98a60
	Namespace: namespace_4ed4457c
	Checksum: 0xEC09D14
	Offset: 0x8B0
	Size: 0x1D1
	Parameters: 7
	Flags: None
*/
function function_8bd98a60(var_8caa0808, var_4f8217af, var_297f9d46, var_5c21ad3d, var_aabe9f43, var_4d19365, var_5bf34339)
{
	/#
		if(!isdefined(var_aabe9f43))
		{
			var_aabe9f43 = 1;
		}
		if(!isdefined(var_5c21ad3d))
		{
			var_5c21ad3d = 1;
		}
		if(!isdefined(var_4d19365))
		{
			var_4d19365 = 20;
		}
		if(isdefined(level.var_5dc5e20a) && !isdefined(var_5bf34339))
		{
			var_724a4794 = function_ad13099a(level.var_5dc5e20a);
		}
		else
		{
			var_724a4794 = function_84c0e150();
			var_724a4794.var_5bf34339 = 1;
		}
		var_724a4794.var_35940ed8 = 0;
		var_724a4794.var_b5536acc = "Dev Block strings are not supported";
		var_724a4794.var_db55e535 = "Dev Block strings are not supported";
		var_724a4794.var_79e0f792 = 1;
		var_724a4794.var_2363da9c = var_5c21ad3d;
		var_724a4794.var_4d19365 = var_4d19365;
		var_724a4794.var_aabe9f43 = var_aabe9f43;
		var_724a4794.var_4f8217af = var_4f8217af;
		var_724a4794.var_297f9d46 = var_297f9d46;
		var_724a4794.var_7879f904 = var_5c21ad3d;
		if(isdefined(var_8caa0808))
		{
			var_724a4794 function_f6181aca(var_8caa0808);
		}
		return var_724a4794;
	#/
}

/*
	Name: function_a0ef74a9
	Namespace: namespace_4ed4457c
	Checksum: 0x19B1B57A
	Offset: 0xA90
	Size: 0x81F
	Parameters: 0
	Flags: None
*/
function function_a0ef74a9()
{
	/#
		while(1)
		{
			level waittill("hash_69c6c918", var_58c6dc25);
			var_a467390a = level.var_3415bd7a["Dev Block strings are not supported"].var_a467390a;
			if(var_58c6dc25 == "Dev Block strings are not supported" || var_58c6dc25 == "Dev Block strings are not supported")
			{
				if(level.var_c076b585.var_aab28b83 > 0)
				{
					level.var_c076b585.var_297f9d46 = level.var_c076b585.var_297f9d46 - 20;
					level.var_c076b585.var_aab28b83--;
				}
				else if(level.var_c076b585.var_aab28b83 == 0)
				{
					level.var_c076b585.var_297f9d46 = level.var_c076b585.var_297f9d46 + level.var_3415bd7a["Dev Block strings are not supported"].var_b9d80cd1.size - 1 * 20;
					level.var_c076b585.var_aab28b83 = level.var_3415bd7a["Dev Block strings are not supported"].var_b9d80cd1.size - 1;
				}
				wait(0.1);
				continue;
			}
			else if(var_58c6dc25 == "Dev Block strings are not supported" || var_58c6dc25 == "Dev Block strings are not supported")
			{
				if(level.var_c076b585.var_aab28b83 < level.var_3415bd7a["Dev Block strings are not supported"].var_b9d80cd1.size - 1)
				{
					level.var_c076b585.var_297f9d46 = level.var_c076b585.var_297f9d46 + 20;
					level.var_c076b585.var_aab28b83++;
				}
				else if(level.var_c076b585.var_aab28b83 == level.var_3415bd7a["Dev Block strings are not supported"].var_b9d80cd1.size - 1)
				{
					level.var_c076b585.var_297f9d46 = level.var_c076b585.var_297f9d46 + level.var_c076b585.var_aab28b83 * -20;
					level.var_c076b585.var_aab28b83 = 0;
				}
				wait(0.1);
				continue;
			}
			else if(var_58c6dc25 == "Dev Block strings are not supported" || var_58c6dc25 == "Dev Block strings are not supported")
			{
				var_f54b9c82 = level.var_c076b585.var_aab28b83;
			}
			else
			{
				var_f54b9c82 = function_b6b79a0(var_58c6dc25) - 1;
			}
			if(var_f54b9c82 > level.var_3415bd7a[var_a467390a].var_b9d80cd1.size)
			{
				continue;
			}
			else if(isdefined(level.var_3415bd7a[var_a467390a].var_6725d265) && var_f54b9c82 == level.var_3415bd7a[var_a467390a].var_b9d80cd1.size)
			{
				level notify("Dev Block strings are not supported" + var_a467390a);
				level function_d8c9ef6e(level.var_3415bd7a[var_a467390a].var_6725d265);
			}
			else if(isdefined(level.var_3415bd7a[var_a467390a].var_86365a77) && isdefined(level.var_3415bd7a[var_a467390a].var_86365a77[var_f54b9c82]))
			{
				level.var_3415bd7a["Dev Block strings are not supported"].var_b9d80cd1[var_f54b9c82] thread function_b5f43638(level.var_3415bd7a["Dev Block strings are not supported"].var_b9d80cd1[var_f54b9c82].var_4f8217af, level.var_3415bd7a["Dev Block strings are not supported"].var_b9d80cd1[var_f54b9c82].var_297f9d46);
				if(isdefined(level.var_3415bd7a[var_a467390a].var_330af417) && isdefined(level.var_3415bd7a[var_a467390a].var_330af417[var_f54b9c82]) && level.var_3415bd7a[var_a467390a].var_330af417[var_f54b9c82] == var_58c6dc25)
				{
					var_1f9143c3 = level [[level.var_3415bd7a[var_a467390a].var_86365a77[var_f54b9c82]]]();
				}
				else
				{
					var_1f9143c3 = level [[level.var_3415bd7a[var_a467390a].var_86365a77[var_f54b9c82]]]();
				}
				level thread function_fe04e7e8();
				if(isdefined(var_1f9143c3))
				{
					level thread function_218217ee(var_1f9143c3, level.var_3415bd7a["Dev Block strings are not supported"].var_b9d80cd1[var_f54b9c82].var_4f8217af, level.var_3415bd7a["Dev Block strings are not supported"].var_b9d80cd1[var_f54b9c82].var_297f9d46);
				}
			}
			if(!isdefined(level.var_3415bd7a[var_a467390a].var_b80b6a5e))
			{
				function_895b00("Dev Block strings are not supported" + var_a467390a + "Dev Block strings are not supported");
				continue;
			}
			else if(!isdefined(level.var_3415bd7a[var_a467390a].var_b80b6a5e[var_f54b9c82]))
			{
				function_895b00("Dev Block strings are not supported" + var_a467390a + "Dev Block strings are not supported" + var_f54b9c82 + "Dev Block strings are not supported");
				continue;
			}
			else if(!isdefined(level.var_3415bd7a[level.var_3415bd7a[var_a467390a].var_b80b6a5e[var_f54b9c82]]))
			{
				function_895b00("Dev Block strings are not supported" + level.var_3415bd7a[var_a467390a].var_b9d80cd1[var_f54b9c82] + "Dev Block strings are not supported");
				continue;
			}
			if(isdefined(level.var_3415bd7a[var_a467390a].var_92128d15) && isdefined(level.var_3415bd7a[var_a467390a].var_92128d15[var_f54b9c82]))
			{
				var_86365a77 = level.var_3415bd7a[var_a467390a].var_92128d15[var_f54b9c82];
				var_1f9143c3 = [[var_86365a77]]();
				if(isdefined(var_1f9143c3))
				{
					level thread function_218217ee(var_1f9143c3, level.var_3415bd7a["Dev Block strings are not supported"].var_b9d80cd1[var_f54b9c82].var_4f8217af, level.var_3415bd7a["Dev Block strings are not supported"].var_b9d80cd1[var_f54b9c82].var_297f9d46);
					continue;
				}
			}
			level function_d8c9ef6e(level.var_3415bd7a[var_a467390a].var_b80b6a5e[var_f54b9c82]);
			wait(0.1);
		}
	#/
}

/*
	Name: function_bd37ea7e
	Namespace: namespace_4ed4457c
	Checksum: 0x6A25ED7
	Offset: 0x12B8
	Size: 0x1AD
	Parameters: 1
	Flags: None
*/
function function_bd37ea7e(var_fe077489)
{
	/#
		if(isdefined(var_fe077489))
		{
			level waittill(var_fe077489);
		}
		wait(0.1);
		var_a467390a = level.var_3415bd7a["Dev Block strings are not supported"].var_a467390a;
		var_f54b9c82 = level.var_3415bd7a[var_a467390a].var_b9d80cd1.size;
		var_f54b9c82++;
		if(var_f54b9c82 == 1)
		{
			var_f54b9c82 = "Dev Block strings are not supported";
		}
		else if(var_f54b9c82 == 2)
		{
			var_f54b9c82 = "Dev Block strings are not supported";
		}
		else if(var_f54b9c82 == 3)
		{
			var_f54b9c82 = "Dev Block strings are not supported";
		}
		else if(var_f54b9c82 == 4)
		{
			var_f54b9c82 = "Dev Block strings are not supported";
		}
		else if(var_f54b9c82 == 5)
		{
			var_f54b9c82 = "Dev Block strings are not supported";
		}
		else if(var_f54b9c82 == 6)
		{
			var_f54b9c82 = "Dev Block strings are not supported";
		}
		else if(var_f54b9c82 == 7)
		{
			var_f54b9c82 = "Dev Block strings are not supported";
		}
		else if(var_f54b9c82 == 8)
		{
			var_f54b9c82 = "Dev Block strings are not supported";
		}
		else if(var_f54b9c82 == 9)
		{
			var_f54b9c82 = "Dev Block strings are not supported";
		}
		level notify("hash_69c6c918", var_f54b9c82);
	#/
}

/*
	Name: function_fb835fed
	Namespace: namespace_4ed4457c
	Checksum: 0xA83F6979
	Offset: 0x1470
	Size: 0x46B
	Parameters: 7
	Flags: None
*/
function function_fb835fed(var_25c27e55, var_4f8217af, var_297f9d46, var_5c21ad3d, var_86365a77, var_4d19365, var_4cd7cc92)
{
	/#
		if(!isdefined(var_25c27e55) || var_25c27e55.size == 0)
		{
			return -1;
		}
		var_1901fb66 = [];
		for(var_c957f6b6 = 0; var_c957f6b6 < 5; var_c957f6b6++)
		{
			if(var_c957f6b6 == 0)
			{
				var_aabe9f43 = 0.3;
			}
			else if(var_c957f6b6 == 1)
			{
				var_aabe9f43 = 0.6;
			}
			else if(var_c957f6b6 == 2)
			{
				var_aabe9f43 = 1;
			}
			else if(var_c957f6b6 == 3)
			{
				var_aabe9f43 = 0.6;
			}
			else
			{
				var_aabe9f43 = 0.3;
			}
			var_724a4794 = function_8bd98a60(var_25c27e55[var_c957f6b6], var_4f8217af, var_297f9d46 + var_c957f6b6 - 2 * 15, var_5c21ad3d, var_aabe9f43, var_4d19365);
			if(!isdefined(var_1901fb66))
			{
				var_1901fb66 = [];
			}
			else if(!function_6e2770d8(var_1901fb66))
			{
				var_1901fb66 = function_84970cc4(var_1901fb66);
			}
			var_1901fb66[var_1901fb66.size] = var_724a4794;
		}
		if(isdefined(var_4cd7cc92))
		{
			function_bdb589d8(var_1901fb66, var_25c27e55, var_4cd7cc92);
		}
		var_42618b51 = 0;
		var_821d84b1 = 0;
		var_d3ecf79a = 0;
		level.var_4cf25151 = 0;
		if(isdefined(var_86365a77))
		{
			[[var_86365a77]](var_25c27e55[var_42618b51]);
		}
		while(1)
		{
			level waittill("hash_69c6c918", var_f54b9c82);
			level.var_4cf25151 = 1;
			if(function_4f066bc2(var_f54b9c82, "Dev Block strings are not supported"))
			{
				break;
			}
			else if(var_f54b9c82 == "Dev Block strings are not supported" || var_f54b9c82 == "Dev Block strings are not supported")
			{
				if(var_42618b51 >= var_25c27e55.size - 1)
				{
					continue;
				}
				var_42618b51++;
				function_bdb589d8(var_1901fb66, var_25c27e55, var_42618b51);
			}
			else if(var_f54b9c82 == "Dev Block strings are not supported" || var_f54b9c82 == "Dev Block strings are not supported")
			{
				if(var_42618b51 <= 0)
				{
					continue;
				}
				var_42618b51--;
				function_bdb589d8(var_1901fb66, var_25c27e55, var_42618b51);
			}
			else if(var_f54b9c82 == "Dev Block strings are not supported" || var_f54b9c82 == "Dev Block strings are not supported")
			{
				var_d3ecf79a = 1;
				break;
			}
			else if(var_f54b9c82 == "Dev Block strings are not supported" || var_f54b9c82 == "Dev Block strings are not supported")
			{
				var_d3ecf79a = 0;
				break;
			}
			level notify("hash_c4916d91");
			if(var_42618b51 != var_821d84b1)
			{
				var_821d84b1 = var_42618b51;
				if(isdefined(var_86365a77))
				{
					[[var_86365a77]](var_25c27e55[var_42618b51]);
				}
			}
			wait(0.1);
		}
		for(var_c957f6b6 = 0; var_c957f6b6 < var_1901fb66.size; var_c957f6b6++)
		{
			var_1901fb66[var_c957f6b6] function_89cd542d();
		}
		if(var_d3ecf79a)
		{
			return var_42618b51;
		}
	#/
}

/*
	Name: function_bdb589d8
	Namespace: namespace_4ed4457c
	Checksum: 0xC724FF64
	Offset: 0x18E8
	Size: 0xBD
	Parameters: 3
	Flags: None
*/
function function_bdb589d8(var_1901fb66, var_25c27e55, var_791757)
{
	/#
		for(var_c957f6b6 = 0; var_c957f6b6 < var_1901fb66.size; var_c957f6b6++)
		{
			if(isdefined(var_25c27e55[var_c957f6b6 + var_791757 - 2]))
			{
				var_8caa0808 = var_25c27e55[var_c957f6b6 + var_791757 - 2];
			}
			else
			{
				var_8caa0808 = "Dev Block strings are not supported";
			}
			var_1901fb66[var_c957f6b6] function_f6181aca(var_8caa0808);
		}
	#/
}

/*
	Name: function_7b7c3571
	Namespace: namespace_4ed4457c
	Checksum: 0x6B6DA306
	Offset: 0x19B0
	Size: 0x27D
	Parameters: 6
	Flags: None
*/
function function_7b7c3571(var_1901fb66, var_bd00ff2a, var_7ffa5581, var_791757, var_b091d62e, var_41028055)
{
	/#
		if(!isdefined(var_b091d62e))
		{
			var_b091d62e = 0;
		}
		if(!isdefined(var_41028055))
		{
			var_41028055 = 3;
		}
		var_21b889cc = 0;
		if(var_bd00ff2a == "Dev Block strings are not supported")
		{
			var_21b889cc = 1;
			var_413f93d2 = var_7ffa5581;
		}
		else if(var_bd00ff2a == "Dev Block strings are not supported")
		{
			var_21b889cc = 1;
			var_413f93d2 = var_7ffa5581 * -1;
		}
		else if(var_bd00ff2a == "Dev Block strings are not supported")
		{
			var_413f93d2 = var_7ffa5581;
		}
		else
		{
			var_413f93d2 = var_7ffa5581 * -1;
		}
		for(var_c957f6b6 = 0; var_c957f6b6 < var_1901fb66.size; var_c957f6b6++)
		{
			var_1901fb66[var_c957f6b6] function_9b81e487(0.1);
			if(var_21b889cc)
			{
				var_1901fb66[var_c957f6b6].var_4f8217af = var_1901fb66[var_c957f6b6].var_4f8217af + var_413f93d2;
			}
			else
			{
				var_1901fb66[var_c957f6b6].var_297f9d46 = var_1901fb66[var_c957f6b6].var_297f9d46 + var_413f93d2;
			}
			var_f8f608db = var_c957f6b6 - var_791757;
			if(var_f8f608db < 0)
			{
				var_f8f608db = var_f8f608db * -1;
			}
			var_aabe9f43 = 1 / var_f8f608db + 1;
			if(var_aabe9f43 < 1 / var_41028055)
			{
				var_aabe9f43 = var_b091d62e;
			}
			if(!isdefined(var_1901fb66[var_c957f6b6].var_5bf34339))
			{
				var_1901fb66[var_c957f6b6] function_ba7f003e(0.1);
			}
			var_1901fb66[var_c957f6b6].var_aabe9f43 = var_aabe9f43;
		}
	#/
}

/*
	Name: function_b5f43638
	Namespace: namespace_4ed4457c
	Checksum: 0xC8E901A6
	Offset: 0x1C38
	Size: 0xEF
	Parameters: 2
	Flags: None
*/
function function_b5f43638(var_4f8217af, var_297f9d46)
{
	/#
		if(isdefined(level.var_b5f43638))
		{
			level thread function_fe04e7e8();
		}
		level.var_c076b585.var_aabe9f43 = 0;
		level.var_b5f43638 = function_8bd98a60(undefined, var_4f8217af - 10, var_297f9d46, 1);
		level.var_b5f43638 function_9befb288("Dev Block strings are not supported", 125, 20);
		level.var_b5f43638.var_d900369a = (1, 1, 0.5);
		level.var_b5f43638.var_aabe9f43 = 0.5;
		level.var_b5f43638.var_4d19365 = 10;
	#/
}

/*
	Name: function_fe04e7e8
	Namespace: namespace_4ed4457c
	Checksum: 0xE3862B1A
	Offset: 0x1D30
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_fe04e7e8(var_60db70fa)
{
	/#
		if(!isdefined(var_60db70fa))
		{
			var_60db70fa = 0.25;
		}
		level.var_c076b585.var_aabe9f43 = 0.5;
		var_724a4794 = level.var_b5f43638;
		level.var_b5f43638 = undefined;
		if(!isdefined(var_724a4794.var_5bf34339))
		{
			var_724a4794 function_ba7f003e(var_60db70fa);
		}
		var_724a4794.var_aabe9f43 = 0;
		wait(var_60db70fa + 0.1);
		var_724a4794 function_89cd542d();
	#/
}

/*
	Name: function_218217ee
	Namespace: namespace_4ed4457c
	Checksum: 0x45385F29
	Offset: 0x1E00
	Size: 0x1A3
	Parameters: 3
	Flags: None
*/
function function_218217ee(var_813fc428, var_4f8217af, var_297f9d46)
{
	/#
		var_724a4794 = function_8bd98a60(undefined, var_4f8217af - 10, var_297f9d46, 1);
		var_724a4794 function_9befb288("Dev Block strings are not supported", 125, 20);
		var_724a4794.var_d900369a = VectorScale((1, 0, 0), 0.5);
		var_724a4794.var_aabe9f43 = 0.7;
		var_58f82c4b = function_8bd98a60(var_813fc428, var_4f8217af + 125, var_297f9d46, 1);
		var_58f82c4b.var_d900369a = (1, 0, 0);
		if(!isdefined(var_724a4794.var_5bf34339))
		{
			var_724a4794 function_ba7f003e(3);
		}
		var_724a4794.var_aabe9f43 = 0;
		if(!isdefined(var_58f82c4b.var_5bf34339))
		{
			var_58f82c4b function_ba7f003e(3);
		}
		var_58f82c4b.var_aabe9f43 = 0;
		wait(3.1);
		var_724a4794 function_89cd542d();
		var_58f82c4b function_89cd542d();
	#/
}

/*
	Name: function_79fea2bf
	Namespace: namespace_4ed4457c
	Checksum: 0xCEED86E0
	Offset: 0x1FB0
	Size: 0xF9
	Parameters: 1
	Flags: None
*/
function function_79fea2bf(var_d6361123)
{
	/#
		self notify("hash_ae05051b");
		self endon("hash_128f8789");
		self endon("hash_ae05051b");
		var_7879f904 = self.var_7879f904;
		if(!isdefined(var_d6361123))
		{
			var_d6361123 = 1.5;
		}
		self.var_2363da9c = var_7879f904 * var_d6361123;
		var_f4e3423e = var_7879f904 - self.var_2363da9c;
		var_f4e3423e = var_f4e3423e / 1 * 20;
		for(var_c957f6b6 = 0; var_c957f6b6 < 1 * 20; var_c957f6b6++)
		{
			self.var_2363da9c = self.var_2363da9c + var_f4e3423e;
			wait(0.05);
		}
	#/
}

/*
	Name: function_c076b585
	Namespace: namespace_4ed4457c
	Checksum: 0x7296D8F
	Offset: 0x20B8
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_c076b585()
{
	/#
		level.var_c076b585 = function_8bd98a60(undefined, 0, 130, 1.3);
		level.var_c076b585 function_9befb288("Dev Block strings are not supported", 125, 20);
		level.var_c076b585.var_d900369a = (1, 0.5, 0);
		level.var_c076b585.var_aabe9f43 = 0.5;
		level.var_c076b585.var_4d19365 = 1;
		level.var_c076b585.var_aab28b83 = 0;
	#/
}

/*
	Name: function_fb312e3b
	Namespace: namespace_4ed4457c
	Checksum: 0xE43FBAEA
	Offset: 0x2180
	Size: 0xC1
	Parameters: 5
	Flags: None
*/
function function_fb312e3b(var_c8478ed6, var_813fc428, var_4f8217af, var_297f9d46, var_5c21ad3d)
{
	/#
		if(!isdefined(level.var_1901fb66))
		{
			level.var_1901fb66 = [];
		}
		if(!isdefined(level.var_1901fb66[var_c8478ed6]))
		{
			level.var_1901fb66[var_c8478ed6] = [];
		}
		var_724a4794 = function_8bd98a60(var_813fc428, var_4f8217af, var_297f9d46, var_5c21ad3d);
		level.var_1901fb66[var_c8478ed6][level.var_1901fb66[var_c8478ed6].size] = var_724a4794;
		return var_724a4794;
	#/
}

/*
	Name: function_f8a0189f
	Namespace: namespace_4ed4457c
	Checksum: 0xDB331F61
	Offset: 0x2250
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_f8a0189f(var_c8478ed6)
{
	/#
		if(!isdefined(level.var_1901fb66[var_c8478ed6]))
		{
			return;
		}
		var_d1bc5e07 = level.var_1901fb66[var_c8478ed6];
		for(var_c957f6b6 = 0; var_c957f6b6 < var_d1bc5e07.size; var_c957f6b6++)
		{
			function_ef76706b(var_d1bc5e07[var_c957f6b6]);
		}
		level.var_1901fb66[var_c8478ed6] = undefined;
	#/
}

/*
	Name: function_ef76706b
	Namespace: namespace_4ed4457c
	Checksum: 0x9F867DCA
	Offset: 0x22F0
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_ef76706b(var_724a4794)
{
	/#
		if(isdefined(var_724a4794))
		{
			var_724a4794 function_89cd542d();
		}
	#/
}

/*
	Name: function_7395ea6e
	Namespace: namespace_4ed4457c
	Checksum: 0x729D6A77
	Offset: 0x2330
	Size: 0x141
	Parameters: 7
	Flags: None
*/
function function_7395ea6e(var_1901fb66, var_791757, var_4f8217af, var_297f9d46, var_7ffa5581, var_b091d62e, var_41028055)
{
	/#
		if(!isdefined(var_b091d62e))
		{
			var_b091d62e = 0.1;
		}
		if(!isdefined(var_41028055))
		{
			var_41028055 = 3;
		}
		for(var_c957f6b6 = 0; var_c957f6b6 < var_1901fb66.size; var_c957f6b6++)
		{
			var_f8f608db = var_c957f6b6 - var_791757;
			var_1901fb66[var_c957f6b6].var_297f9d46 = var_297f9d46 + var_f8f608db * var_7ffa5581;
			if(var_f8f608db < 0)
			{
				var_f8f608db = var_f8f608db * -1;
			}
			var_aabe9f43 = 1 / var_f8f608db + 1;
			if(var_aabe9f43 < 1 / var_41028055)
			{
				var_aabe9f43 = var_b091d62e;
			}
			var_1901fb66[var_c957f6b6].var_aabe9f43 = var_aabe9f43;
		}
	#/
}

/*
	Name: function_8117b00b
	Namespace: namespace_4ed4457c
	Checksum: 0x57CD8107
	Offset: 0x2480
	Size: 0x35F
	Parameters: 7
	Flags: None
*/
function function_8117b00b(var_4f8217af, var_297f9d46, var_d0bae973, var_e363b850, var_60db70fa, var_d900369a, var_aabe9f43)
{
	/#
		if(!isdefined(var_aabe9f43))
		{
			var_aabe9f43 = 0.5;
		}
		if(!isdefined(var_d900369a))
		{
			var_d900369a = VectorScale((0, 0, 1), 0.5);
		}
		if(isdefined(level.var_5dc5e20a))
		{
			var_724a4794 = function_ad13099a(level.var_5dc5e20a);
		}
		else
		{
			var_724a4794 = function_84c0e150();
			var_724a4794.var_5bf34339 = 1;
		}
		var_724a4794.var_b5536acc = "Dev Block strings are not supported";
		var_724a4794.var_db55e535 = "Dev Block strings are not supported";
		var_724a4794.var_79e0f792 = 1;
		var_724a4794.var_4d19365 = 30;
		var_724a4794.var_4f8217af = var_4f8217af;
		var_724a4794.var_297f9d46 = var_297f9d46;
		var_724a4794.var_aabe9f43 = var_aabe9f43;
		var_724a4794.var_d900369a = var_d900369a;
		if(isdefined(level.var_5dc5e20a))
		{
			var_724a4794.var_bfbec59 = function_ad13099a(level.var_5dc5e20a);
		}
		else
		{
			var_724a4794.var_bfbec59 = function_84c0e150();
			var_724a4794.var_5bf34339 = 1;
		}
		var_724a4794.var_bfbec59.var_b5536acc = "Dev Block strings are not supported";
		var_724a4794.var_bfbec59.var_db55e535 = "Dev Block strings are not supported";
		var_724a4794.var_bfbec59.var_79e0f792 = 1;
		var_724a4794.var_bfbec59.var_4d19365 = 25;
		var_724a4794.var_bfbec59.var_4f8217af = var_4f8217af + 2;
		var_724a4794.var_bfbec59.var_297f9d46 = var_297f9d46 + 2;
		var_724a4794.var_bfbec59.var_aabe9f43 = 0.75;
		var_724a4794.var_bfbec59.var_d900369a = (0, 0, 0);
		var_724a4794 function_9befb288("Dev Block strings are not supported", 0, 0);
		var_724a4794 function_ff9c38dc(var_60db70fa, var_d0bae973, var_e363b850);
		var_724a4794.var_bfbec59 function_9befb288("Dev Block strings are not supported", 0, 0);
		var_724a4794.var_bfbec59 function_ff9c38dc(var_60db70fa, var_d0bae973, var_e363b850);
		wait(var_60db70fa);
		return var_724a4794;
	#/
}

/*
	Name: function_bea48276
	Namespace: namespace_4ed4457c
	Checksum: 0x74C070B4
	Offset: 0x27E8
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_bea48276()
{
	/#
		self.var_bfbec59 function_ff9c38dc(0.25, 0, 0);
		self function_ff9c38dc(0.25, 0, 0);
		wait(0.1);
		if(isdefined(self.var_bfbec59))
		{
			self.var_bfbec59 function_89cd542d();
		}
		if(isdefined(self))
		{
			self function_89cd542d();
		}
	#/
}

/*
	Name: function_21e7ce2f
	Namespace: namespace_4ed4457c
	Checksum: 0xD25C54B0
	Offset: 0x2890
	Size: 0x4E1
	Parameters: 3
	Flags: None
*/
function function_21e7ce2f(var_ecf4b75f, var_d0b8930f, var_476db3a8)
{
	/#
		var_297f9d46 = 100;
		var_724a4794 = function_fb312e3b("Dev Block strings are not supported", undefined, 320 - 300 * 0.5, var_297f9d46, 1);
		var_724a4794 function_9befb288("Dev Block strings are not supported", 300, 100);
		var_724a4794.var_db55e535 = "Dev Block strings are not supported";
		var_724a4794.var_d900369a = VectorScale((0, 0, 1), 0.2);
		var_724a4794.var_aabe9f43 = 0.85;
		var_724a4794.var_4d19365 = 20;
		var_724a4794 = function_fb312e3b("Dev Block strings are not supported", var_ecf4b75f, 320 - 300 * 0.5 + 10, var_297f9d46 + 10, 1.25);
		var_724a4794.var_4d19365 = 25;
		if(isdefined(var_d0b8930f))
		{
			var_724a4794 = function_fb312e3b("Dev Block strings are not supported", var_d0b8930f, 320 - 300 * 0.5 + 10, var_297f9d46 + 30, 1.1);
			var_724a4794.var_4d19365 = 25;
		}
		var_564f8517 = 300 - 20;
		var_297f9d46 = 150;
		var_724a4794 = function_fb312e3b("Dev Block strings are not supported", undefined, 320 - var_564f8517 * 0.5, var_297f9d46, 1);
		var_724a4794 function_9befb288("Dev Block strings are not supported", var_564f8517, 20);
		var_724a4794.var_db55e535 = "Dev Block strings are not supported";
		var_724a4794.var_d900369a = (0, 0, 0);
		var_724a4794.var_aabe9f43 = 0.85;
		var_724a4794.var_4d19365 = 30;
		var_847182fe = 320 - var_564f8517 * 0.5 + 2;
		var_aa73fd67 = var_297f9d46 + 8;
		if(level.var_f14621c9)
		{
			var_724a4794 = function_fb312e3b("Dev Block strings are not supported", "Dev Block strings are not supported", 320 - 50, var_297f9d46 + 30, 1.25);
			var_724a4794.var_b5536acc = "Dev Block strings are not supported";
			var_724a4794.var_4d19365 = 25;
			var_724a4794 = function_fb312e3b("Dev Block strings are not supported", "Dev Block strings are not supported", 320 + 50, var_297f9d46 + 30, 1.25);
			var_724a4794.var_b5536acc = "Dev Block strings are not supported";
			var_724a4794.var_4d19365 = 25;
		}
		else
		{
			var_724a4794 = function_fb312e3b("Dev Block strings are not supported", "Dev Block strings are not supported", 320 - 50, var_297f9d46 + 30, 1.25);
			var_724a4794.var_b5536acc = "Dev Block strings are not supported";
			var_724a4794.var_4d19365 = 25;
			var_724a4794 = function_fb312e3b("Dev Block strings are not supported", "Dev Block strings are not supported", 320 + 50, var_297f9d46 + 30, 1.25);
			var_724a4794.var_b5536acc = "Dev Block strings are not supported";
			var_724a4794.var_4d19365 = 25;
		}
		var_3c61bfc2 = function_8d7a3a66(var_847182fe, var_aa73fd67, var_476db3a8);
		function_f8a0189f("Dev Block strings are not supported");
		return var_3c61bfc2;
	#/
}

/*
	Name: function_8d7a3a66
	Namespace: namespace_4ed4457c
	Checksum: 0x60843BD4
	Offset: 0x2D80
	Size: 0x2EB
	Parameters: 3
	Flags: None
*/
function function_8d7a3a66(var_847182fe, var_aa73fd67, var_476db3a8)
{
	/#
		level.var_f1175864 = function_fb312e3b("Dev Block strings are not supported", "Dev Block strings are not supported", var_847182fe, var_aa73fd67, 1.25);
		level.var_f1175864.var_4d19365 = 75;
		level thread function_561fa6f4();
		function_5eabe035();
		var_5f2f1ccb = function_fb312e3b("Dev Block strings are not supported", "Dev Block strings are not supported", var_847182fe, var_aa73fd67, 1.25);
		var_5f2f1ccb.var_4d19365 = 75;
		var_3eb3582a = [];
		var_62102ff9 = "Dev Block strings are not supported";
		while(1)
		{
			level waittill("hash_b6282a51", var_f527682d);
			if(var_f527682d == "Dev Block strings are not supported" || var_f527682d == "Dev Block strings are not supported")
			{
				var_62102ff9 = "Dev Block strings are not supported";
				break;
			}
			else if(var_f527682d == "Dev Block strings are not supported" || var_f527682d == "Dev Block strings are not supported" || var_f527682d == "Dev Block strings are not supported")
			{
				break;
			}
			else if(var_f527682d == "Dev Block strings are not supported" || var_f527682d == "Dev Block strings are not supported")
			{
				var_a6dc440 = "Dev Block strings are not supported";
				for(var_c957f6b6 = 0; var_c957f6b6 < var_62102ff9.size - 1; var_c957f6b6++)
				{
					var_a6dc440 = var_a6dc440 + var_62102ff9[var_c957f6b6];
				}
				var_62102ff9 = var_a6dc440;
			}
			else if(var_62102ff9.size < var_476db3a8)
			{
				var_62102ff9 = var_62102ff9 + var_f527682d;
			}
			var_5f2f1ccb function_f6181aca(var_62102ff9);
			var_4f8217af = var_847182fe;
			for(var_c957f6b6 = 0; var_c957f6b6 < var_62102ff9.size; var_c957f6b6++)
			{
				var_4f8217af = var_4f8217af + function_6a8744ed(var_62102ff9[var_c957f6b6]);
			}
			level.var_f1175864.var_4f8217af = var_4f8217af;
			wait(0.05);
		}
		level notify("hash_645fd9e1");
		level notify("hash_a1a6c8e3");
		return var_62102ff9;
	#/
}

/*
	Name: function_5eabe035
	Namespace: namespace_4ed4457c
	Checksum: 0xF5A974D8
	Offset: 0x3078
	Size: 0x5D3
	Parameters: 0
	Flags: None
*/
function function_5eabe035()
{
	/#
		function_f0168b54("Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		if(level.var_f14621c9)
		{
			function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
			function_8b8ed93("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		level thread function_c51460e6("Dev Block strings are not supported", "Dev Block strings are not supported", undefined, undefined);
	#/
}

/*
	Name: function_561fa6f4
	Namespace: namespace_4ed4457c
	Checksum: 0x8BDCA92C
	Offset: 0x3658
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_561fa6f4()
{
	/#
		level endon("hash_645fd9e1");
		while(1)
		{
			level.var_f1175864.var_aabe9f43 = 0;
			wait(0.5);
			level.var_f1175864.var_aabe9f43 = 1;
			wait(0.5);
		}
	#/
}

/*
	Name: function_6a8744ed
	Namespace: namespace_4ed4457c
	Checksum: 0x3D9A7869
	Offset: 0x36B8
	Size: 0x165
	Parameters: 1
	Flags: None
*/
function function_6a8744ed(var_2775f311)
{
	/#
		if(var_2775f311 == "Dev Block strings are not supported" || var_2775f311 == "Dev Block strings are not supported" || var_2775f311 == "Dev Block strings are not supported")
		{
			var_7ffa5581 = 10;
		}
		else if(var_2775f311 == "Dev Block strings are not supported" || var_2775f311 == "Dev Block strings are not supported" || var_2775f311 == "Dev Block strings are not supported" || var_2775f311 == "Dev Block strings are not supported" || var_2775f311 == "Dev Block strings are not supported" || var_2775f311 == "Dev Block strings are not supported")
		{
			var_7ffa5581 = 7;
		}
		else if(var_2775f311 == "Dev Block strings are not supported" || var_2775f311 == "Dev Block strings are not supported" || var_2775f311 == "Dev Block strings are not supported")
		{
			var_7ffa5581 = 5;
		}
		else if(var_2775f311 == "Dev Block strings are not supported" || var_2775f311 == "Dev Block strings are not supported")
		{
			var_7ffa5581 = 4;
		}
		else if(var_2775f311 == "Dev Block strings are not supported")
		{
			var_7ffa5581 = 3;
		}
		else
		{
			var_7ffa5581 = 6;
		}
		return var_7ffa5581;
	#/
}

/*
	Name: function_8b8ed93
	Namespace: namespace_4ed4457c
	Checksum: 0xA0346B7C
	Offset: 0x3828
	Size: 0x83
	Parameters: 2
	Flags: None
*/
function function_8b8ed93(var_38e2c1b9, var_4be20d44)
{
	/#
		if(!isdefined(level.var_5882d638[var_38e2c1b9]))
		{
			level.var_5882d638[var_38e2c1b9] = [];
		}
		if(!function_7f41c8e7(level.var_5882d638[var_38e2c1b9], var_4be20d44))
		{
			level.var_5882d638[var_38e2c1b9][level.var_5882d638[var_38e2c1b9].size] = var_4be20d44;
		}
	#/
}

/*
	Name: function_f0168b54
	Namespace: namespace_4ed4457c
	Checksum: 0xC9C28309
	Offset: 0x38B8
	Size: 0x21
	Parameters: 1
	Flags: None
*/
function function_f0168b54(var_38e2c1b9)
{
	/#
		level.var_5882d638[var_38e2c1b9] = [];
	#/
}

/*
	Name: function_c51460e6
	Namespace: namespace_4ed4457c
	Checksum: 0x22EC86C5
	Offset: 0x38E8
	Size: 0x1DF
	Parameters: 5
	Flags: None
*/
function function_c51460e6(var_38e2c1b9, var_264c2ccc, var_f343011, var_e97f2392, var_584b7e5c)
{
	/#
		level endon(var_264c2ccc);
		if(!isdefined(var_f343011))
		{
			var_f343011 = 0;
		}
		var_8b75cd84 = var_38e2c1b9 + "Dev Block strings are not supported";
		var_829362c = level.var_5882d638[var_38e2c1b9];
		level.var_768d82c9[var_38e2c1b9] = 0;
		while(1)
		{
			if(level.var_768d82c9[var_38e2c1b9])
			{
				wait(0.05);
				continue;
			}
			if(isdefined(var_e97f2392) && !level.var_5dc5e20a function_ce2b5f5(var_e97f2392))
			{
				wait(0.05);
				continue;
			}
			else if(isdefined(var_584b7e5c) && level.var_5dc5e20a function_ce2b5f5(var_584b7e5c))
			{
				wait(0.05);
				continue;
			}
			if(var_f343011 && level.var_5dc5e20a function_be4a4b0d())
			{
				level notify(var_8b75cd84, "Dev Block strings are not supported");
				wait(0.1);
				continue;
			}
			for(var_c957f6b6 = 0; var_c957f6b6 < var_829362c.size; var_c957f6b6++)
			{
				if(level.var_5dc5e20a function_ce2b5f5(var_829362c[var_c957f6b6]))
				{
					level notify(var_8b75cd84, var_829362c[var_c957f6b6]);
					wait(0.1);
					break;
				}
			}
			wait(0.05);
		}
	#/
}

/*
	Name: function_49453b79
	Namespace: namespace_4ed4457c
	Checksum: 0x4EC99FC1
	Offset: 0x3AD0
	Size: 0x21
	Parameters: 1
	Flags: None
*/
function function_49453b79(var_38e2c1b9)
{
	/#
		level.var_768d82c9[var_38e2c1b9] = 1;
	#/
}

/*
	Name: function_80a9c472
	Namespace: namespace_4ed4457c
	Checksum: 0xD9C67699
	Offset: 0x3B00
	Size: 0x25
	Parameters: 1
	Flags: None
*/
function function_80a9c472(var_38e2c1b9)
{
	/#
		wait(1);
		level.var_768d82c9[var_38e2c1b9] = 0;
	#/
}

/*
	Name: function_4f066bc2
	Namespace: namespace_4ed4457c
	Checksum: 0x11D4C4C4
	Offset: 0x3B30
	Size: 0x153
	Parameters: 2
	Flags: None
*/
function function_4f066bc2(var_b7d2a5af, var_fe311e35)
{
	/#
		var_829362c = [];
		if(var_fe311e35 == "Dev Block strings are not supported")
		{
			var_829362c[0] = "Dev Block strings are not supported";
			var_829362c[1] = "Dev Block strings are not supported";
			var_829362c[2] = "Dev Block strings are not supported";
			var_829362c[3] = "Dev Block strings are not supported";
			var_829362c[4] = "Dev Block strings are not supported";
			var_829362c[5] = "Dev Block strings are not supported";
			var_829362c[6] = "Dev Block strings are not supported";
			var_829362c[7] = "Dev Block strings are not supported";
			var_829362c[8] = "Dev Block strings are not supported";
			var_829362c[9] = "Dev Block strings are not supported";
		}
		else
		{
			var_829362c = level.var_829362c;
		}
		for(var_c957f6b6 = 0; var_c957f6b6 < var_829362c.size; var_c957f6b6++)
		{
			if(var_b7d2a5af == var_829362c[var_c957f6b6])
			{
				return 1;
			}
		}
		return 0;
	#/
}

