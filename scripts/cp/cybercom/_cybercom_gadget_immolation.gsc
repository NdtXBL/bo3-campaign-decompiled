#using scripts\codescripts\struct;
#using scripts\cp\_challenges;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\abilities\_ability_player;
#using scripts\shared\abilities\_ability_util;
#using scripts\shared\ai\systems\blackboard;
#using scripts\shared\ai\systems\gib;
#using scripts\shared\ai_shared;
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
#using scripts\shared\vehicle_ai_shared;

#namespace namespace_a56eec64;

/*
	Name: init
	Namespace: namespace_a56eec64
	Checksum: 0x99EC1590
	Offset: 0x7B0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function init()
{
}

/*
	Name: main
	Namespace: namespace_a56eec64
	Checksum: 0xCCEBBC3A
	Offset: 0x7C0
	Size: 0x22B
	Parameters: 0
	Flags: None
*/
function main()
{
	namespace_d00ec32::function_36b56038(2, 4);
	level.cybercom.immolation = spawnstruct();
	level.cybercom.immolation._is_flickering = &_is_flickering;
	level.cybercom.immolation._on_flicker = &_on_flicker;
	level.cybercom.immolation._on_give = &_on_give;
	level.cybercom.immolation._on_take = &_on_take;
	level.cybercom.immolation._on_connect = &_on_connect;
	level.cybercom.immolation._on = &_on;
	level.cybercom.immolation._off = &_off;
	level.cybercom.immolation._is_primed = &_is_primed;
	level.cybercom.immolation.var_d4d82e00 = Array("j_shoulder_le_rot", "j_elbow_le_rot", "j_shoulder_ri_rot", "j_elbow_ri_rot", "j_hip_le", "j_knee_le", "j_hip_ri", "j_knee_ri", "j_head", "j_mainroot");
	level.cybercom.immolation.grenadeTypes = Array("frag_grenade_notrail", "emp_grenade");
}

/*
	Name: _is_flickering
	Namespace: namespace_a56eec64
	Checksum: 0xF7CB068E
	Offset: 0x9F8
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function _is_flickering(slot)
{
}

/*
	Name: _on_flicker
	Namespace: namespace_a56eec64
	Checksum: 0x6260790C
	Offset: 0xA10
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function _on_flicker(slot, weapon)
{
}

/*
	Name: _on_give
	Namespace: namespace_a56eec64
	Checksum: 0x20AFF044
	Offset: 0xA30
	Size: 0xF3
	Parameters: 2
	Flags: None
*/
function _on_give(slot, weapon)
{
	self.cybercom.var_110c156a = GetDvarInt("scr_immolation_count", 1);
	if(self function_1a9006bd("cybercom_immolation") == 2)
	{
		self.cybercom.var_110c156a = GetDvarInt("scr_immolation_upgraded_count", 1);
	}
	self.cybercom.var_9d8e0758 = &_get_valid_targets;
	self.cybercom.var_c40accd3 = &function_602b28e9;
	self thread cybercom::function_b5f4e597(weapon);
}

/*
	Name: _on_take
	Namespace: namespace_a56eec64
	Checksum: 0x48268750
	Offset: 0xB30
	Size: 0x51
	Parameters: 2
	Flags: None
*/
function _on_take(slot, weapon)
{
	self _off(slot, weapon);
	self.cybercom.var_9d8e0758 = undefined;
	self.cybercom.var_c40accd3 = undefined;
}

/*
	Name: _on_connect
	Namespace: namespace_a56eec64
	Checksum: 0x99EC1590
	Offset: 0xB90
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function _on_connect()
{
}

/*
	Name: _on
	Namespace: namespace_a56eec64
	Checksum: 0xAAD1D4E3
	Offset: 0xBA0
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function _on(slot, weapon)
{
	self thread function_24d3045f(slot, weapon);
	self _off(slot, weapon);
}

/*
	Name: _off
	Namespace: namespace_a56eec64
	Checksum: 0x72CEF02F
	Offset: 0xC00
	Size: 0x45
	Parameters: 2
	Flags: None
*/
function _off(slot, weapon)
{
	self thread cybercom::function_d51412df(weapon);
	self.cybercom.var_301030f7 = undefined;
	self notify("hash_c74ed649");
}

/*
	Name: _is_primed
	Namespace: namespace_a56eec64
	Checksum: 0x501B5D5C
	Offset: 0xC50
	Size: 0xAF
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
		self notify("hash_9cefb9d9");
		self thread cybercom::function_2006f7d0(slot, weapon, self.cybercom.var_110c156a);
		self.cybercom.var_301030f7 = 1;
	}
}

/*
	Name: function_602b28e9
	Namespace: namespace_a56eec64
	Checksum: 0x550BE
	Offset: 0xD08
	Size: 0x307
	Parameters: 1
	Flags: Private
*/
function private function_602b28e9(target)
{
	if(target cybercom::function_8fd8f5b1("cybercom_immolation"))
	{
		self cybercom::function_29bf9dee(target, 2);
		return 0;
	}
	if(isdefined(target.hijacked) && target.hijacked)
	{
		self cybercom::function_29bf9dee(target, 4);
		return 0;
	}
	if(isdefined(target.is_disabled) && target.is_disabled)
	{
		self cybercom::function_29bf9dee(target, 6);
		return 0;
	}
	if(!isdefined(target.archetype))
	{
		return 0;
	}
	if(isVehicle(target) && !target function_a2f96b90())
	{
		self cybercom::function_29bf9dee(target, 2);
		return 0;
	}
	if(!IsActor(target) && !isVehicle(target))
	{
		self cybercom::function_29bf9dee(target, 2);
		return 0;
	}
	if(IsActor(target) && (target.archetype != "robot" && target.archetype != "human" && target.archetype != "human_riotshield"))
	{
		self cybercom::function_29bf9dee(target, 2);
		return 0;
	}
	if(target.archetype == "human" || target.archetype == "human_riotshield" && isPlayer(self))
	{
		if(!self function_1a9006bd("cybercom_immolation") == 2)
		{
			self cybercom::function_29bf9dee(target, 2);
			return 0;
		}
	}
	if(IsActor(target) && !target IsOnGround() && !target cybercom::function_421746e0())
	{
		return 0;
	}
	return 1;
}

/*
	Name: _get_valid_targets
	Namespace: namespace_a56eec64
	Checksum: 0x28541BBD
	Offset: 0x1018
	Size: 0x51
	Parameters: 1
	Flags: Private
*/
function private _get_valid_targets(weapon)
{
	return ArrayCombine(GetAITeamArray("axis"), GetAITeamArray("team3"), 0, 0);
}

/*
	Name: function_24d3045f
	Namespace: namespace_a56eec64
	Checksum: 0x28055EF7
	Offset: 0x1078
	Size: 0x313
	Parameters: 2
	Flags: Private
*/
function private function_24d3045f(slot, weapon)
{
	upgraded = self function_1a9006bd("cybercom_immolation") == 2;
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
				item.target.var_23ebae6c = item.target.origin;
				item.target thread function_9e65a7de(self, upgraded, 0, weapon);
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
		itemIndex = GetItemIndexFromRef("cybercom_immolation");
		if(isdefined(itemIndex))
		{
			self AddDStat("ItemStats", itemIndex, "stats", "kills", "statValue", fired);
			self AddDStat("ItemStats", itemIndex, "stats", "used", "statValue", 1);
		}
	}
}

/*
	Name: function_a2f96b90
	Namespace: namespace_a56eec64
	Checksum: 0xD6DAF44A
	Offset: 0x1398
	Size: 0x8D
	Parameters: 0
	Flags: Private
*/
function private function_a2f96b90()
{
	if(!isdefined(self.vehicleType))
	{
		return 0;
	}
	if(IsSubStr(self.vehicleType, "amws"))
	{
		return 1;
	}
	if(IsSubStr(self.vehicleType, "wasp"))
	{
		return 1;
	}
	if(IsSubStr(self.vehicleType, "raps"))
	{
		return 1;
	}
	return 0;
}

/*
	Name: function_972e7bf2
	Namespace: namespace_a56eec64
	Checksum: 0xC4AFA14F
	Offset: 0x1430
	Size: 0xC3
	Parameters: 3
	Flags: Private
*/
function private function_972e7bf2(attacker, upgraded, immediate)
{
	if(!isdefined(immediate))
	{
		immediate = 0;
	}
	/#
		Assert(self function_a2f96b90());
	#/
	self clientfield::set("cybercom_immolate", 1);
	self.is_disabled = 1;
	if(!immediate)
	{
		wait(RandomFloatRange(0, 0.75));
	}
	self thread vehicle_ai::function_587b6deb(attacker);
}

/*
	Name: function_9e65a7de
	Namespace: namespace_a56eec64
	Checksum: 0x3DBF409B
	Offset: 0x1500
	Size: 0x17B
	Parameters: 4
	Flags: Private
*/
function function_9e65a7de()
{
System.InvalidOperationException: Stack empty.
   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Stack`1.Pop()
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.⁫⁮⁭‮⁮⁪‬⁮‎‌‮⁪‏‍⁬‏⁪‮‎‏‪‌‎‍‎‪⁮​‬⁪‮⁭‏⁭‌‏‎‭⁪‫‮(String , Int32 , Boolean , Boolean )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‮​⁬⁭⁮‍‏‏‫‎‭‫⁮‪‮⁭‮⁬​‌⁯‮⁭‬​‪⁭‍‏‪⁪‎⁭⁭‌⁪‌‭​⁯‮(ScriptOp , ‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: function_1ed56488
	Namespace: namespace_a56eec64
	Checksum: 0xCF210E22
	Offset: 0x1688
	Size: 0x12B
	Parameters: 4
	Flags: None
*/
function function_1ed56488()
{
System.InvalidOperationException: Stack empty.
   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Stack`1.Pop()
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.⁫⁮⁭‮⁮⁪‬⁮‎‌‮⁪‏‍⁬‏⁪‮‎‏‪‌‎‍‎‪⁮​‬⁪‮⁭‏⁭‌‏‎‭⁪‫‮(String , Int32 , Boolean , Boolean )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‮​⁬⁭⁮‍‏‏‫‎‭‫⁮‪‮⁭‮⁬​‌⁯‮⁭‬​‪⁭‍‏‪⁪‎⁭⁭‌⁪‌‭​⁯‮(ScriptOp , ‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: function_ce51c2a1
	Namespace: namespace_a56eec64
	Checksum: 0xEBEB8DB3
	Offset: 0x17C0
	Size: 0x4AB
	Parameters: 3
	Flags: None
*/
function function_ce51c2a1()
{
System.InvalidOperationException: Stack empty.
   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Stack`1.Pop()
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.⁫⁮⁭‮⁮⁪‬⁮‎‌‮⁪‏‍⁬‏⁪‮‎‏‪‌‎‍‎‪⁮​‬⁪‮⁭‏⁭‌‏‎‭⁪‫‮(String , Int32 , Boolean , Boolean )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‮​⁬⁭⁮‍‏‏‫‎‭‫⁮‪‮⁭‮⁬​‌⁯‮⁭‬​‪⁭‍‏‪⁪‎⁭⁭‌⁪‌‭​⁯‮(ScriptOp , ‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: function_f8956516
	Namespace: namespace_a56eec64
	Checksum: 0x412B751C
	Offset: 0x1C78
	Size: 0x51
	Parameters: 0
	Flags: None
*/
function function_f8956516()
{
	self endon("death");
	self waittillmatch("BHTN_ACTION_TERMINATE");
	self stopSound("gdt_immolation_human_countdown");
	self notify("explode", "specialpain");
}

/*
	Name: function_c7fa793a
	Namespace: namespace_a56eec64
	Checksum: 0x76293F08
	Offset: 0x1CD8
	Size: 0x523
	Parameters: 3
	Flags: None
*/
function function_c7fa793a()
{
System.InvalidOperationException: Stack empty.
   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Stack`1.Pop()
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.⁫⁮⁭‮⁮⁪‬⁮‎‌‮⁪‏‍⁬‏⁪‮‎‏‪‌‎‍‎‪⁮​‬⁪‮⁭‏⁭‌‏‎‭⁪‫‮(String , Int32 , Boolean , Boolean )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‮​⁬⁭⁮‍‏‏‫‎‭‫⁮‪‮⁭‮⁬​‌⁯‮⁭‬​‪⁭‍‏‪⁪‎⁭⁭‌⁪‌‭​⁯‮(ScriptOp , ‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: _corpseWatcher
	Namespace: namespace_a56eec64
	Checksum: 0x9DB6324E
	Offset: 0x2208
	Size: 0x53
	Parameters: 0
	Flags: Private
*/
function private _corpseWatcher()
{
	archetype = self.archetype;
	self waittill("actor_corpse", corpse);
	corpse clientfield::set("arch_actor_fire_fx", 2);
}

/*
	Name: function_843196fe
	Namespace: namespace_a56eec64
	Checksum: 0x9B9C19B0
	Offset: 0x2268
	Size: 0x2C7
	Parameters: 3
	Flags: Private
*/
function private function_843196fe(guy, chance, var_d9346487)
{
	if(!isdefined(chance))
	{
		chance = GetDvarInt("scr_immolation_gchance", 100);
	}
	self endon("disconnect");
	loc = guy function_ed100874();
	if(!isdefined(loc))
	{
		loc = guy.origin + VectorScale((0, 0, 1), 50);
	}
	grenade = self MagicGrenadeType(GetWeapon("frag_grenade_notrail"), loc, (0, 0, 0), 0);
	if(!isdefined(var_d9346487))
	{
		var_d9346487 = RandomInt(GetDvarInt("scr_immolation_gcount", 3)) + 1;
	}
	while(var_d9346487 && isdefined(self) && isdefined(guy))
	{
		wait(RandomFloatRange(GetDvarFloat("scr_immolation_grenade_wait_timeMIN", 0.3), GetDvarFloat("scr_immolation_grenade_wait_timeMAX", 0.9)));
		var_d9346487--;
		if(RandomInt(100) > chance)
		{
			continue;
		}
		var_f51eccb0 = level.cybercom.immolation.grenadeTypes[RandomInt(level.cybercom.immolation.grenadeTypes.size)];
		/#
		#/
		if(isdefined(guy))
		{
			loc = guy function_ed100874();
			if(!isdefined(loc))
			{
				loc = guy.origin + VectorScale((0, 0, 1), 50);
			}
		}
		if(isdefined(loc))
		{
			grenade = self MagicGrenadeType(GetWeapon(var_f51eccb0), loc, (0, 0, 0), 0.05);
			grenade thread function_2905cb0a();
		}
	}
}

/*
	Name: function_2905cb0a
	Namespace: namespace_a56eec64
	Checksum: 0xF6DD4892
	Offset: 0x2538
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_2905cb0a()
{
	self util::waittill_any_timeout(3, "death", "detonated");
	if(isdefined(self))
	{
		self delete();
	}
}

/*
	Name: function_e531a31b
	Namespace: namespace_a56eec64
	Checksum: 0x5530DABA
	Offset: 0x2590
	Size: 0x1B1
	Parameters: 2
	Flags: Private
*/
function private function_e531a31b(player, RangeMax)
{
	weapon = GetWeapon("gadget_immolation");
	enemies = ArrayCombine(GetAISpeciesArray("axis", "robot"), GetAISpeciesArray("team3", "robot"), 0, 0);
	closeTargets = ArraySortClosest(enemies, self.origin, enemies.size, 0, RangeMax);
	foreach(guy in closeTargets)
	{
		if(player cybercom::function_7a7d1608(guy, weapon))
		{
			if(isdefined(guy.var_2557be09) && guy.var_2557be09)
			{
				continue;
			}
			guy.var_2557be09 = 1;
			player thread function_843196fe(guy);
		}
	}
}

/*
	Name: function_5a760e8b
	Namespace: namespace_a56eec64
	Checksum: 0x7A5F22C4
	Offset: 0x2750
	Size: 0x1F9
	Parameters: 2
	Flags: None
*/
function function_5a760e8b(attacker, upgraded)
{
	weapon = GetWeapon("gadget_immolation");
	targets = _get_valid_targets();
	var_5b8b9202 = 0;
	closeTargets = ArraySortClosest(targets, self.origin, 666, 0, GetDvarInt("scr_immolation_radius", 150));
	foreach(guy in closeTargets)
	{
		if(guy == self)
		{
			continue;
		}
		if(isdefined(attacker.var_a691a602))
		{
			if(attacker.var_a691a602 >= 2)
			{
				break;
			}
		}
		if(attacker cybercom::function_7a7d1608(guy, weapon))
		{
			if(!isdefined(attacker.var_a691a602))
			{
				attacker thread function_4f174738();
			}
			else
			{
				attacker.var_a691a602++;
			}
			if(isVehicle(guy))
			{
				continue;
			}
			guy thread function_9e65a7de(attacker, upgraded, 1, weapon);
		}
	}
}

/*
	Name: function_ed100874
	Namespace: namespace_a56eec64
	Checksum: 0x24DD27FD
	Offset: 0x2958
	Size: 0xB1
	Parameters: 0
	Flags: Private
*/
function private function_ed100874()
{
	if(isdefined(self.archetype) && self.archetype == "human")
	{
		return self GetTagOrigin("tag_weapon_chest");
	}
	tag = level.cybercom.immolation.var_d4d82e00[RandomInt(level.cybercom.immolation.var_d4d82e00.size)];
	return self GetTagOrigin(tag);
}

/*
	Name: function_9eebfb7
	Namespace: namespace_a56eec64
	Checksum: 0x41E07C47
	Offset: 0x2A18
	Size: 0x2D9
	Parameters: 3
	Flags: None
*/
function function_9eebfb7(target, var_9bc2efcb, upgraded)
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
	weapon = GetWeapon("gadget_immolation");
	foreach(guy in validTargets)
	{
		if(!self cybercom::function_7a7d1608(guy, weapon))
		{
			continue;
		}
		guy thread function_9e65a7de(self, upgraded, 0, GetWeapon("gadget_immolation"));
		wait(0.05);
	}
}

/*
	Name: function_4f174738
	Namespace: namespace_a56eec64
	Checksum: 0xA42170D5
	Offset: 0x2D00
	Size: 0x25
	Parameters: 0
	Flags: None
*/
function function_4f174738()
{
	self endon("death");
	self.var_a691a602 = 0;
	wait(2);
	self.var_a691a602 = undefined;
}

