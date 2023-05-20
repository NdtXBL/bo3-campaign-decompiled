#using scripts\codescripts\struct;
#using scripts\cp\gametypes\_globallogic_player;
#using scripts\shared\damagefeedback_shared;
#using scripts\shared\util_shared;

#namespace namespace_97b5406d;

/*
	Name: function_2068a2e3
	Namespace: namespace_97b5406d
	Checksum: 0xDB1A9EC1
	Offset: 0x290
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function function_2068a2e3()
{
	level.var_97bb6c9d = 15;
	level.var_2fac5686 = 1.5;
}

/*
	Name: function_df1eee42
	Namespace: namespace_97b5406d
	Checksum: 0xC392822C
	Offset: 0x2B8
	Size: 0x383
	Parameters: 3
	Flags: None
*/
function function_df1eee42(var_a0ad4f34, var_178903fd, var_afec04e7)
{
	if(isdefined(self.var_31863fce))
	{
		return;
	}
	self thread function_1824cc36(level.var_2fac5686);
	self endon("hash_643a7daf");
	var_a0ad4f34 endon("hash_643a7daf");
	waittillframeend;
	self.var_31863fce = 1;
	self thread function_f8ca07a9();
	var_538fc792 = [];
	if(function_e70ab977(self))
	{
		var_538fc792[var_538fc792.size] = "J_Wrist_RI";
		var_538fc792[var_538fc792.size] = "J_Wrist_LE";
		var_538fc792[var_538fc792.size] = "J_Elbow_LE";
		var_538fc792[var_538fc792.size] = "J_Elbow_RI";
		var_538fc792[var_538fc792.size] = "J_Knee_RI";
		var_538fc792[var_538fc792.size] = "J_Knee_LE";
		var_538fc792[var_538fc792.size] = "J_Ankle_RI";
		var_538fc792[var_538fc792.size] = "J_Ankle_LE";
	}
	else
	{
		var_538fc792[var_538fc792.size] = "J_Wrist_RI";
		var_538fc792[var_538fc792.size] = "J_Wrist_LE";
		var_538fc792[var_538fc792.size] = "J_Elbow_LE";
		var_538fc792[var_538fc792.size] = "J_Elbow_RI";
		var_538fc792[var_538fc792.size] = "J_Knee_RI";
		var_538fc792[var_538fc792.size] = "J_Knee_LE";
		var_538fc792[var_538fc792.size] = "J_Ankle_RI";
		var_538fc792[var_538fc792.size] = "J_Ankle_LE";
		if(function_65f192a6(self) && self.var_3a90f16b > 0)
		{
			self function_4603618(3);
		}
	}
	if(isdefined(level.var_c1aa5253["character_fire_death_torso"]))
	{
		for(var_f2152198 = 0; var_f2152198 < var_538fc792.size; var_f2152198++)
		{
			function_da6acfd2(level.var_c1aa5253["character_fire_death_sm"], self, var_538fc792[var_f2152198]);
		}
	}
	else if(function_e70ab977(self))
	{
		function_da6acfd2(level.var_c1aa5253["character_fire_death_torso"], self, "J_Spine1");
	}
	else
	{
		function_da6acfd2(level.var_c1aa5253["character_fire_death_torso"], self, "J_SpineLower");
	}
	if(!function_5b49d38c(self))
	{
		return;
	}
	if(function_65f192a6(self))
	{
		self thread function_464bbd88(7);
		self thread function_1d10e97f();
	}
}

/*
	Name: function_823d8381
	Namespace: namespace_97b5406d
	Checksum: 0x78DFAFC5
	Offset: 0x648
	Size: 0x3BB
	Parameters: 3
	Flags: None
*/
function function_823d8381(var_a0ad4f34, var_178903fd, var_afec04e7)
{
	if(isdefined(self.var_31863fce) || self function_88542fcf("specialty_fireproof"))
	{
		return;
	}
	self thread function_1824cc36(level.var_2fac5686);
	self endon("hash_643a7daf");
	var_a0ad4f34 endon("hash_643a7daf");
	self endon("hash_128f8789");
	if(isdefined(self.var_31863fce))
	{
		return;
	}
	self thread function_f8ca07a9();
	waittillframeend;
	self.var_31863fce = 1;
	self thread function_f8ca07a9();
	var_538fc792 = [];
	if(function_e70ab977(self))
	{
		var_538fc792[var_538fc792.size] = "J_Wrist_RI";
		var_538fc792[var_538fc792.size] = "J_Wrist_LE";
		var_538fc792[var_538fc792.size] = "J_Elbow_LE";
		var_538fc792[var_538fc792.size] = "J_Elbow_RI";
		var_538fc792[var_538fc792.size] = "J_Knee_RI";
		var_538fc792[var_538fc792.size] = "J_Knee_LE";
		var_538fc792[var_538fc792.size] = "J_Ankle_RI";
		var_538fc792[var_538fc792.size] = "J_Ankle_LE";
	}
	else
	{
		var_538fc792[var_538fc792.size] = "J_Wrist_RI";
		var_538fc792[var_538fc792.size] = "J_Wrist_LE";
		var_538fc792[var_538fc792.size] = "J_Elbow_LE";
		var_538fc792[var_538fc792.size] = "J_Elbow_RI";
		var_538fc792[var_538fc792.size] = "J_Knee_RI";
		var_538fc792[var_538fc792.size] = "J_Knee_LE";
		var_538fc792[var_538fc792.size] = "J_Ankle_RI";
		var_538fc792[var_538fc792.size] = "J_Ankle_LE";
		if(function_65f192a6(self))
		{
			self function_4603618(3);
		}
	}
	if(isdefined(level.var_c1aa5253["character_fire_death_sm"]))
	{
		for(var_f2152198 = 0; var_f2152198 < var_538fc792.size; var_f2152198++)
		{
			function_da6acfd2(level.var_c1aa5253["character_fire_death_sm"], self, var_538fc792[var_f2152198]);
		}
	}
	else if(isdefined(level.var_c1aa5253["character_fire_death_torso"]))
	{
		function_da6acfd2(level.var_c1aa5253["character_fire_death_torso"], self, "J_SpineLower");
	}
	if(!function_5b49d38c(self))
	{
		return;
	}
	self thread function_aec07428(var_a0ad4f34, var_178903fd, var_afec04e7);
	if(function_65f192a6(self))
	{
		self thread function_464bbd88(7);
		self thread function_1d10e97f();
	}
}

/*
	Name: function_fcb64b8
	Namespace: namespace_97b5406d
	Checksum: 0x71486487
	Offset: 0xA10
	Size: 0x2B3
	Parameters: 3
	Flags: None
*/
function function_fcb64b8(var_a0ad4f34, var_178903fd, var_dfcc01fd)
{
	if(isdefined(self.var_31863fce) || self function_88542fcf("specialty_fireproof"))
	{
		return;
	}
	self thread function_1824cc36(level.var_2fac5686);
	self endon("hash_643a7daf");
	waittillframeend;
	self.var_31863fce = 1;
	self thread function_f8ca07a9();
	var_538fc792 = [];
	if(function_e70ab977(self))
	{
		var_538fc792[var_538fc792.size] = "J_Wrist_RI";
		var_538fc792[var_538fc792.size] = "J_Wrist_LE";
		var_538fc792[var_538fc792.size] = "J_Elbow_LE";
		var_538fc792[var_538fc792.size] = "J_Elbow_RI";
		var_538fc792[var_538fc792.size] = "J_Knee_RI";
		var_538fc792[var_538fc792.size] = "J_Knee_LE";
		var_538fc792[var_538fc792.size] = "J_Ankle_RI";
		var_538fc792[var_538fc792.size] = "J_Ankle_LE";
	}
	else
	{
		var_538fc792[var_538fc792.size] = "J_Knee_RI";
		var_538fc792[var_538fc792.size] = "J_Knee_LE";
		var_538fc792[var_538fc792.size] = "J_Ankle_RI";
		var_538fc792[var_538fc792.size] = "J_Ankle_LE";
	}
	if(isdefined(level.var_c1aa5253["character_fire_player_sm"]))
	{
		for(var_f2152198 = 0; var_f2152198 < var_538fc792.size; var_f2152198++)
		{
			function_da6acfd2(level.var_c1aa5253["character_fire_player_sm"], self, var_538fc792[var_f2152198]);
		}
	}
	else if(!function_5b49d38c(self))
	{
		return;
	}
	self thread function_72d46630(var_a0ad4f34, var_178903fd, var_dfcc01fd, 1);
	if(function_65f192a6(self))
	{
		self thread function_464bbd88(7);
		self thread function_1d10e97f();
	}
}

/*
	Name: function_c4881b4f
	Namespace: namespace_97b5406d
	Checksum: 0xFDE233A6
	Offset: 0xCD0
	Size: 0x265
	Parameters: 3
	Flags: None
*/
function function_c4881b4f(var_a0ad4f34, var_178903fd, var_dfcc01fd)
{
	if(isdefined(self.var_31863fce))
	{
		return;
	}
	self thread function_1824cc36(level.var_2fac5686);
	self endon("hash_643a7daf");
	waittillframeend;
	self.var_31863fce = 1;
	self thread function_f8ca07a9();
	var_538fc792 = [];
	if(function_e70ab977(self))
	{
		var_538fc792[0] = "J_Spine1";
		var_538fc792[1] = "J_Elbow_LE";
		var_538fc792[2] = "J_Elbow_RI";
		var_538fc792[3] = "J_Head";
		var_538fc792[4] = "j_knee_ri";
		var_538fc792[5] = "j_knee_le";
	}
	else
	{
		var_538fc792[0] = "J_Elbow_RI";
		var_538fc792[1] = "j_knee_ri";
		var_538fc792[2] = "j_knee_le";
		if(function_65f192a6(self) && self.var_3a90f16b > 0)
		{
			self function_4603618(3);
		}
	}
	if(function_65f192a6(self) && function_5b49d38c(self))
	{
		self thread function_464bbd88(7);
		self thread function_1d10e97f();
	}
	if(isdefined(level.var_c1aa5253["character_fire_player_sm"]))
	{
		for(var_f2152198 = 0; var_f2152198 < var_538fc792.size; var_f2152198++)
		{
			function_da6acfd2(level.var_c1aa5253["character_fire_player_sm"], self, var_538fc792[var_f2152198]);
		}
	}
}

/*
	Name: function_52491159
	Namespace: namespace_97b5406d
	Checksum: 0xB18B1795
	Offset: 0xF40
	Size: 0x275
	Parameters: 3
	Flags: None
*/
function function_52491159(var_a0ad4f34, var_178903fd, var_dfcc01fd)
{
	if(isdefined(self.var_31863fce))
	{
		return;
	}
	self thread function_1824cc36(level.var_2fac5686);
	self endon("hash_643a7daf");
	waittillframeend;
	self.var_31863fce = 1;
	self thread function_f8ca07a9();
	var_538fc792 = [];
	if(function_e70ab977(self))
	{
		var_538fc792[0] = "J_Spine1";
		var_538fc792[1] = "J_Elbow_LE";
		var_538fc792[2] = "J_Elbow_RI";
		var_538fc792[3] = "J_Head";
		var_538fc792[4] = "j_knee_ri";
		var_538fc792[5] = "j_knee_le";
	}
	else
	{
		var_538fc792[0] = "j_spinelower";
		var_538fc792[1] = "J_Elbow_RI";
		var_538fc792[2] = "j_knee_ri";
		var_538fc792[3] = "j_knee_le";
		if(function_65f192a6(self) && self.var_3a90f16b > 0)
		{
			self function_4603618(3);
		}
	}
	if(function_65f192a6(self) && function_5b49d38c(self))
	{
		self thread function_464bbd88(7);
		self thread function_1d10e97f();
		return;
	}
	if(isdefined(level.var_c1aa5253["character_fire_player_sm"]))
	{
		for(var_f2152198 = 0; var_f2152198 < var_538fc792.size; var_f2152198++)
		{
			function_da6acfd2(level.var_c1aa5253["character_fire_player_sm"], self, var_538fc792[var_f2152198]);
		}
	}
}

/*
	Name: function_30e7e350
	Namespace: namespace_97b5406d
	Checksum: 0x331C2CBF
	Offset: 0x11C0
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_30e7e350()
{
	self.var_31863fce = 1;
	self thread function_f8ca07a9();
	self thread function_de3344dc();
	self thread function_1824cc36(level.var_2fac5686);
}

/*
	Name: function_1d10e97f
	Namespace: namespace_97b5406d
	Checksum: 0x550702D5
	Offset: 0x1228
	Size: 0x6D
	Parameters: 0
	Flags: None
*/
function function_1d10e97f()
{
	self endon("hash_643a7daf");
	self notify("hash_abaf0a23");
	self endon("hash_abaf0a23");
	self waittill("hash_128f8789");
	if(function_65f192a6(self))
	{
		self function_78f01691();
	}
	self.var_31863fce = undefined;
}

/*
	Name: function_464bbd88
	Namespace: namespace_97b5406d
	Checksum: 0xBFF4F6F2
	Offset: 0x12A0
	Size: 0xA7
	Parameters: 1
	Flags: None
*/
function function_464bbd88(var_60db70fa)
{
	self endon("hash_643a7daf");
	self notify("hash_bbb80fa");
	self endon("hash_bbb80fa");
	wait(0.1);
	var_8fe2f56c = 0.1;
	while(var_60db70fa > 0)
	{
		wait(var_8fe2f56c);
		if(self function_bd5bcde() > 0)
		{
			function_2b4f1bd8();
			var_60db70fa = 0;
		}
		var_60db70fa = var_60db70fa - var_8fe2f56c;
	}
}

/*
	Name: function_2b4f1bd8
	Namespace: namespace_97b5406d
	Checksum: 0xB82D27E4
	Offset: 0x1350
	Size: 0x11F
	Parameters: 0
	Flags: None
*/
function function_2b4f1bd8()
{
	self notify("hash_3e41273b");
	var_538fc792 = [];
	var_538fc792[0] = "j_spinelower";
	var_538fc792[1] = "J_Elbow_RI";
	var_538fc792[2] = "J_Head";
	var_538fc792[3] = "j_knee_ri";
	var_538fc792[4] = "j_knee_le";
	if(isdefined(level.var_c1aa5253["fx_fire_player_sm_smk_2sec"]))
	{
		for(var_f2152198 = 0; var_f2152198 < var_538fc792.size; var_f2152198++)
		{
			function_da6acfd2(level.var_c1aa5253["fx_fire_player_sm_smk_2sec"], self, var_538fc792[var_f2152198]);
		}
	}
	self.var_31863fce = undefined;
	self function_78f01691();
	self.var_12a9e5da = 0;
}

/*
	Name: function_aec07428
	Namespace: namespace_97b5406d
	Checksum: 0x6ED45AA1
	Offset: 0x1478
	Size: 0x115
	Parameters: 3
	Flags: None
*/
function function_aec07428(var_a0ad4f34, var_178903fd, var_afec04e7)
{
	if(function_e70ab977(self))
	{
		function_fa572a1e(var_a0ad4f34, var_178903fd, var_afec04e7);
		return;
	}
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	var_a0ad4f34 endon("hash_643a7daf");
	self endon("hash_3e41273b");
	while(isdefined(level.var_f808fd37) && isdefined(self) && self function_bd5bcde() < 1)
	{
		self function_c3945cd5(level.var_f808fd37, self.var_722885f3, var_a0ad4f34, var_a0ad4f34, "none", var_afec04e7, 0, function_c4d5ec1f("napalm"));
		wait(1);
	}
}

/*
	Name: function_214dd4fb
	Namespace: namespace_97b5406d
	Checksum: 0x4FFEC7E6
	Offset: 0x1598
	Size: 0x307
	Parameters: 3
	Flags: None
*/
function function_214dd4fb(var_a0ad4f34, var_178903fd, var_afec04e7)
{
	if(self function_88542fcf("specialty_fireproof"))
	{
		return;
	}
	if(level.var_de12b72f)
	{
		if(var_a0ad4f34 != self && var_a0ad4f34.var_3e94206a == self.var_3e94206a)
		{
			return;
		}
	}
	if(function_e70ab977(self))
	{
		function_425abcad(var_a0ad4f34, var_178903fd, var_afec04e7);
		return;
	}
	if(isdefined(self.var_31863fce))
	{
		return;
	}
	self thread function_f8ca07a9();
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	var_a0ad4f34 endon("hash_643a7daf");
	self endon("hash_3e41273b");
	if(isdefined(level.var_5ad2ed74))
	{
		if(function_6f1ebe57("scr_groundBurnTime") == "")
		{
			var_77a7fe7d = level.var_5ad2ed74;
		}
		else
		{
			var_77a7fe7d = function_f3087faa("scr_groundBurnTime");
		}
	}
	else
	{
		var_77a7fe7d = 100;
	}
	self function_fcb64b8(var_a0ad4f34, var_178903fd, function_c4d5ec1f("napalm"));
	self.var_12a9e5da = 1;
	if(isdefined(level.var_a10a574c))
	{
		if(function_6f1ebe57("scr_napalmGroundDamage") == "")
		{
			var_a10a574c = level.var_a10a574c;
			continue;
		}
		var_a10a574c = function_f3087faa("scr_napalmGroundDamage");
		while(isdefined(self) && isdefined(var_178903fd) && self function_bd5bcde() < 1 && var_77a7fe7d > 0)
		{
			self function_c3945cd5(level.var_a10a574c, self.var_722885f3, var_a0ad4f34, var_178903fd, "none", var_afec04e7, 0, function_c4d5ec1f("napalm"));
			if(function_65f192a6(self))
			{
				self function_4603618(1.1);
			}
			wait(1);
			var_77a7fe7d = var_77a7fe7d - 1;
		}
	}
	self.var_12a9e5da = 0;
}

/*
	Name: function_fa572a1e
	Namespace: namespace_97b5406d
	Checksum: 0xDC0E1D40
	Offset: 0x18A8
	Size: 0x95
	Parameters: 3
	Flags: None
*/
function function_fa572a1e(var_a0ad4f34, var_178903fd, var_afec04e7)
{
	var_a0ad4f34 endon("hash_643a7daf");
	self endon("hash_128f8789");
	self endon("hash_3e41273b");
	while(isdefined(level.var_f808fd37) && isdefined(self))
	{
		self function_c3945cd5(level.var_f808fd37, self.var_722885f3, var_a0ad4f34, var_a0ad4f34, "none", var_afec04e7);
		wait(1);
	}
}

/*
	Name: function_425abcad
	Namespace: namespace_97b5406d
	Checksum: 0x3502B22D
	Offset: 0x1948
	Size: 0xAD
	Parameters: 3
	Flags: None
*/
function function_425abcad(var_a0ad4f34, var_178903fd, var_afec04e7)
{
	var_a0ad4f34 endon("hash_643a7daf");
	self endon("hash_128f8789");
	self endon("hash_3e41273b");
	while(isdefined(level.var_a10a574c) && isdefined(self))
	{
		self function_c3945cd5(level.var_a10a574c, self.var_722885f3, var_a0ad4f34, var_a0ad4f34, "none", var_afec04e7, 0, function_c4d5ec1f("napalm"));
		wait(1);
	}
}

/*
	Name: function_f8ca07a9
	Namespace: namespace_97b5406d
	Checksum: 0xDF5BA65E
	Offset: 0x1A00
	Size: 0x29
	Parameters: 0
	Flags: None
*/
function function_f8ca07a9()
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	wait(3);
	self.var_31863fce = undefined;
}

/*
	Name: function_72d46630
	Namespace: namespace_97b5406d
	Checksum: 0x6603A47
	Offset: 0x1A38
	Size: 0x203
	Parameters: 4
	Flags: None
*/
function function_72d46630(var_a0ad4f34, var_178903fd, var_dfcc01fd, var_60db70fa)
{
	if(function_e70ab977(self))
	{
		function_65e5cf8e(var_a0ad4f34, var_178903fd, var_dfcc01fd, var_60db70fa);
		return;
	}
	if(isdefined(var_a0ad4f34))
	{
		var_a0ad4f34 endon("hash_643a7daf");
	}
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	self endon("hash_3e41273b");
	self thread function_de3344dc();
	self notify("hash_2f723e7e");
	var_3865186 = 1;
	while(isdefined(level.var_97bb6c9d) && isdefined(self) && self function_bd5bcde() < 1 && var_60db70fa > 0)
	{
		if(isdefined(var_a0ad4f34) && isdefined(var_178903fd) && isdefined(var_dfcc01fd))
		{
			if(namespace_fc79db9f::function_a2f24e04(var_dfcc01fd, var_a0ad4f34))
			{
				var_a0ad4f34 namespace_fc79db9f::function_debccd1a();
			}
			self function_c3945cd5(level.var_97bb6c9d, self.var_722885f3, var_a0ad4f34, var_178903fd, "none", "MOD_BURNED", 0, var_dfcc01fd);
		}
		else
		{
			self function_c3945cd5(level.var_97bb6c9d, self.var_722885f3);
		}
		wait(var_3865186);
		var_60db70fa = var_60db70fa - var_3865186;
	}
	self thread function_2b4f1bd8();
}

/*
	Name: function_65e5cf8e
	Namespace: namespace_97b5406d
	Checksum: 0x5E4B1CB
	Offset: 0x1C48
	Size: 0x115
	Parameters: 4
	Flags: None
*/
function function_65e5cf8e(var_a0ad4f34, var_178903fd, var_dfcc01fd, var_60db70fa)
{
	if(!isdefined(var_a0ad4f34) || !isdefined(var_178903fd) || !isdefined(var_dfcc01fd))
	{
		return;
	}
	var_a0ad4f34 endon("hash_643a7daf");
	self endon("hash_128f8789");
	self endon("hash_3e41273b");
	self thread function_de3344dc();
	var_3865186 = 1;
	while(isdefined(level.var_97bb6c9d) && isdefined(self) && var_60db70fa > 0)
	{
		self function_c3945cd5(level.var_97bb6c9d, self.var_722885f3, var_a0ad4f34, var_178903fd, "none", "MOD_BURNED", 0, var_dfcc01fd);
		wait(var_3865186);
		var_60db70fa = var_60db70fa - var_3865186;
	}
}

/*
	Name: function_1824cc36
	Namespace: namespace_97b5406d
	Checksum: 0x991E2E71
	Offset: 0x1D68
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_1824cc36(var_60db70fa)
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	wait(var_60db70fa);
	self function_78f01691();
}

/*
	Name: function_de3344dc
	Namespace: namespace_97b5406d
	Checksum: 0xB0B2142F
	Offset: 0x1DB0
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_de3344dc()
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	var_291ac48b = function_9b7fda5e("script_origin", self.var_722885f3);
	var_291ac48b function_37f7858a(self, "tag_origin", (0, 0, 0), (0, 0, 0));
	var_291ac48b function_c2931a36("mpl_player_burn_loop");
	self thread function_40125168(var_291ac48b);
	self waittill("hash_dfb19617");
	if(isdefined(var_291ac48b))
	{
		var_291ac48b function_eaa69754(0.5);
	}
	wait(0.5);
	if(isdefined(var_291ac48b))
	{
		var_291ac48b function_dc8c8404();
	}
	/#
		function_895b00("Dev Block strings are not supported");
	#/
}

/*
	Name: function_78f01691
	Namespace: namespace_97b5406d
	Checksum: 0x7A6CF2FC
	Offset: 0x1EE0
	Size: 0x19
	Parameters: 0
	Flags: None
*/
function function_78f01691()
{
	self endon("hash_643a7daf");
	self notify("hash_dfb19617");
}

/*
	Name: function_40125168
	Namespace: namespace_97b5406d
	Checksum: 0xA85C6B1D
	Offset: 0x1F08
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_40125168(var_a3d46ee4)
{
	var_a3d46ee4 endon("hash_128f8789");
	self namespace_82b91a51::function_5b7e3888("death", "disconnect");
	var_a3d46ee4 function_dc8c8404();
	/#
		function_895b00("Dev Block strings are not supported");
	#/
}

