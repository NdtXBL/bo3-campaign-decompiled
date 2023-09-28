#using scripts\codescripts\struct;
#using scripts\shared\ai_shared;
#using scripts\shared\ai_sniper_shared;
#using scripts\shared\array_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\stealth;
#using scripts\shared\stealth_actor;
#using scripts\shared\stealth_aware;
#using scripts\shared\stealth_debug;
#using scripts\shared\stealth_player;
#using scripts\shared\stealth_vo;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_ad45a419;

/*
	Name: init
	Namespace: namespace_ad45a419
	Checksum: 0xB976633A
	Offset: 0x3C0
	Size: 0x39B
	Parameters: 0
	Flags: None
*/
function init()
{
	/#
		Assert(!isdefined(self.stealth));
	#/
	if(!isdefined(self.stealth))
	{
		self.stealth = spawnstruct();
	}
	self.stealth.var_3206367b = 1;
	self.stealth.enemies = [];
	self.stealth.var_21c68c49 = [];
	self.stealth.var_21c68c49["unaware"] = 0;
	self.stealth.var_21c68c49["low_alert"] = 1;
	self.stealth.var_21c68c49["high_alert"] = 1;
	self.stealth.var_21c68c49["combat"] = 2;
	level flag::init("stealth_alert", 0);
	level flag::init("stealth_combat", 0);
	level flag::init("stealth_discovered", 0);
	function_cc5cb8a3();
	spawner::add_global_spawn_function("axis", &stealth::agent_init);
	self namespace_234a4910::init();
	self thread function_7bf2f7ba();
	self thread function_3cc2fee1();
	self thread function_a3cf57bf();
	self thread function_f8b0594a();
	self thread function_51871991();
	self thread function_945a718();
	/#
		self namespace_e449108e::function_148c43f();
	#/
	level.using_awareness = 1;
	SetDvar("ai_stumbleSightRange", 200);
	SetDvar("ai_awarenessenabled", 1);
	SetDvar("stealth_display", 0);
	SetDvar("stealth_audio", 1);
	if(GetDvarString("stealth_indicator") == "")
	{
		SetDvar("stealth_indicator", 0);
	}
	SetDvar("stealth_group_radius", 1000);
	SetDvar("stealth_all_aware", 1);
	SetDvar("stealth_no_return", 1);
	SetDvar("stealth_events", "sentientevents_vengeance_default");
}

/*
	Name: stop
	Namespace: namespace_ad45a419
	Checksum: 0xE32EDAD7
	Offset: 0x768
	Size: 0x141
	Parameters: 0
	Flags: None
*/
function stop()
{
	spawner::remove_global_spawn_function("axis", &stealth::agent_init);
	level.using_awareness = 0;
	SetDvar("ai_stumbleSightRange", 0);
	SetDvar("ai_awarenessenabled", 0);
	if(isdefined(level.stealth.music_ent))
	{
		foreach(ent in level.stealth.music_ent)
		{
			ent StopLoopSound(1);
			ent util::deleteAfterTime(1.5);
		}
		level.stealth.music_ent = undefined;
	}
}

/*
	Name: reset
	Namespace: namespace_ad45a419
	Checksum: 0x324C4859
	Offset: 0x8B8
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function reset()
{
	level flag::clear("stealth_alert");
	level flag::clear("stealth_combat");
	level flag::clear("stealth_discovered");
	self thread function_f8b0594a();
}

/*
	Name: enabled
	Namespace: namespace_ad45a419
	Checksum: 0x751511A5
	Offset: 0x940
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function enabled()
{
	return isdefined(self.stealth) && isdefined(self.stealth.var_3206367b);
}

/*
	Name: function_cc5cb8a3
	Namespace: namespace_ad45a419
	Checksum: 0x4874FA84
	Offset: 0x968
	Size: 0x3FB
	Parameters: 0
	Flags: None
*/
function function_cc5cb8a3()
{
	/#
		Assert(self enabled());
	#/
	if(!isdefined(self.stealth.parm))
	{
		self.stealth.parm = spawnstruct();
	}
	self.stealth.parm.awareness["unaware"] = spawnstruct();
	self.stealth.parm.awareness["low_alert"] = spawnstruct();
	self.stealth.parm.awareness["high_alert"] = spawnstruct();
	self.stealth.parm.awareness["combat"] = spawnstruct();
	vals = self.stealth.parm.awareness["unaware"];
	vals.fovcosine = cos(45);
	vals.var_304f0f57 = cos(10);
	vals.var_24eff8a4 = 600;
	function_11266e67("unaware", 4, 0.5, 5, 100, 600, 0);
	vals = self.stealth.parm.awareness["low_alert"];
	vals.fovcosine = cos(60);
	vals.var_304f0f57 = cos(20);
	vals.var_24eff8a4 = 800;
	function_11266e67("low_alert", 0, 0, 1, 100, 800, 0);
	vals = self.stealth.parm.awareness["high_alert"];
	vals.fovcosine = cos(60);
	vals.var_304f0f57 = cos(20);
	vals.var_24eff8a4 = 1000;
	function_11266e67("high_alert", 16, 0.25, 4, 100, 1000, 0);
	vals = self.stealth.parm.awareness["combat"];
	vals.fovcosine = 0;
	vals.var_304f0f57 = 0;
	vals.var_24eff8a4 = 8192;
	function_11266e67("combat", 32, 0.01, 0.01, 100, 1500, 1);
}

/*
	Name: function_b3269823
	Namespace: namespace_ad45a419
	Checksum: 0xD5D10691
	Offset: 0xD70
	Size: 0x47
	Parameters: 1
	Flags: None
*/
function function_b3269823(var_5a51d1)
{
	/#
		Assert(isdefined(level.stealth));
	#/
	return level.stealth.parm.awareness[var_5a51d1];
}

/*
	Name: function_7bf2f7ba
	Namespace: namespace_ad45a419
	Checksum: 0xD9733856
	Offset: 0xDC0
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_7bf2f7ba()
{
	Array::thread_all(GetEntArray("_stealth_shadow", "targetname"), &stealth_shadow_volumes);
	Array::thread_all(GetEntArray("stealth_shadow", "targetname"), &stealth_shadow_volumes);
}

/*
	Name: stealth_shadow_volumes
	Namespace: namespace_ad45a419
	Checksum: 0x72C7ABBC
	Offset: 0xE50
	Size: 0xAF
	Parameters: 0
	Flags: None
*/
function stealth_shadow_volumes()
{
	self endon("death");
	while(1)
	{
		self waittill("trigger", other);
		if(!isalive(other))
		{
			continue;
		}
		if(!isdefined(other.stealth) || (isdefined(other.stealth.var_325b070f) && other.stealth.var_325b070f))
		{
			continue;
		}
		other thread function_9f3c4fa(self);
	}
}

/*
	Name: function_9f3c4fa
	Namespace: namespace_ad45a419
	Checksum: 0x1E8D875C
	Offset: 0xF08
	Size: 0x7F
	Parameters: 1
	Flags: None
*/
function function_9f3c4fa(volume)
{
	self endon("death");
	if(!isdefined(self.stealth))
	{
		return;
	}
	self.stealth.var_325b070f = 1;
	while(isdefined(volume) && self istouching(volume))
	{
		wait(0.05);
	}
	self.stealth.var_325b070f = 0;
}

/*
	Name: function_3cc2fee1
	Namespace: namespace_ad45a419
	Checksum: 0x513C5EEA
	Offset: 0xF90
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_3cc2fee1()
{
	/#
		Assert(self enabled());
	#/
	self endon("hash_94ff6d85");
	while(1)
	{
		self function_c66a9b53();
		var_f5f40c = GetDvarString("stealth_events");
		if(var_f5f40c != "" && (!isdefined(level.var_1e44252f) || level.var_1e44252f != var_f5f40c))
		{
			function_2a400f9d(var_f5f40c);
		}
		level.var_1e44252f = var_f5f40c;
		wait(0.25);
	}
}

/*
	Name: function_c66a9b53
	Namespace: namespace_ad45a419
	Checksum: 0x1C0C85B2
	Offset: 0x1070
	Size: 0x79B
	Parameters: 0
	Flags: None
*/
function function_c66a9b53()
{
	/#
		Assert(self enabled());
	#/
	self.stealth.enemies["axis"] = [];
	self.stealth.enemies["allies"] = [];
	self.stealth.seek = [];
	var_d47e142e = GetPlayers();
	ailist = GetAIArray();
	foreach(player in var_d47e142e)
	{
		if(!isdefined(player.stealth))
		{
			player stealth::agent_init();
		}
		if(isdefined(player.ignoreme) && player.ignoreme)
		{
			continue;
		}
		if(player.team == "allies")
		{
			self.stealth.enemies["axis"][player GetEntityNumber()] = player;
		}
		player namespace_10443be6::function_b9393d6c("high_alert");
		player.stealth.var_4ea02c94 = 0;
	}
	var_c750f946 = 0;
	level.var_354c1bca = 0;
	level.stealth.var_e7ad9c1f = 0;
	foreach(ai in ailist)
	{
		if(isdefined(ai.ignoreme) && ai.ignoreme)
		{
			continue;
		}
		entnum = ai GetEntityNumber();
		counted = 0;
		if(isalive(ai) && ai namespace_80045451::enabled() && (!isdefined(ai.silenced) && ai.silenced))
		{
			var_96b139a9 = IsActor(ai) && ai_sniper::is_firing(ai) && isdefined(ai.var_9eb700da) && isPlayer(ai.var_9eb700da.var_8722cfb);
			if(!isdefined(ai.ignoreall) && ai.ignoreall && ai namespace_80045451::function_739525d() != "unaware")
			{
				var_c750f946 = var_c750f946 + 1;
			}
			if(ai namespace_80045451::function_739525d() == "combat" || var_96b139a9)
			{
				if(var_96b139a9)
				{
					ai.stealth.var_d1b49f30[ai.var_9eb700da.var_8722cfb GetEntityNumber()] = ai.var_9eb700da.var_8722cfb;
				}
				counted = 0;
				if(isdefined(ai.stealth.var_d1b49f30))
				{
					foreach(combatant in ai.stealth.var_d1b49f30)
					{
						if(!isalive(combatant))
						{
							continue;
						}
						var_146dd427 = combatant GetEntityNumber();
						if(!isdefined(self.stealth.seek[var_146dd427]))
						{
							self.stealth.seek[var_146dd427] = combatant;
						}
						if(isPlayer(combatant))
						{
							if(!counted && (!isdefined(ai.ignoreall) && ai.ignoreall))
							{
								level.var_354c1bca = level.var_354c1bca + 1;
								counted = 1;
							}
							combatant namespace_10443be6::function_b9393d6c("combat");
							if(!combatant.stealth.var_4ea02c94)
							{
								level.stealth.var_e7ad9c1f++;
							}
							combatant.stealth.var_4ea02c94 = 1;
						}
					}
				}
			}
		}
		else if(ai.team == "allies")
		{
			self.stealth.enemies["axis"][entnum] = ai;
			continue;
		}
		if(ai.team == "axis")
		{
			self.stealth.enemies["allies"][entnum] = ai;
		}
	}
	if(var_c750f946 > 0)
	{
		level flag::set("stealth_alert");
	}
	else
	{
		level flag::clear("stealth_alert");
	}
	if(level.var_354c1bca > 0)
	{
		level flag::set("stealth_combat");
	}
	else
	{
		level flag::clear("stealth_combat");
	}
}

/*
	Name: function_a3cf57bf
	Namespace: namespace_ad45a419
	Checksum: 0x4614A380
	Offset: 0x1818
	Size: 0x11F
	Parameters: 0
	Flags: None
*/
function function_a3cf57bf()
{
	self endon("hash_94ff6d85");
	grace_period = 6;
	while(1)
	{
		level flag::wait_till("stealth_combat");
		if(level.stealth.var_e7ad9c1f == 0)
		{
			wait(0.05);
			continue;
		}
		level.stealth.var_30d9fcc6 = 1;
		wait(grace_period);
		level.stealth.var_30d9fcc6 = 0;
		if(flag::get("stealth_combat"))
		{
			level flag::set("stealth_discovered");
			thread function_959a64c9();
		}
		level flag::wait_till_clear("stealth_combat");
		if(isdefined(level.var_354c1bca))
		{
			level.var_354c1bca = 0;
		}
	}
}

/*
	Name: function_f8b0594a
	Namespace: namespace_ad45a419
	Checksum: 0xCDAF5BEE
	Offset: 0x1940
	Size: 0x25F
	Parameters: 0
	Flags: None
*/
function function_f8b0594a()
{
System.InvalidOperationException: Stack empty.
   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Stack`1.Pop()
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.⁬‬​⁯‏‬‪⁬‪‌‌​‪‭‬‮‪‏⁮‌⁫‬⁫⁪‌⁭​⁮⁪⁮‫⁬⁫‮‏‪⁫⁪‎‪‮(ScriptOp )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‮​⁬⁭⁮‍‏‏‫‎‭‫⁮‪‮⁭‮⁬​‌⁯‮⁭‬​‪⁭‍‏‪⁪‎⁭⁭‌⁪‌‭​⁯‮(ScriptOp , ‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: function_959a64c9
	Namespace: namespace_ad45a419
	Checksum: 0xA1F9BE49
	Offset: 0x1BA8
	Size: 0x281
	Parameters: 0
	Flags: None
*/
function function_959a64c9()
{
	self notify("hash_959a64c9");
	self endon("hash_959a64c9");
	if(GetDvarInt("stealth_no_return"))
	{
		enemies = GetAITeamArray("axis");
		foreach(enemy in enemies)
		{
			if(!isalive(enemy))
			{
				continue;
			}
			if(isdefined(enemy.stealth))
			{
				enemy notify("hash_959a64c9");
				enemy notify("alert", "combat", enemy.origin, undefined, "wake_all");
				enemy stealth::stop();
			}
			foreach(player in level.activePlayers)
			{
				enemy GetPerfectInfo(player, 1);
			}
			enemy StopAnimScripted();
			if(isdefined(enemy.patroller) && enemy.patroller)
			{
				enemy ai::end_and_clean_patrol_behaviors();
			}
			enemy ai_sniper::actor_lase_stop();
			if(IsActor(enemy))
			{
				enemy thread namespace_aec89ff8::function_1064f733();
			}
			wait(0.25);
		}
	}
}

/*
	Name: function_51871991
	Namespace: namespace_ad45a419
	Checksum: 0x262D9CA
	Offset: 0x1E38
	Size: 0xE7
	Parameters: 0
	Flags: None
*/
function function_51871991()
{
	self endon("hash_94ff6d85");
	stealth::function_862e861f();
	while(1)
	{
		if(!level flag::get("stealth_discovered"))
		{
			if(level flag::get("stealth_combat"))
			{
				stealth::function_e0319e51("combat");
			}
			else if(level flag::get("stealth_alert"))
			{
				stealth::function_e0319e51("high_alert");
			}
			else
			{
				stealth::function_e0319e51("unaware");
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_945a718
	Namespace: namespace_ad45a419
	Checksum: 0xC9E92EA9
	Offset: 0x1F28
	Size: 0x2D9
	Parameters: 0
	Flags: None
*/
function function_945a718()
{
	wait(0.05);
	var_e3fe91b2 = struct::get_array("stealth_callout", "targetname");
	foreach(ent in var_e3fe91b2)
	{
		ent namespace_234a4910::function_4970c8b8(ent.script_parameters);
	}
	var_e3fe91b2 = struct::get_array("stealth_callout", "script_noteworthy");
	foreach(ent in var_e3fe91b2)
	{
		ent namespace_234a4910::function_4970c8b8(ent.script_parameters);
	}
	var_e3fe91b2 = GetEntArray("stealth_callout", "targetname");
	foreach(ent in var_e3fe91b2)
	{
		ent namespace_234a4910::function_4970c8b8(ent.script_parameters);
	}
	var_e3fe91b2 = GetEntArray("stealth_callout", "script_noteworthy");
	foreach(ent in var_e3fe91b2)
	{
		ent namespace_234a4910::function_4970c8b8(ent.script_parameters);
	}
}

