#using scripts\codescripts\struct;
#using scripts\shared\callbacks_shared;
#using scripts\shared\system_shared;

#namespace namespace_fc79db9f;

/*
	Name: function_2dc19561
	Namespace: namespace_fc79db9f
	Checksum: 0x33BED38C
	Offset: 0x218
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("damagefeedback", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_fc79db9f
	Checksum: 0x84DE7FEC
	Offset: 0x258
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
	Namespace: namespace_fc79db9f
	Checksum: 0x99EC1590
	Offset: 0x2A8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
}

/*
	Name: function_fb4f96b5
	Namespace: namespace_fc79db9f
	Checksum: 0xE54991A1
	Offset: 0x2B8
	Size: 0xD7
	Parameters: 0
	Flags: None
*/
function function_fb4f96b5()
{
	self.var_c90af761 = function_71df8d81(self);
	self.var_c90af761.var_740218b1 = "center";
	self.var_c90af761.var_f9134763 = "middle";
	self.var_c90af761.var_4f8217af = -12;
	self.var_c90af761.var_297f9d46 = -12;
	self.var_c90af761.var_aabe9f43 = 0;
	self.var_c90af761.var_740f6833 = 1;
	self.var_c90af761 function_9befb288("damage_feedback", 24, 48);
	self.var_5711ef1b = 1;
}

/*
	Name: function_660af82d
	Namespace: namespace_fc79db9f
	Checksum: 0xB9B79E31
	Offset: 0x398
	Size: 0x65
	Parameters: 1
	Flags: None
*/
function function_660af82d(var_afec04e7)
{
	if(!isdefined(var_afec04e7))
	{
		return 0;
	}
	switch(var_afec04e7)
	{
		case "MOD_CRUSH":
		case "MOD_GRENADE_SPLASH":
		case "MOD_HIT_BY_OBJECT":
		case "MOD_MELEE":
		case "MOD_MELEE_ASSASSINATE":
		case "MOD_MELEE_WEAPON_BUTT":
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_debccd1a
	Namespace: namespace_fc79db9f
	Checksum: 0x8FD6A397
	Offset: 0x408
	Size: 0x25F
	Parameters: 3
	Flags: None
*/
function function_debccd1a(var_afec04e7, var_178903fd, var_9f31b29c)
{
	if(!function_65f192a6(self) || function_75e46361())
	{
		return;
	}
	if(function_660af82d(var_afec04e7))
	{
		if(isdefined(var_178903fd) && isdefined(var_178903fd.var_bfaaac3e))
		{
			switch(var_178903fd.var_bfaaac3e)
			{
				case "player":
				{
					self function_8a20e55d("mpl_hit_alert");
					break;
				}
				case "heli":
				{
					self thread function_a6594fd5(var_afec04e7, "mpl_hit_alert_air");
					break;
				}
				case "hpm":
				{
					self thread function_a6594fd5(var_afec04e7, "mpl_hit_alert_hpm");
					break;
				}
				case "taser_spike":
				{
					self thread function_a6594fd5(var_afec04e7, "mpl_hit_alert_taser_spike");
					break;
				}
				case "dog":
				case "straferun":
				{
					break;
				}
				case "default_loud":
				{
					self thread function_a6594fd5(var_afec04e7, "mpl_hit_heli_gunner");
					break;
				}
				case default:
				{
					self thread function_a6594fd5(var_afec04e7, "mpl_hit_alert_low");
					break;
				}
			}
		}
		else
		{
			self function_8a20e55d("mpl_hit_alert_low");
		}
	}
	if(isdefined(var_9f31b29c))
	{
	}
	else
	{
		self.var_c90af761 function_9befb288("damage_feedback", 24, 48);
	}
	self.var_c90af761.var_aabe9f43 = 1;
	self.var_c90af761 function_ba7f003e(1);
	self.var_c90af761.var_aabe9f43 = 0;
}

/*
	Name: function_a6594fd5
	Namespace: namespace_fc79db9f
	Checksum: 0x83D2869B
	Offset: 0x670
	Size: 0x5F
	Parameters: 2
	Flags: None
*/
function function_a6594fd5(var_afec04e7, var_78a7a5b9)
{
	self endon("hash_643a7daf");
	if(self.var_5711ef1b)
	{
		self.var_5711ef1b = 0;
		self function_8a20e55d(var_78a7a5b9);
		wait(0.05);
		self.var_5711ef1b = 1;
	}
}

/*
	Name: function_7fef183e
	Namespace: namespace_fc79db9f
	Checksum: 0x67A874E3
	Offset: 0x6D8
	Size: 0xE9
	Parameters: 1
	Flags: None
*/
function function_7fef183e(var_84663ff)
{
	if(!function_65f192a6(self))
	{
		return;
	}
	if(!isdefined(var_84663ff))
	{
		return;
	}
	if(!function_65f192a6(var_84663ff))
	{
		return;
	}
	wait(0.05);
	if(!isdefined(self.var_3f443551))
	{
		self.var_3f443551 = [];
		var_1dbcf329 = var_84663ff function_c7f3ce11();
		self.var_3f443551[var_1dbcf329] = 1;
		self thread function_353402e0(var_84663ff);
	}
	else
	{
		var_1dbcf329 = var_84663ff function_c7f3ce11();
		self.var_3f443551[var_1dbcf329] = 1;
	}
}

/*
	Name: function_353402e0
	Namespace: namespace_fc79db9f
	Checksum: 0x4C16DB74
	Offset: 0x7D0
	Size: 0x17D
	Parameters: 1
	Flags: None
*/
function function_353402e0(var_84663ff)
{
	self endon("hash_643a7daf");
	waittillframeend;
	var_e1c02941 = 0;
	var_9368ba0c = 1;
	var_4f484664 = 0;
	for(var_c957f6b6 = 0; var_c957f6b6 < 32; var_c957f6b6++)
	{
		if(isdefined(self.var_3f443551[var_c957f6b6]) && self.var_3f443551[var_c957f6b6] != 0)
		{
			var_4f484664 = var_4f484664 + var_9368ba0c;
			var_e1c02941++;
		}
		var_9368ba0c = var_9368ba0c * 2;
	}
	var_754ac0cd = 0;
	for(var_c957f6b6 = 33; var_c957f6b6 < 64; var_c957f6b6++)
	{
		if(isdefined(self.var_3f443551[var_c957f6b6]) && self.var_3f443551[var_c957f6b6] != 0)
		{
			var_754ac0cd = var_754ac0cd + var_9368ba0c;
			var_e1c02941++;
		}
		var_9368ba0c = var_9368ba0c * 2;
	}
	if(var_e1c02941)
	{
		self function_4e05f15d(var_4f484664, var_754ac0cd);
	}
	self.var_3f443551 = undefined;
	var_4f484664 = 0;
	var_754ac0cd = 0;
}

