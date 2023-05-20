#using scripts\codescripts\struct;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\sound_shared;
#using scripts\shared\system_shared;

#namespace namespace_4a3ececb;

/*
	Name: function_2dc19561
	Namespace: namespace_4a3ececb
	Checksum: 0xCC6C34A4
	Offset: 0x3E0
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("ambient", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_4a3ececb
	Checksum: 0xC08719F7
	Offset: 0x420
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_dabbe128::function_828aea2c(&function_fb4f96b5);
}

/*
	Name: function_fb4f96b5
	Namespace: namespace_4a3ececb
	Checksum: 0xF38FA21D
	Offset: 0x450
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_fb4f96b5(var_ec74b091)
{
	thread function_72fa9348(var_ec74b091);
	thread function_a9fd4919(var_ec74b091);
	thread function_2bf3ac(var_ec74b091);
}

/*
	Name: function_2adf5294
	Namespace: namespace_4a3ececb
	Checksum: 0xEFC62C6F
	Offset: 0x4B0
	Size: 0x163
	Parameters: 2
	Flags: None
*/
function function_2adf5294(var_dd89f865, var_2242649d)
{
	if(isdefined(var_dd89f865.var_fc5ff01a))
	{
		var_2242649d = var_dd89f865.var_fc5ff01a;
	}
	var_dd89f865.var_2242649d = var_2242649d;
	if(isdefined(var_dd89f865.var_6ab6f4fd))
	{
		var_dd89f865.var_1a859714 = function_bc7ce905(var_dd89f865.var_6ab6f4fd);
		var_dd89f865.var_b5f6560e = function_aba60185(var_dd89f865.var_6ab6f4fd);
	}
	else
	{
		var_dd89f865.var_6ab6f4fd = (0, 0, 0);
		var_dd89f865.var_1a859714 = (0, 0, 0);
		var_dd89f865.var_b5f6560e = (0, 0, 0);
	}
	if(var_dd89f865.var_170527fb == "flak_fire_fx")
	{
		level thread function_ddc46811(var_dd89f865);
	}
	if(var_dd89f865.var_170527fb == "fake_fire_fx")
	{
		level thread function_ab42b928(var_dd89f865);
	}
}

/*
	Name: function_ddc46811
	Namespace: namespace_4a3ececb
	Checksum: 0x808F5995
	Offset: 0x620
	Size: 0x1D7
	Parameters: 1
	Flags: None
*/
function function_ddc46811(var_dd89f865)
{
	var_1e2af8c1 = undefined;
	var_d007da9e = undefined;
	var_f84dcc75 = 0;
	var_4e2b3cf = 0.4;
	var_e91b3285 = 4;
	var_224ec36c = 1;
	var_2fe8031e = 3;
	var_dd89f865.var_821cb119 = 0;
	level thread function_1a8f066e(var_dd89f865);
	level thread function_4a83aedb(var_dd89f865, var_224ec36c, var_2fe8031e);
	for(;;)
	{
		for(var_6f6f10c = function_72a94f05(var_224ec36c, var_2fe8031e); var_6f6f10c > 0;  = function_72a94f05(var_224ec36c, var_2fe8031e))
		{
			var_dd89f865.var_821cb119 = 1;
			function_fd4ba5e1(0, level.var_c1aa5253[var_dd89f865.var_2242649d], var_dd89f865.var_722885f3, var_dd89f865.var_1a859714, var_dd89f865.var_b5f6560e);
			thread namespace_93b50d82::function_2b67c264(0, "wpn_triple25_fire", var_dd89f865.var_722885f3);
			wait(0.2);
		}
		var_dd89f865.var_821cb119 = 0;
		wait(function_72a94f05(var_4e2b3cf, var_e91b3285));
	}
}

/*
	Name: function_1a8f066e
	Namespace: namespace_4a3ececb
	Checksum: 0xACC1FADA
	Offset: 0x800
	Size: 0x227
	Parameters: 1
	Flags: None
*/
function function_1a8f066e(var_dd89f865)
{
	var_98e80580 = 30;
	var_9099572a = 80;
	if(isdefined(var_dd89f865.var_6ab6f4fd))
	{
		var_76d64225 = var_dd89f865.var_6ab6f4fd;
	}
	else
	{
		var_76d64225 = (0, 0, 0);
	}
	for(;;)
	{
		var_60db70fa = function_72a94f05(0.5, 2);
		var_db2fcb3e = var_60db70fa * 10;
		var_bf4f53d0 = (function_dc99997a(var_98e80580, var_9099572a) * -1, function_26299103(360), 0);
		var_1a859714 = function_bc7ce905(var_bf4f53d0);
		var_b5f6560e = function_aba60185(var_bf4f53d0);
		var_7880530a = var_1a859714 - var_dd89f865.var_1a859714 / var_db2fcb3e;
		var_ebf1810c = var_b5f6560e - var_dd89f865.var_b5f6560e / var_db2fcb3e;
		for(var_c957f6b6 = 0; var_c957f6b6 < var_db2fcb3e; var_c957f6b6++)
		{
			var_dd89f865.var_1a859714 = var_dd89f865.var_1a859714 + var_7880530a;
			var_dd89f865.var_b5f6560e = var_dd89f865.var_b5f6560e + var_ebf1810c;
			wait(0.1);
		}
		var_dd89f865.var_1a859714 = var_1a859714;
		var_dd89f865.var_b5f6560e = var_b5f6560e;
	}
}

/*
	Name: function_4a83aedb
	Namespace: namespace_4a3ececb
	Checksum: 0xCD2663E
	Offset: 0xA30
	Size: 0x1BF
	Parameters: 3
	Flags: None
*/
function function_4a83aedb(var_dd89f865, var_224ec36c, var_2fe8031e)
{
	var_9333a52 = 5000;
	var_27dd898 = 6500;
	if(isdefined(var_dd89f865.var_1cb485a5))
	{
		var_9333a52 = var_dd89f865.var_1cb485a5;
	}
	if(isdefined(var_dd89f865.var_e5034c07))
	{
		var_27dd898 = var_dd89f865.var_e5034c07;
	}
	var_224ec36c = 0.25;
	var_2fe8031e = 1;
	var_a5eedec7 = undefined;
	while(1)
	{
		if(!var_dd89f865.var_821cb119)
		{
			wait(0.25);
			continue;
		}
		var_a5eedec7 = var_dd89f865.var_722885f3 + VectorScale(var_dd89f865.var_1a859714, function_dc99997a(var_9333a52, var_27dd898));
		function_fd4ba5e1(0, level.var_c1aa5253["flak_burst_single"], var_a5eedec7);
		if(isdefined(level.var_1d725ce1) && (level.var_1d725ce1 == "evening" || level.var_1d725ce1 == "night"))
		{
			function_fd4ba5e1(0, level.var_c1aa5253["flak_cloudflash_night"], var_a5eedec7);
		}
		wait(function_72a94f05(var_224ec36c, var_2fe8031e));
	}
}

/*
	Name: function_ab42b928
	Namespace: namespace_4a3ececb
	Checksum: 0x123B217B
	Offset: 0xBF8
	Size: 0x7BF
	Parameters: 1
	Flags: None
*/
function function_ab42b928(var_dd89f865)
{
	var_7923c47e = undefined;
	var_65349532 = undefined;
	var_304f2b27 = undefined;
	var_d5a94c99 = undefined;
	var_86f80c66 = undefined;
	var_6c02e0b8 = undefined;
	var_3b3ea05b = undefined;
	var_10ac9515 = undefined;
	var_2431c8aa = undefined;
	if(!isdefined(var_dd89f865.var_d0821c81))
	{
		var_dd89f865.var_d0821c81 = "axis_turret";
	}
	switch(var_dd89f865.var_d0821c81)
	{
		case "allies_assault":
		{
			if(isdefined(level.var_8cf1c215) && level.var_8cf1c215 == "marines")
			{
				var_7923c47e = "weap_bar_fire";
			}
			else
			{
				var_7923c47e = "weap_dp28_fire_plr";
			}
			var_304f2b27 = 16;
			var_d5a94c99 = 24;
			var_86f80c66 = 0.05;
			var_6c02e0b8 = 0.08;
			var_3b3ea05b = 4;
			var_10ac9515 = 7;
			var_2431c8aa = 75;
			var_65349532 = "assault";
			break;
		}
		case "axis_assault":
		{
			if(isdefined(level.var_5e9d69a) && level.var_5e9d69a == "german")
			{
				var_7923c47e = "weap_mp44_fire";
			}
			else
			{
				var_7923c47e = "weap_type99_fire";
			}
			var_304f2b27 = 16;
			var_d5a94c99 = 24;
			var_86f80c66 = 0.05;
			var_6c02e0b8 = 0.08;
			var_3b3ea05b = 4;
			var_10ac9515 = 7;
			var_2431c8aa = 75;
			var_65349532 = "assault";
			break;
		}
		case "allies_rifle":
		{
			if(isdefined(level.var_8cf1c215) && level.var_8cf1c215 == "marines")
			{
				var_7923c47e = "weap_m1garand_fire";
			}
			else
			{
				var_7923c47e = "weap_mosinnagant_fire";
			}
			var_304f2b27 = 1;
			var_d5a94c99 = 3;
			var_86f80c66 = 0.8;
			var_6c02e0b8 = 1.3;
			var_3b3ea05b = 3;
			var_10ac9515 = 6;
			var_2431c8aa = 95;
			var_65349532 = "rifle";
			break;
		}
		case "axis_rifle":
		{
			if(isdefined(level.var_5e9d69a) && level.var_5e9d69a == "german")
			{
				var_7923c47e = "weap_kar98k_fire";
			}
			else
			{
				var_7923c47e = "weap_arisaka_fire";
			}
			var_304f2b27 = 1;
			var_d5a94c99 = 3;
			var_86f80c66 = 0.8;
			var_6c02e0b8 = 1.3;
			var_3b3ea05b = 3;
			var_10ac9515 = 6;
			var_2431c8aa = 95;
			var_65349532 = "rifle";
			break;
		}
		case "allies_smg":
		{
			if(isdefined(level.var_8cf1c215) && level.var_8cf1c215 == "marines")
			{
				var_7923c47e = "weap_thompson_fire";
			}
			else
			{
				var_7923c47e = "weap_ppsh_fire";
			}
			var_304f2b27 = 14;
			var_d5a94c99 = 28;
			var_86f80c66 = 0.08;
			var_6c02e0b8 = 0.12;
			var_3b3ea05b = 2;
			var_10ac9515 = 5;
			var_2431c8aa = 75;
			var_65349532 = "smg";
			break;
		}
		case "axis_smg":
		{
			if(isdefined(level.var_5e9d69a) && level.var_5e9d69a == "german")
			{
				var_7923c47e = "weap_mp40_fire";
			}
			else
			{
				var_7923c47e = "weap_type100_fire";
			}
			var_304f2b27 = 14;
			var_d5a94c99 = 28;
			var_86f80c66 = 0.08;
			var_6c02e0b8 = 0.12;
			var_3b3ea05b = 2;
			var_10ac9515 = 5;
			var_2431c8aa = 75;
			var_65349532 = "smg";
			break;
		}
		case "allies_turret":
		{
			if(isdefined(level.var_8cf1c215) && level.var_8cf1c215 == "marines")
			{
				var_7923c47e = "weap_30cal_fire";
			}
			else
			{
				var_7923c47e = "weap_dp28_fire_plr";
			}
			var_304f2b27 = 60;
			var_d5a94c99 = 90;
			var_86f80c66 = 0.05;
			var_6c02e0b8 = 0.08;
			var_3b3ea05b = 3;
			var_10ac9515 = 6;
			var_2431c8aa = 95;
			var_65349532 = "turret";
			break;
		}
		case "axis_turret":
		{
			if(isdefined(level.var_5e9d69a) && level.var_5e9d69a == "german")
			{
				var_7923c47e = "weap_bar_fire";
			}
			else
			{
				var_7923c47e = "weap_type92_fire";
			}
			var_304f2b27 = 60;
			var_d5a94c99 = 90;
			var_86f80c66 = 0.05;
			var_6c02e0b8 = 0.08;
			var_3b3ea05b = 3;
			var_10ac9515 = 6;
			var_2431c8aa = 95;
			var_65349532 = "turret";
			break;
		}
		case default:
		{
			/#
				namespace_33b293fd::function_94739542("Dev Block strings are not supported" + var_dd89f865.var_d0821c81 + "Dev Block strings are not supported");
			#/
		}
	}
	while(1)
	{
		var_db5d611 = function_dc99997a(var_304f2b27, var_d5a94c99);
		for(var_c957f6b6 = 0; var_c957f6b6 < var_db5d611; var_c957f6b6++)
		{
			var_52099e4 = 10000;
			var_b07228b6 = var_dd89f865.var_722885f3 + VectorScale(function_bc7ce905(var_dd89f865.var_6ab6f4fd + (-3 + function_26299103(6), -5 + function_26299103(10), 0)), var_52099e4);
			if(function_26299103(100) <= 20)
			{
				function_5475f2f6(var_dd89f865.var_722885f3, var_b07228b6);
			}
			function_fd4ba5e1(0, level.var_c1aa5253[var_dd89f865.var_2242649d], var_dd89f865.var_722885f3, var_dd89f865.var_1a859714);
			wait(function_72a94f05(var_86f80c66, var_6c02e0b8));
		}
		wait(function_72a94f05(var_3b3ea05b, var_10ac9515));
	}
}

/*
	Name: function_72fa9348
	Namespace: namespace_4a3ececb
	Checksum: 0x7F8AE80B
	Offset: 0x13C0
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_72fa9348(var_cf6fe380)
{
	var_5de14bba = function_99201f25(var_cf6fe380, "ceiling_fan", "targetname");
	if(isdefined(var_5de14bba))
	{
		/#
			function_895b00("Dev Block strings are not supported" + var_5de14bba.size);
		#/
		namespace_84970cc4::function_966ecb29(var_5de14bba, &function_44d589f3);
	}
}

/*
	Name: function_44d589f3
	Namespace: namespace_4a3ececb
	Checksum: 0x33ECEA48
	Offset: 0x1458
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_44d589f3()
{
	self endon("hash_d5da096");
	if(!isdefined(self.var_d007da9e))
	{
		self.var_d007da9e = function_dc99997a(1, 100);
		self.var_d007da9e = self.var_d007da9e % 10 + 1;
	}
	if(self.var_d007da9e < 1)
	{
		self.var_d007da9e = function_dc99997a(1, 100);
		self.var_d007da9e = self.var_d007da9e % 10 + 1;
	}
	var_b99b9f2e = 0;
	var_5e8566fe = self.var_caae374e;
	if(isdefined(var_5e8566fe))
	{
		if(var_5e8566fe == "wobble")
		{
			var_b99b9f2e = 1;
			self.var_3ce5ac3e = self.var_d007da9e * 0.5;
		}
	}
	while(1)
	{
		if(!var_b99b9f2e)
		{
			self function_21d0da55(180, self.var_d007da9e);
			self waittill("hash_6654e4f4");
		}
		else
		{
			self function_21d0da55(340, self.var_d007da9e);
			self waittill("hash_6654e4f4");
			self function_21d0da55(20, self.var_3ce5ac3e);
			self waittill("hash_6654e4f4");
		}
	}
}

/*
	Name: function_a9fd4919
	Namespace: namespace_4a3ececb
	Checksum: 0x8395E724
	Offset: 0x1610
	Size: 0x3FB
	Parameters: 1
	Flags: None
*/
function function_a9fd4919(var_cf6fe380)
{
	var_871231ef = function_b67632f3();
	var_70dfa15a = var_871231ef[0];
	if(var_70dfa15a > 12)
	{
		var_70dfa15a = var_70dfa15a - 12;
	}
	if(var_70dfa15a == 0)
	{
		var_70dfa15a = 12;
	}
	var_196348ac = var_871231ef[1];
	var_ab02d1a4 = var_871231ef[2];
	var_d153a815 = function_99201f25(var_cf6fe380, "hour_hand", "targetname");
	var_759fa0c8 = [];
	var_759fa0c8["hand_time"] = var_70dfa15a;
	var_759fa0c8["rotate"] = 30;
	var_759fa0c8["rotate_bit"] = 0.008333334;
	var_759fa0c8["first_rotate"] = var_196348ac * 60 + var_ab02d1a4 * var_759fa0c8["rotate_bit"];
	var_729e1923 = function_99201f25(var_cf6fe380, "minute_hand", "targetname");
	var_b2cbf412 = [];
	var_b2cbf412["hand_time"] = var_196348ac;
	var_b2cbf412["rotate"] = 6;
	var_b2cbf412["rotate_bit"] = 0.1;
	var_b2cbf412["first_rotate"] = var_ab02d1a4 * var_b2cbf412["rotate_bit"];
	var_27375bab = function_99201f25(var_cf6fe380, "second_hand", "targetname");
	var_15d5310a = [];
	var_15d5310a["hand_time"] = var_ab02d1a4;
	var_15d5310a["rotate"] = 6;
	var_15d5310a["rotate_bit"] = 6;
	var_f02041af = function_99201f25(var_cf6fe380, "hour_hand", "targetname");
	if(isdefined(var_f02041af))
	{
		/#
			function_895b00("Dev Block strings are not supported" + var_f02041af.size);
		#/
		namespace_84970cc4::function_966ecb29(var_f02041af, &function_72c667fb, var_759fa0c8);
	}
	var_5ea47431 = function_99201f25(var_cf6fe380, "minute_hand", "targetname");
	if(isdefined(var_5ea47431))
	{
		/#
			function_895b00("Dev Block strings are not supported" + var_5ea47431.size);
		#/
		namespace_84970cc4::function_966ecb29(var_5ea47431, &function_72c667fb, var_b2cbf412);
	}
	var_c6ed5b9 = function_99201f25(var_cf6fe380, "second_hand", "targetname");
	if(isdefined(var_c6ed5b9))
	{
		/#
			function_895b00("Dev Block strings are not supported" + var_c6ed5b9.size);
		#/
		namespace_84970cc4::function_966ecb29(var_c6ed5b9, &function_72c667fb, var_15d5310a);
	}
}

/*
	Name: function_72c667fb
	Namespace: namespace_4a3ececb
	Checksum: 0xF2C25582
	Offset: 0x1A18
	Size: 0x3AB
	Parameters: 1
	Flags: None
*/
function function_72c667fb(var_9c50abb)
{
	self endon("hash_d5da096");
	if(isdefined(self.var_caae374e))
	{
		var_a21a7ebb = var_9c50abb["hand_time"];
		var_871231ef = function_b67632f3(1);
		switch(function_57b2be45(self.var_caae374e))
		{
			case "honolulu":
			{
				var_a21a7ebb = var_871231ef[0] - 10;
				break;
			}
			case "alaska":
			{
				var_a21a7ebb = var_871231ef[0] - 9;
				break;
			}
			case "los angeles":
			{
				var_a21a7ebb = var_871231ef[0] - 8;
				break;
			}
			case "denver":
			{
				var_a21a7ebb = var_871231ef[0] - 7;
				break;
			}
			case "chicago":
			{
				var_a21a7ebb = var_871231ef[0] - 6;
				break;
			}
			case "new york":
			{
				var_a21a7ebb = var_871231ef[0] - 5;
				break;
			}
			case "halifax":
			{
				var_a21a7ebb = var_871231ef[0] - 4;
				break;
			}
			case "greenland":
			{
				var_a21a7ebb = var_871231ef[0] - 3;
				break;
			}
			case "london":
			{
				var_a21a7ebb = var_871231ef[0];
				break;
			}
			case "paris":
			{
				var_a21a7ebb = var_871231ef[0] + 1;
				break;
			}
			case "helsinki":
			{
				var_a21a7ebb = var_871231ef[0] + 2;
				break;
			}
			case "moscow":
			{
				var_a21a7ebb = var_871231ef[0] + 3;
				break;
			}
			case "vietnam":
			{
				var_a21a7ebb = var_871231ef[0] + 7;
				break;
			}
			case "china":
			{
				var_a21a7ebb = var_871231ef[0] + 8;
				break;
			}
		}
		if(var_a21a7ebb < 1)
		{
			var_a21a7ebb = var_a21a7ebb + 12;
		}
		if(var_a21a7ebb > 12)
		{
			var_a21a7ebb = var_a21a7ebb - 12;
		}
		var_9c50abb["hand_time"] = var_a21a7ebb;
	}
	self function_788ec1d6(var_9c50abb["hand_time"] * var_9c50abb["rotate"], 0.05);
	self waittill("hash_6654e4f4");
	if(isdefined(var_9c50abb["first_rotate"]))
	{
		self function_788ec1d6(var_9c50abb["first_rotate"], 0.05);
		self waittill("hash_6654e4f4");
	}
	var_d40c937a = function_b67632f3();
	while(1)
	{
		var_871231ef = function_b67632f3();
		if(var_d40c937a != var_871231ef)
		{
			self function_788ec1d6(var_9c50abb["rotate_bit"], 0.05);
			var_d40c937a = var_871231ef;
		}
		wait(1);
	}
}

/*
	Name: function_2bf3ac
	Namespace: namespace_4a3ececb
	Checksum: 0x67D04278
	Offset: 0x1DD0
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function function_2bf3ac(var_cf6fe380)
{
	var_81f068d9 = function_99201f25(var_cf6fe380, "spinner1", "targetname");
	var_d15444d = function_99201f25(var_cf6fe380, "spinner2", "targetname");
	if(isdefined(var_81f068d9))
	{
		/#
			function_895b00("Dev Block strings are not supported" + var_81f068d9.size);
		#/
		namespace_84970cc4::function_966ecb29(var_81f068d9, &function_ba336f70);
	}
	if(isdefined(var_d15444d))
	{
		/#
			function_895b00("Dev Block strings are not supported" + var_d15444d.size);
		#/
		namespace_84970cc4::function_966ecb29(var_d15444d, &function_30dd8ef8);
	}
}

/*
	Name: function_ba336f70
	Namespace: namespace_4a3ececb
	Checksum: 0xFC5B9748
	Offset: 0x1EE8
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_ba336f70()
{
	self endon("hash_d5da096");
	if(isdefined(self.var_6604b19f))
	{
		var_4070417c = self.var_6604b19f;
		continue;
	}
	var_4070417c = 2;
	while(1)
	{
		var_d007da9e = function_72a94f05(var_4070417c * 0.6, var_4070417c);
		self function_21d0da55(1200, var_d007da9e);
		self waittill("hash_6654e4f4");
	}
}

/*
	Name: function_30dd8ef8
	Namespace: namespace_4a3ececb
	Checksum: 0x3F2FA3B8
	Offset: 0x1F98
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_30dd8ef8()
{
	self endon("hash_d5da096");
	if(isdefined(self.var_8202763a))
	{
		var_9582ac25 = self.var_8202763a;
	}
	else
	{
		var_9582ac25 = 25;
	}
	if(isdefined(self.var_6604b19f))
	{
		var_4070417c = self.var_6604b19f;
		continue;
	}
	var_4070417c = 0.8;
	while(1)
	{
		var_427d2117 = var_9582ac25 + function_dc99997a(-11, 11);
		var_6f247551 = function_72a94f05(var_4070417c * 0.3, var_4070417c);
		self function_21d0da55(var_427d2117, var_6f247551);
		self waittill("hash_6654e4f4");
		self function_21d0da55(var_427d2117 * -1, var_6f247551);
		self waittill("hash_6654e4f4");
	}
}

