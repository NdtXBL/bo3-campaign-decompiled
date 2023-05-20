#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;

#namespace namespace_9472df26;

/*
	Name: function_d290ebfa
	Namespace: namespace_9472df26
	Checksum: 0x9228D96D
	Offset: 0x220
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_71e9cb84::function_50f16166("world", "infection_sgen_server_debris", 1, 2, "int", &function_e8b6f49, 1, 1);
	namespace_71e9cb84::function_50f16166("world", "infection_sgen_xcam_models", 1, 1, "int", &function_d5a1aabe, 1, 1);
	namespace_71e9cb84::function_50f16166("actor", "infection_taylor_eye_shader", 1, 1, "int", &function_1b21c3a8, 0, 0);
}

/*
	Name: function_e8b6f49
	Namespace: namespace_9472df26
	Checksum: 0x17572751
	Offset: 0x308
	Size: 0xBD
	Parameters: 7
	Flags: None
*/
function function_e8b6f49(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!isdefined(var_9193c732))
	{
		return;
	}
	switch(var_9193c732)
	{
		case 1:
		{
			level thread function_dce4d663(var_ec74b091);
			break;
		}
		case 2:
		{
			level notify("hash_a9cad786");
			break;
		}
		case 3:
		{
			level notify("hash_ec0728a9");
			break;
		}
		case default:
		{
			break;
		}
	}
}

/*
	Name: function_dce4d663
	Namespace: namespace_9472df26
	Checksum: 0x1F2CBF8F
	Offset: 0x3D0
	Size: 0x1CB
	Parameters: 1
	Flags: None
*/
function function_dce4d663(var_ec74b091)
{
	var_55750b30 = [];
	var_c7b6e8e4 = namespace_14b42b8a::function_7faf4c39("sgen_server_debris");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_c7b6e8e4.size; var_c957f6b6++)
	{
		if(isdefined(var_c7b6e8e4[var_c957f6b6].var_6df9264))
		{
			var_5aeadf3 = function_9b7fda5e(var_ec74b091, var_c7b6e8e4[var_c957f6b6].var_722885f3, "script_model");
			var_5aeadf3 function_e48f905e(var_c7b6e8e4[var_c957f6b6].var_6df9264);
			var_5aeadf3.var_170527fb = var_c7b6e8e4[var_c957f6b6].var_170527fb;
			if(isdefined(var_c7b6e8e4[var_c957f6b6].var_6ab6f4fd))
			{
				var_5aeadf3.var_6ab6f4fd = var_c7b6e8e4[var_c957f6b6].var_6ab6f4fd;
			}
			if(isdefined(var_c7b6e8e4[var_c957f6b6].var_caae374e))
			{
				var_5aeadf3.var_caae374e = var_c7b6e8e4[var_c957f6b6].var_caae374e;
			}
			namespace_84970cc4::function_69554b3e(var_55750b30, var_5aeadf3, 0);
		}
	}
	level waittill("hash_a9cad786");
	namespace_84970cc4::function_966ecb29(var_55750b30, &function_a926469a);
}

/*
	Name: function_a926469a
	Namespace: namespace_9472df26
	Checksum: 0x53E689D9
	Offset: 0x5A8
	Size: 0x19B
	Parameters: 0
	Flags: None
*/
function function_a926469a()
{
	var_de2854c = self function_551b5ea9();
	var_92fc0506 = var_de2854c / 600;
	var_8f681333 = var_92fc0506;
	var_5204081d = var_8f681333 * 1.25;
	var_a1cc6c78 = var_92fc0506 * 0.25;
	var_dd8187f3 = function_72a94f05(var_8f681333, var_5204081d);
	var_6ac461b2 = (self.var_722885f3[0], self.var_722885f3[1], self.var_722885f3[2] - var_de2854c);
	self function_a96a2721(var_6ac461b2, var_dd8187f3);
	self function_c0b6566f(self.var_6ab6f4fd + (function_72a94f05(-45, 45), function_72a94f05(-45, 45), function_72a94f05(-45, 45)), var_dd8187f3);
	level waittill("hash_ec0728a9");
	self function_dc8c8404();
}

/*
	Name: function_551b5ea9
	Namespace: namespace_9472df26
	Checksum: 0x4889A418
	Offset: 0x750
	Size: 0x9D
	Parameters: 0
	Flags: None
*/
function function_551b5ea9()
{
	var_b5b704ff = namespace_14b42b8a::function_7922262b("tag_align_bastogne_sarah_intro", "targetname");
	var_489b2980 = self.var_722885f3;
	var_491bc153 = var_b5b704ff.var_722885f3;
	var_84dc6c43 = var_489b2980 - var_491bc153[2];
	return function_69c2f683(var_84dc6c43) + 64 + 40;
}

/*
	Name: function_d5a1aabe
	Namespace: namespace_9472df26
	Checksum: 0x392D36D5
	Offset: 0x7F8
	Size: 0xF1
	Parameters: 7
	Flags: None
*/
function function_d5a1aabe(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_c7b3d965 = function_99201f25(var_ec74b091, "pallas_xcam_model", "targetname");
	foreach(var_632ff3aa in var_c7b3d965)
	{
		var_632ff3aa function_dc8c8404();
	}
}

/*
	Name: function_df5afb6d
	Namespace: namespace_9472df26
	Checksum: 0x22581E4
	Offset: 0x8F8
	Size: 0x93
	Parameters: 7
	Flags: None
*/
function function_df5afb6d(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_4e6738e = 1.333333;
	for(var_c957f6b6 = 0; var_c957f6b6 < 3; var_c957f6b6++)
	{
		thread function_9d64b4e6(0.1);
		wait(var_4e6738e);
	}
}

/*
	Name: function_9d64b4e6
	Namespace: namespace_9472df26
	Checksum: 0xAE47348D
	Offset: 0x998
	Size: 0x6F
	Parameters: 2
	Flags: None
*/
function function_9d64b4e6(var_ec74b091, var_d007da9e)
{
	var_38d3010a = 0;
	for(var_38d3010a = 0; var_38d3010a <= 1;  = 0)
	{
		self function_e7f6dc4e(var_ec74b091, 0, "scriptVector1", var_38d3010a);
	}
}

/*
	Name: function_1b21c3a8
	Namespace: namespace_9472df26
	Checksum: 0x9D3E2CFB
	Offset: 0xA10
	Size: 0x83
	Parameters: 7
	Flags: None
*/
function function_1b21c3a8(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_ade4d29d != var_9193c732)
	{
		if(var_9193c732 == 1)
		{
			self function_e7f6dc4e(var_ec74b091, 0, "scriptVector0", 1, 1, 0, 0);
		}
	}
}

