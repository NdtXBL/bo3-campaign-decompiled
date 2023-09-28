#using scripts\codescripts\struct;
#using scripts\cp\_challenges;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\shared\abilities\_ability_player;
#using scripts\shared\abilities\_ability_util;
#using scripts\shared\ai\systems\gib;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\statemachine_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_e44205a2;

/*
	Name: init
	Namespace: namespace_e44205a2
	Checksum: 0x99EC1590
	Offset: 0x578
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function init()
{
}

/*
	Name: main
	Namespace: namespace_e44205a2
	Checksum: 0x6AF5EABC
	Offset: 0x588
	Size: 0x1FB
	Parameters: 0
	Flags: None
*/
function main()
{
	namespace_d00ec32::function_36b56038(2, 64);
	level._effect["puke_reaction"] = "water/fx_liquid_vomit";
	level.cybercom.mrpukey = spawnstruct();
	level.cybercom.mrpukey._is_flickering = &_is_flickering;
	level.cybercom.mrpukey._on_flicker = &_on_flicker;
	level.cybercom.mrpukey._on_give = &_on_give;
	level.cybercom.mrpukey._on_take = &_on_take;
	level.cybercom.mrpukey._on_connect = &_on_connect;
	level.cybercom.mrpukey._on = &_on;
	level.cybercom.mrpukey._off = &_off;
	level.cybercom.mrpukey._is_primed = &_is_primed;
	level.cybercom.mrpukey.var_106f11dd = Array("c_54i_cqb_head1", "c_nrc_cqb_head", "c_nrc_cqb_f_head", "c_54i_supp_head1", "c_54i_supp_head1", "c_nrc_sniper_head", "c_nrc_suppressor_head");
}

/*
	Name: _is_flickering
	Namespace: namespace_e44205a2
	Checksum: 0xDE61FF3E
	Offset: 0x790
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function _is_flickering(slot)
{
}

/*
	Name: _on_flicker
	Namespace: namespace_e44205a2
	Checksum: 0xF7208179
	Offset: 0x7A8
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function _on_flicker(slot, weapon)
{
}

/*
	Name: _on_give
	Namespace: namespace_e44205a2
	Checksum: 0xF4C16B13
	Offset: 0x7C8
	Size: 0x1B3
	Parameters: 2
	Flags: None
*/
function _on_give(slot, weapon)
{
	self.cybercom.var_110c156a = GetDvarInt("scr_mrpukey_target_count", 4);
	self.cybercom.var_cf33c5a4 = GetDvarFloat("scr_pukey_fov", 0.968);
	if(self function_1a9006bd("cybercom_mrpukey") == 2)
	{
		self.cybercom.var_f72b478f = GetDvarFloat("scr_pukey_upgraded_fov", 0.92);
		self.cybercom.var_110c156a = GetDvarInt("scr_mrpukey_target_count_upgraded", 5);
	}
	self.cybercom.var_9d8e0758 = &_get_valid_targets;
	self.cybercom.var_c40accd3 = &function_602b28e9;
	self thread cybercom::function_b5f4e597(weapon);
	self cybercom::function_8257bcb3("base_rifle", 5);
	self cybercom::function_8257bcb3("fem_rifle", 5);
	self cybercom::function_8257bcb3("riotshield", 2);
}

/*
	Name: _on_take
	Namespace: namespace_e44205a2
	Checksum: 0x14D873F9
	Offset: 0x988
	Size: 0x61
	Parameters: 2
	Flags: None
*/
function _on_take(slot, weapon)
{
	self _off(slot, weapon);
	self.cybercom.var_9d8e0758 = undefined;
	self.cybercom.var_c40accd3 = undefined;
	self.cybercom.var_f72b478f = undefined;
}

/*
	Name: _on_connect
	Namespace: namespace_e44205a2
	Checksum: 0x99EC1590
	Offset: 0x9F8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function _on_connect()
{
}

/*
	Name: _on
	Namespace: namespace_e44205a2
	Checksum: 0x606EEADC
	Offset: 0xA08
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function _on(slot, weapon)
{
	self thread function_2de61c3f(slot, weapon);
	self _off(slot, weapon);
}

/*
	Name: _off
	Namespace: namespace_e44205a2
	Checksum: 0x7BF646E9
	Offset: 0xA68
	Size: 0x39
	Parameters: 2
	Flags: None
*/
function _off(slot, weapon)
{
	self thread cybercom::function_d51412df(weapon);
	self.cybercom.var_301030f7 = undefined;
}

/*
	Name: _is_primed
	Namespace: namespace_e44205a2
	Checksum: 0x6A6D4CBC
	Offset: 0xAB0
	Size: 0xA7
	Parameters: 2
	Flags: None
*/
function _is_primed(slot, weapon)
{
	if(!(isdefined(self.cybercom.var_301030f7) && self.cybercom.var_301030f7))
	{
		/#
			Assert(self.cybercom.var_2e20c9bd == weapon);
		#/
		self thread cybercom::function_2006f7d0(slot, weapon, self.cybercom.var_110c156a);
		self.cybercom.var_301030f7 = 1;
	}
}

/*
	Name: function_602b28e9
	Namespace: namespace_e44205a2
	Checksum: 0x13C08C9B
	Offset: 0xB60
	Size: 0x1FF
	Parameters: 1
	Flags: Private
*/
function private function_602b28e9(target)
{
	if(target cybercom::function_8fd8f5b1("cybercom_mrpukey"))
	{
		self cybercom::function_29bf9dee(target, 2);
		return 0;
	}
	if(isdefined(target.is_disabled) && target.is_disabled)
	{
		self cybercom::function_29bf9dee(target, 6);
		return 0;
	}
	if(IsActor(target) && target cybercom::function_78525729() != "stand" && target cybercom::function_78525729() != "crouch")
	{
		return 0;
	}
	if(isVehicle(target) || !isdefined(target.archetype))
	{
		self cybercom::function_29bf9dee(target, 2);
		return 0;
	}
	if(IsActor(target) && target.archetype != "human" && target.archetype != "human_riotshield")
	{
		self cybercom::function_29bf9dee(target, 2);
		return 0;
	}
	if(IsActor(target) && !target IsOnGround() && !target cybercom::function_421746e0())
	{
		return 0;
	}
	return 1;
}

/*
	Name: _get_valid_targets
	Namespace: namespace_e44205a2
	Checksum: 0xA7FA5BE3
	Offset: 0xD68
	Size: 0x51
	Parameters: 1
	Flags: Private
*/
function private _get_valid_targets(weapon)
{
	return ArrayCombine(GetAITeamArray("axis"), GetAITeamArray("team3"), 0, 0);
}

/*
	Name: function_2de61c3f
	Namespace: namespace_e44205a2
	Checksum: 0xD3560DCD
	Offset: 0xDC8
	Size: 0x2E3
	Parameters: 2
	Flags: Private
*/
function private function_2de61c3f(slot, weapon)
{
	upgraded = self function_1a9006bd("cybercom_mrpukey") == 2;
	aborted = 0;
	fired = 0;
	foreach(item in self.cybercom.var_d1460543)
	{
		if(isdefined(item.target) && (isdefined(item.inRange) && item.inRange))
		{
			if(item.inRange == 1)
			{
				if(!cybercom::function_7a7d1608(item.target, weapon))
				{
					continue;
				}
				self thread challenges::function_96ed590f("cybercom_uses_chaos");
				item.target thread function_25411db1(upgraded, 0, self, weapon);
				fired++;
				continue;
			}
			if(item.inRange == 2)
			{
				aborted++;
			}
		}
	}
	if(aborted && !fired)
	{
		self.cybercom.var_d1460543 = [];
		self cybercom::function_29bf9dee(undefined, 1, 0);
	}
	cybercom::function_adc40f11(weapon, fired);
	if(fired && isPlayer(self))
	{
		itemIndex = GetItemIndexFromRef("cybercom_mrpukey");
		if(isdefined(itemIndex))
		{
			self AddDStat("ItemStats", itemIndex, "stats", "kills", "statValue", fired);
			self AddDStat("ItemStats", itemIndex, "stats", "used", "statValue", 1);
		}
	}
}

/*
	Name: function_25411db1
	Namespace: namespace_e44205a2
	Checksum: 0xBDB74FCD
	Offset: 0x10B8
	Size: 0x1EB
	Parameters: 4
	Flags: Private
*/
function function_25411db1()
{
System.InvalidOperationException: Stack empty.
   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Stack`1.Pop()
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.⁫⁮⁭‮⁮⁪‬⁮‎‌‮⁪‏‍⁬‏⁪‮‎‏‪‌‎‍‎‪⁮​‬⁪‮⁭‏⁭‌‏‎‭⁪‫‮(String , Int32 , Boolean , Boolean )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‮​⁬⁭⁮‍‏‏‫‎‭‫⁮‪‮⁭‮⁬​‌⁯‮⁭‬​‪⁭‍‏‪⁪‎⁭⁭‌⁪‌‭​⁯‮(ScriptOp , ‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: function_ceb2ee11
	Namespace: namespace_e44205a2
	Checksum: 0xADA038DB
	Offset: 0x12B0
	Size: 0xA7
	Parameters: 0
	Flags: None
*/
function function_ceb2ee11()
{
	attachSize = self getattachsize();
	for(i = 0; i < attachSize; i++)
	{
		model_name = self getAttachModelName(i);
		if(IsInArray(level.cybercom.mrpukey.var_106f11dd, model_name))
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_da7ef8ba
	Namespace: namespace_e44205a2
	Checksum: 0x7B482510
	Offset: 0x1360
	Size: 0x2C9
	Parameters: 3
	Flags: None
*/
function function_da7ef8ba(target, var_9bc2efcb, upgraded)
{
	if(!isdefined(var_9bc2efcb))
	{
		var_9bc2efcb = 1;
	}
	if(!isdefined(target))
	{
		return;
	}
	if(self.archetype != "human")
	{
		return;
	}
	validTargets = [];
	if(IsArray(target))
	{
		foreach(guy in target)
		{
			if(!function_602b28e9(guy))
			{
				continue;
			}
			validTargets[validTargets.size] = guy;
		}
	}
	else if(!function_602b28e9(target))
	{
		return;
	}
	validTargets[validTargets.size] = target;
	if(isdefined(var_9bc2efcb) && var_9bc2efcb)
	{
		type = self cybercom::function_5e3d3aa();
		self OrientMode("face default");
		self AnimScripted("ai_cybercom_anim", self.origin, self.angles, "ai_base_rifle_" + type + "_exposed_cybercom_activate");
		self waittillmatch("hash_39fa7e38");
	}
	weapon = GetWeapon("gadget_mrpukey");
	foreach(guy in validTargets)
	{
		if(!cybercom::function_7a7d1608(guy, weapon))
		{
			continue;
		}
		guy thread function_25411db1(upgraded, 0, self);
		wait(0.05);
	}
}

