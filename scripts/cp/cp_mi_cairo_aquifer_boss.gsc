#using scripts\codescripts\struct;
#using scripts\cp\_debug;
#using scripts\cp\_dialog;
#using scripts\cp\_hacking;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_aquifer;
#using scripts\cp\cp_mi_cairo_aquifer_interior;
#using scripts\cp\cp_mi_cairo_aquifer_objectives;
#using scripts\cp\cp_mi_cairo_aquifer_sound;
#using scripts\cp\cp_mi_cairo_aquifer_utility;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\systems\ai_interface;
#using scripts\shared\ai\systems\debug;
#using scripts\shared\ai_shared;
#using scripts\shared\ai_sniper_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_cac6a05e;

/*
	Name: start_boss
	Namespace: namespace_cac6a05e
	Checksum: 0x35061E4E
	Offset: 0xD28
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function start_boss()
{
	thread function_510d0407();
	level flag::wait_till("start_battle");
	thread function_5358c20("hendricks");
	thread function_a54075c1();
}

/*
	Name: function_5f8efef1
	Namespace: namespace_cac6a05e
	Checksum: 0xDDD00107
	Offset: 0xD90
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function function_5f8efef1(ent)
{
	ent endon("death");
	while(!level flag::get("end_battle"))
	{
		offset = VectorScale((0, 0, 1), 60);
		var_a0cd0871 = "defend";
		if(isdefined(ent._laststand) && ent._laststand)
		{
			offset = VectorScale((0, 0, 1), 30);
			var_a0cd0871 = "return";
		}
		level.var_5aa7773 = objectives::function_fe46cd6(var_a0cd0871, "ally_defend", ent.origin + offset);
		wait(0.05);
	}
	level.var_5aa7773 objectives::function_ac28ba8e();
}

/*
	Name: function_5358c20
	Namespace: namespace_cac6a05e
	Checksum: 0xDD93B2F0
	Offset: 0xEA8
	Size: 0xD3
	Parameters: 1
	Flags: None
*/
function function_5358c20(name)
{
	guy = level.var_24223342;
	level.var_a6529009 = guy;
	level.var_8781baf = 0;
	guy.var_be1d7b0d = 0;
	guy util::magic_bullet_shield();
	ai::CreateInterfaceForEntity(guy);
	guy ai::set_behavior_attribute("sprint", 1);
	level.var_24223342 battlechatter::function_d9f49fba(1);
	thread function_567a5fa();
	thread function_7a57d63a();
}

/*
	Name: function_5dd0c951
	Namespace: namespace_cac6a05e
	Checksum: 0xA5EFC958
	Offset: 0xF88
	Size: 0x55
	Parameters: 1
	Flags: None
*/
function function_5dd0c951(ARR)
{
	for(i = 0; i < ARR.size; i++)
	{
		level.var_a6529009 function_519d76bc(ARR, i);
	}
}

/*
	Name: function_519d76bc
	Namespace: namespace_cac6a05e
	Checksum: 0xE1526964
	Offset: 0xFE8
	Size: 0x55
	Parameters: 2
	Flags: None
*/
function function_519d76bc(Array, num)
{
	self dialog::say(Array[num]);
	num++;
	if(num >= Array.size)
	{
		num = 0;
	}
	return num;
}

/*
	Name: function_f9d87307
	Namespace: namespace_cac6a05e
	Checksum: 0xC4556447
	Offset: 0x1048
	Size: 0xEB
	Parameters: 1
	Flags: None
*/
function function_f9d87307(name)
{
	var_52aea43b = struct::get(name, "targetname");
	points = [];
	start = var_52aea43b;
	while(isdefined(var_52aea43b))
	{
		points[points.size] = var_52aea43b.origin;
		if(!isdefined(var_52aea43b.target))
		{
			break;
		}
		var_52aea43b = struct::get(var_52aea43b.target, "targetname");
		if(isdefined(var_52aea43b) && var_52aea43b == start)
		{
			break;
		}
	}
	level.var_a86d0056 = points;
}

/*
	Name: function_7c54d87d
	Namespace: namespace_cac6a05e
	Checksum: 0x14D9780E
	Offset: 0x1140
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_7c54d87d()
{
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	self thread ai_sniper::actor_lase_points_behavior(level.var_a86d0056);
}

/*
	Name: function_a54075c1
	Namespace: namespace_cac6a05e
	Checksum: 0x2BA7F72E
	Offset: 0x11A0
	Size: 0x82F
	Parameters: 0
	Flags: None
*/
function function_a54075c1()
{
	level endon("start_finale");
	var_9024513d = [];
	var_9024513d[0] = "hend_we_ve_got_company_0";
	var_9024513d[1] = "hend_tangoes_on_the_floor_0";
	var_9024513d[2] = "hend_more_enemies_inbound_0";
	var_9024513d[3] = "hend_heads_up_more_tango_0";
	var_9024513d[4] = "hend_watch_those_doors_0";
	var_2a935cb6 = 0;
	level.turret = GetEnt("veh_turret", "targetname");
	level.turret setmaxhealth(9999);
	level.turret vehicle::god_on();
	level.var_2839b910 = spawner::simple_spawn_single("hyperion");
	level.var_2839b910 util::magic_bullet_shield();
	level.var_2839b910 cybercom::function_58c312f2();
	level.var_2839b910 ai::set_ignoreall(1);
	level.var_2839b910 DisableAimAssist();
	level.var_2839b910 notsolid();
	level.var_2839b910.var_dfa3c2cb = 2;
	level.var_2839b910.baseAccuracy = 9999;
	level.var_2839b910.accuracy = 1;
	level.var_2839b910 ai::disable_pain();
	level.var_6447d0d2 = 0;
	level.var_c987bca = 0;
	level.var_2839b910.var_dfa3c2cb = 0;
	level.var_2839b910.var_815502c4 = 1;
	level.var_2839b910.var_26c21ea3 = 10;
	level.var_2839b910.var_65de9253 = 0;
	level.var_7d7334f = [];
	level flag::set("sniper_boss_spawned");
	thread function_6800ac1d();
	thread function_80b6b7eb();
	level.var_ed93c81c = [];
	level.var_ed93c81c[0] = Array("sniper_spot_1_1");
	level.var_b8219f59 = Array("wave_a", "wave_b", "wave_c");
	level.var_f1ee7b0e = 0;
	level.var_d56cb109 = -1;
	var_a4d5f340 = 7;
	level.var_8f1f476d = "wave_a";
	new_spot = 0;
	level.var_2839b910 show();
	level.turret turret::enable_laser(1, 0);
	level.var_c987bca = 1;
	level.var_2839b910 function_479d0795(level.var_2839b910.origin);
	wait(2);
	var_66ab2260 = GetEntArray("1st_barrel", "script_noteworthy");
	foreach(sm in var_66ab2260)
	{
		if(sm.targetname == "destructible")
		{
			shootme = sm;
			continue;
		}
	}
	if(isdefined(shootme))
	{
		level.var_2839b910.var_9eb700da notify("target_lase_transition");
		level.var_2839b910.var_9eb700da thread ai_sniper::target_lase_override(level.var_2839b910 GetEye(), shootme, 1, level.var_2839b910, 1, 0);
		thread function_60e39f29(shootme);
		shootme waittill("broken");
		level.var_2839b910.var_9eb700da notify("target_lase_override");
		level.var_2839b910.var_9eb700da.var_8722cfb = undefined;
		exploder::exploder("bossceiling_smk_level1");
		exploder::exploder("lighting_turbine_boss_03");
		level.var_2839b910 ai_sniper::actor_lase_stop();
		wait(0.05);
	}
	function_e9aa8887();
	thread function_6ea369f7();
	reset = 1;
	while(!level flag::get("end_battle"))
	{
		if(new_spot)
		{
			switch(level.var_f1ee7b0e)
			{
				case 1:
				{
					break;
				}
				case 2:
				{
					break;
				}
				case 3:
				{
					guys = GetAITeamArray("axis");
					VOL = GetEnt("boss_end_vol", "targetname");
					foreach(guy in guys)
					{
						guy setgoalvolume(VOL);
					}
					break;
				}
			}
			new_spot = 0;
		}
		event = level.var_2839b910 util::waittill_any_timeout(var_a4d5f340, "sniper_suppressed", "sniper_disabled", "fire");
		if(event == "fire")
		{
			foreach(player in level.players)
			{
				player playsoundtoplayer("prj_crack", player);
			}
			reset = function_329f82a0();
		}
		else
		{
			reset = 0;
		}
	}
}

/*
	Name: function_60e39f29
	Namespace: namespace_cac6a05e
	Checksum: 0xE0C6E4C0
	Offset: 0x19D8
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_60e39f29(shootme)
{
	level.var_2839b910 waittill("fire");
	shootme kill(level.var_2839b910.origin, level.var_2839b910);
}

/*
	Name: function_479d0795
	Namespace: namespace_cac6a05e
	Checksum: 0x76660800
	Offset: 0x1A30
	Size: 0xFB
	Parameters: 1
	Flags: None
*/
function function_479d0795(var_81c506ec)
{
	if(!isdefined(self.var_9eb700da))
	{
		self.var_9eb700da = spawn("script_model", var_81c506ec);
		self.var_9eb700da SetModel("tag_origin");
		self.var_9eb700da.velocity = VectorScale((1, 0, 0), 100);
		self thread util::delete_on_death(self.var_9eb700da);
	}
	if(self.var_9eb700da.health <= 0)
	{
		self.var_9eb700da.health = 1;
	}
	self thread ai::shoot_at_target("shoot_until_target_dead", self.var_9eb700da);
	self.holdFire = 0;
	self.var_578b3075 = 1;
}

/*
	Name: function_e9aa8887
	Namespace: namespace_cac6a05e
	Checksum: 0x6879D669
	Offset: 0x1B38
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_e9aa8887()
{
	level.var_d56cb109++;
	spots = function_f1889e69();
	if(level.var_d56cb109 >= spots.size)
	{
		level.var_d56cb109 = 0;
	}
	loc = GetNode(spots[level.var_d56cb109], "targetname");
	level.var_1d4f0308 = loc;
	level.var_2839b910 ForceTeleport(loc.origin, loc.angles);
	if(isdefined(loc.target))
	{
		function_f9d87307(loc.target);
	}
	level.var_2839b910 thread function_7c54d87d();
}

/*
	Name: function_f1889e69
	Namespace: namespace_cac6a05e
	Checksum: 0xE0006FDF
	Offset: 0x1C40
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_f1889e69()
{
	return level.var_ed93c81c[level.var_f1ee7b0e];
}

/*
	Name: function_c0010c33
	Namespace: namespace_cac6a05e
	Checksum: 0x2297AD1B
	Offset: 0x1C60
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_c0010c33()
{
	targets = GetAITeamArray("axis");
	new_targets = [];
	foreach(target in targets)
	{
		if(isai(target) && !isVehicle(target))
		{
			new_targets[new_targets.size] = target;
		}
	}
	return new_targets;
}

/*
	Name: function_2e7e3fc7
	Namespace: namespace_cac6a05e
	Checksum: 0x8A22405C
	Offset: 0x1D58
	Size: 0x145
	Parameters: 1
	Flags: None
*/
function function_2e7e3fc7(origin)
{
	targets = util::get_all_alive_players_s();
	targets = targets.a;
	var_edaf6251 = [];
	foreach(player in targets)
	{
		if(SightTracePassed(origin, player GetTagOrigin("tag_eye"), 1, level.turret))
		{
			var_edaf6251[var_edaf6251.size] = player;
		}
	}
	if(var_edaf6251.size > 0)
	{
		var_af0b4dbf = randomIntRange(0, var_edaf6251.size);
		return var_edaf6251[var_af0b4dbf];
	}
	return undefined;
}

/*
	Name: function_5e9e2b2e
	Namespace: namespace_cac6a05e
	Checksum: 0x41C56035
	Offset: 0x1EA8
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_5e9e2b2e()
{
	loc = RandomInt(level.var_a40b1280.size);
	var_7b1be7eb = level.var_a40b1280[loc];
	if(!isdefined(level.var_5f912d03) || var_7b1be7eb == level.var_5f912d03)
	{
		loc = loc + 1;
		if(loc >= level.var_a40b1280.size)
		{
			loc = 0;
		}
	}
	function_eea4755(loc);
}

/*
	Name: function_eea4755
	Namespace: namespace_cac6a05e
	Checksum: 0x1A5F6F03
	Offset: 0x1F60
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function function_eea4755(index)
{
	level notify("hash_7bb65964");
	level.var_cc1cd7bc = level.var_a6529009;
	level.var_b9c6c6b1 = undefined;
	if(index >= 0 && index < level.var_a40b1280.size)
	{
		level.var_5f912d03 = level.var_a40b1280[index];
		level.var_19a4e0ef = GetEnt(level.var_5f912d03.target, "targetname");
		level.turret.origin = level.var_5f912d03.origin - VectorScale((0, 0, 1), 32);
		if(!isdefined(level.var_19a4e0ef))
		{
			/#
				ASSERTMSG("Dev Block strings are not supported");
			#/
		}
	}
}

/*
	Name: function_e4623bda
	Namespace: namespace_cac6a05e
	Checksum: 0x82DF51DE
	Offset: 0x2060
	Size: 0x29
	Parameters: 1
	Flags: None
*/
function function_e4623bda(duration)
{
	level endon("hash_2b459237");
	wait(duration);
	level notify("hash_602b2f5b");
}

/*
	Name: function_38600307
	Namespace: namespace_cac6a05e
	Checksum: 0xC25F76A
	Offset: 0x2098
	Size: 0x39
	Parameters: 0
	Flags: None
*/
function function_38600307()
{
	level endon("hash_2b459237");
	level endon("hash_7bb65964");
	level.var_19a4e0ef waittill("damage");
	level notify("hash_2b459237");
}

/*
	Name: function_6485b136
	Namespace: namespace_cac6a05e
	Checksum: 0x3EFFBB83
	Offset: 0x20E0
	Size: 0x10D
	Parameters: 2
	Flags: None
*/
function function_6485b136(player, delay)
{
	if(!isdefined(delay))
	{
		delay = 0;
	}
	if(!level.var_2839b910.var_65de9253 && (!isdefined(level.var_2839b910.player_target) || level.var_2839b910.player_target != player))
	{
		var_833c5770 = level.var_2839b910.var_dfa3c2cb;
		level.var_2839b910.var_dfa3c2cb = delay;
		level.var_2839b910.var_9eb700da ai_sniper::target_lase_override(level.var_2839b910 GetEye(), player, 1, level.var_2839b910, 1, 0);
		level.var_2839b910.var_dfa3c2cb = var_833c5770;
		level.var_2839b910.player_target = undefined;
	}
}

/*
	Name: function_fe242426
	Namespace: namespace_cac6a05e
	Checksum: 0x3C3B2C59
	Offset: 0x21F8
	Size: 0x57
	Parameters: 0
	Flags: None
*/
function function_fe242426()
{
	while(1)
	{
		debug::debug_sphere(level.var_2839b910.var_9eb700da.origin, 20, VectorScale((1, 0, 1), 255), 10, 10);
		wait(0.1);
	}
}

/*
	Name: get_players_touching
	Namespace: namespace_cac6a05e
	Checksum: 0x1BA74D10
	Offset: 0x2258
	Size: 0xD9
	Parameters: 1
	Flags: None
*/
function get_players_touching(trigger)
{
	touchers = [];
	players = GetPlayers();
	foreach(player in players)
	{
		if(player istouching(trigger))
		{
			touchers[touchers.size] = player;
		}
	}
	return touchers;
}

/*
	Name: function_2dcd0b86
	Namespace: namespace_cac6a05e
	Checksum: 0x329ED654
	Offset: 0x2340
	Size: 0x43
	Parameters: 4
	Flags: None
*/
function function_2dcd0b86(fromPoint, toPoint, color, durationFrames)
{
	as_debug::drawDebugLineInternal(fromPoint, toPoint, color, durationFrames);
}

/*
	Name: function_c5ba7a9b
	Namespace: namespace_cac6a05e
	Checksum: 0x12F6FCC4
	Offset: 0x2390
	Size: 0x45
	Parameters: 2
	Flags: None
*/
function function_c5ba7a9b(e1, e2)
{
	a = [];
	a[0] = e1;
	a[1] = e2;
	return a;
}

/*
	Name: function_ab171381
	Namespace: namespace_cac6a05e
	Checksum: 0xDC5C8742
	Offset: 0x23E0
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_ab171381()
{
	exploder::exploder("lighting_turbine_boss_emergency");
	level.var_24223342 dialog::say("hend_that_should_do_it_0");
	thread function_c3af0181();
	level flag::set("boss_finale_ready");
	trig = GetEnt("boss_finale_trigger", "targetname");
	trig TriggerEnable(1);
	trig.var_611ccff1 = util::function_14518e76(trig, &"cp_level_aquifer_capture_door", &"CP_MI_CAIRO_AQUIFER_BREACH", &function_479374a3);
	trig.var_611ccff1 gameobjects::set_use_time(0.35);
	level waittill("start_finale");
	trig.var_611ccff1 gameobjects::disable_object();
	trig TriggerEnable(0);
}

/*
	Name: function_479374a3
	Namespace: namespace_cac6a05e
	Checksum: 0xE2732C65
	Offset: 0x2540
	Size: 0x533
	Parameters: 0
	Flags: None
*/
function function_479374a3()
{
	util::function_d8eaed3d(10);
	namespace_84eb777e::function_5ec99c19("cp_level_aquifer_boss");
	level notify("start_finale");
	level.var_2839b910 show();
	level.var_2839b910 util::stop_magic_bullet_shield();
	guys = GetAITeamArray("axis");
	guys = Array::exclude(guys, Array(level.var_2839b910));
	if(isdefined(level.BZM_ForceAICleanup))
	{
		[[level.BZM_ForceAICleanup]]();
	}
	Array::thread_all(guys, &namespace_786319bb::delete_me);
	struct = GetEnt("hyperion_death_origin", "targetname");
	if(isdefined(level.BZM_AQUIFERDialogue6Callback))
	{
		level thread [[level.BZM_AQUIFERDialogue6Callback]]();
	}
	ent = GetEnt("control_window_shatter_01", "targetname");
	if(isdefined(ent))
	{
		ent Hide();
	}
	door = GetEnt("boss_hideaway_door", "targetname");
	level thread namespace_71a63eac::function_e0e00797();
	a_ents = [];
	if(!isdefined(a_ents))
	{
		a_ents = [];
	}
	else if(!IsArray(a_ents))
	{
		a_ents = Array(a_ents);
	}
	a_ents[a_ents.size] = self.trigger.who;
	a_ents["hyperion"] = level.var_2839b910;
	scene::add_scene_func("cin_aqu_07_01_maretti_1st_dropit", &function_f3ee81ce, "skip_started");
	struct scene::Play("cin_aqu_07_01_maretti_1st_dropit", a_ents);
	namespace_786319bb::function_2085bf94("boss_death_models", 1);
	thread function_2a39915e();
	level util::clientNotify("start_boss_tree");
	exploder::exploder("lgt_tree_glow_01");
	if(!level flag::get("sniper_boss_skipped"))
	{
		Array::thread_all(level.activePlayers, &namespace_786319bb::function_89eaa1b3, 0.5);
	}
	if(isdefined(level.BZM_ForceAICleanup))
	{
		[[level.BZM_ForceAICleanup]]();
	}
	struct scene::Play("cin_aqu_05_20_boss_3rd_death_sh010", level.var_2839b910);
	if(isdefined(level.BZM_ForceAICleanup))
	{
		[[level.BZM_ForceAICleanup]]();
	}
	level waittill("hash_94cdf46c");
	if(isdefined(level.BZM_ForceAICleanup))
	{
		[[level.BZM_ForceAICleanup]]();
	}
	thread util::screen_fade_out(0.75);
	exploder::stop_exploder("lgt_tree_glow_01");
	level waittill("hash_595107d2");
	if(isdefined(level.BZM_ForceAICleanup))
	{
		[[level.BZM_ForceAICleanup]]();
	}
	exploder::stop_exploder("lighting_turbine_boss_emergency");
	level clientfield::set("toggle_fog_banks", 0);
	thread namespace_e2cb8359::function_1d5b05a();
	level.var_24223342 ai::set_behavior_attribute("cqb", 0);
	thread util::screen_fade_in(0.5);
	level flag::set("hyperion_start_tree_scene");
	namespace_786319bb::function_75ab4ede(1);
	util::clear_streamer_hint();
	level.var_2839b910 kill();
}

/*
	Name: function_f3ee81ce
	Namespace: namespace_cac6a05e
	Checksum: 0x51F8085E
	Offset: 0x2A80
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_f3ee81ce(a_ents)
{
	level flag::set("sniper_boss_skipped");
}

/*
	Name: function_2a39915e
	Namespace: namespace_cac6a05e
	Checksum: 0xAA422202
	Offset: 0x2AB8
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_2a39915e()
{
	level waittill("hash_6f76bd0d");
	if(!level flag::get("sniper_boss_skipped"))
	{
		Array::thread_all(level.activePlayers, &namespace_786319bb::function_89eaa1b3, 1);
	}
}

/*
	Name: function_510d0407
	Namespace: namespace_cac6a05e
	Checksum: 0xDAE8E5B1
	Offset: 0x2B20
	Size: 0xC1
	Parameters: 0
	Flags: None
*/
function function_510d0407()
{
	ents = GetEntArray("fire_maker", "script_noteworthy");
	level.var_510d0407 = ents;
	foreach(ent in ents)
	{
		ent thread function_d1b143ce();
	}
}

/*
	Name: function_d1b143ce
	Namespace: namespace_cac6a05e
	Checksum: 0x8E0965F0
	Offset: 0x2BF0
	Size: 0x203
	Parameters: 0
	Flags: None
*/
function function_d1b143ce()
{
	var_e42db353 = undefined;
	if(isdefined(self.target))
	{
		var_e42db353 = GetEnt(self.target, "targetname");
		var_e42db353 TriggerEnable(0);
		self.target = undefined;
	}
	ent = spawnstruct();
	ent.origin = self.origin;
	ent.angles = self.angles;
	FX = "boss_fire";
	if(isdefined(self.script_parameters))
	{
		FX = self.script_parameters;
	}
	self waittill("broken");
	ArrayRemoveValue(level.var_510d0407, self);
	if(isdefined(var_e42db353))
	{
		var_e42db353 TriggerEnable(1);
		badplace_cylinder(var_e42db353.targetname, -1, ent.origin, 110, 64, "all");
	}
	if(FX == "boss_fire")
	{
		playFX(level._effect[FX], ent.origin, AnglesToForward(ent.angles), anglesToUp(ent.angles));
	}
	else
	{
		exploder::exploder(FX);
	}
}

/*
	Name: function_e146f6ef
	Namespace: namespace_cac6a05e
	Checksum: 0x58F76717
	Offset: 0x2E00
	Size: 0x22B
	Parameters: 0
	Flags: None
*/
function function_e146f6ef()
{
	best_dist = 0;
	shootme = undefined;
	eyePos = level.var_2839b910 GetEye();
	foreach(ent in level.var_510d0407)
	{
		if(isdefined(ent) && isalive(ent))
		{
			dist = function_ca9c8f2b(ent.origin);
			if(level.var_c987bca && (best_dist == 0 || dist < best_dist) && SightTracePassed(eyePos, ent.origin, 0, undefined))
			{
				best_dist = dist;
				shootme = ent;
			}
		}
	}
	if(isdefined(shootme))
	{
		level.var_2839b910.var_9eb700da notify("hash_565daac6");
		level.var_2839b910.var_9eb700da notify("target_lase_override");
		level.var_2839b910.var_9eb700da notify("target_lase_transition");
		wait(0.1);
		if(isdefined(shootme))
		{
			level.var_2839b910.var_9eb700da ai_sniper::target_lase_override(level.var_2839b910 GetEye(), shootme, 1, level.var_2839b910, 1, 0);
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_ca9c8f2b
	Namespace: namespace_cac6a05e
	Checksum: 0x3675E211
	Offset: 0x3038
	Size: 0xE5
	Parameters: 1
	Flags: None
*/
function function_ca9c8f2b(org)
{
	shortest = 0;
	foreach(guy in level.activePlayers)
	{
		dist = DistanceSquared(guy.origin, org);
		if(shortest == 0 || dist < shortest)
		{
			shortest = dist;
		}
	}
	return shortest;
}

/*
	Name: function_329f82a0
	Namespace: namespace_cac6a05e
	Checksum: 0xC06D7518
	Offset: 0x3128
	Size: 0x1CB
	Parameters: 0
	Flags: None
*/
function function_329f82a0()
{
	if(isdefined(level.var_2839b910.var_9eb700da.var_8722cfb))
	{
		target = level.var_2839b910.var_9eb700da.var_8722cfb;
		fwd = AnglesToForward(level.var_2839b910.angles);
		target_org = target.origin + VectorScale((0, 0, 1), 10);
		if(isPlayer(target))
		{
			var_f769885c = (0, 0, 0);
			accuracy = target function_3375c23();
			accuracy = accuracy * 100;
			if(accuracy < RandomFloat(100))
			{
				var_f769885c = (RandomFloat(100) - 50, 0, 16);
			}
			target_org = target GetEye() + VectorScale((0, 0, -1), 6) + var_f769885c;
		}
		MagicBullet(GetWeapon("sniper_hyperion"), level.var_2839b910 GetEye() + fwd * 20, target_org, level.var_2839b910);
		return 1;
	}
	return 0;
}

/*
	Name: function_6ea369f7
	Namespace: namespace_cac6a05e
	Checksum: 0x9F2AD4A
	Offset: 0x3300
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_6ea369f7()
{
	trig = GetEnt("sniper_alley", "targetname");
	while(!level flag::get("end_battle"))
	{
		trig waittill("trigger", who);
		if(isPlayer(who) && isalive(who))
		{
			if(!isdefined(level.var_2839b910.player_target))
			{
				function_6485b136(who, 2);
			}
		}
	}
}

/*
	Name: function_6800ac1d
	Namespace: namespace_cac6a05e
	Checksum: 0x7E3AEE9
	Offset: 0x33E0
	Size: 0x2EB
	Parameters: 0
	Flags: None
*/
function function_6800ac1d()
{
	trig = GetEnt("boss_hack1", "targetname");
	trig2 = GetEnt("boss_hack2", "targetname");
	trig TriggerEnable(1);
	trig2 TriggerEnable(0);
	namespace_84eb777e::function_4d816f2c("cp_level_aquifer_boss");
	trig.var_611ccff1 = trig hacking::function_68df65d8(5, &"cp_level_aquifer_boss_gen1", &"CP_MI_CAIRO_AQUIFER_HOLD_OVERLOAD", &function_e9c4785f);
	thread function_a354fb63(1);
	level.var_fc9a3509 = 1;
	level waittill("hash_e9c4785f");
	thread savegame::function_5d2cdd99();
	trig.var_611ccff1 gameobjects::disable_object();
	trig2.var_611ccff1 = trig2 hacking::function_68df65d8(5, &"cp_level_aquifer_boss_gen2", &"CP_MI_CAIRO_AQUIFER_HOLD_OVERLOAD", &function_e9c4785f);
	thread function_a354fb63(2);
	scene::init("cin_aqu_07_01_maretti_1st_dropit");
	level waittill("hash_e9c4785f");
	thread savegame::function_5d2cdd99();
	trig2.var_611ccff1 gameobjects::disable_object();
	wait(1.5);
	struct = GetEnt("hyperion_death_origin", "targetname");
	struct thread scene::Play("cin_aqu_05_20_boss_3rd_death_debris");
	wait(2.5);
	var_e42db353 = GetEnt("boss_debris_hurter", "targetname");
	var_e42db353 TriggerEnable(1);
	namespace_786319bb::function_2085bf94("debris_clip", 0);
	wait(0.25);
	var_e42db353 TriggerEnable(0);
	function_ab171381();
}

/*
	Name: function_e9c4785f
	Namespace: namespace_cac6a05e
	Checksum: 0x668C82C7
	Offset: 0x36D8
	Size: 0x19
	Parameters: 1
	Flags: None
*/
function function_e9c4785f(var_2e09a44e)
{
	level notify("hash_e9c4785f");
}

/*
	Name: function_dae6fcbf
	Namespace: namespace_cac6a05e
	Checksum: 0x5065867
	Offset: 0x3700
	Size: 0x141
	Parameters: 1
	Flags: None
*/
function function_dae6fcbf(name)
{
	level endon("hash_221e0b70");
	panels = GetEntArray(name, "targetname");
	delay = 3;
	while(1)
	{
		wait(delay);
		flickers = RandomInt(5) + 2;
		for(i = 0; i < flickers; i++)
		{
			Array::run_all(panels, &Hide);
			wait(RandomFloatRange(0.05, 0.2));
			Array::run_all(panels, &show);
			wait(RandomFloatRange(0.05, 0.2));
		}
		delay = delay / 2;
	}
}

/*
	Name: function_a354fb63
	Namespace: namespace_cac6a05e
	Checksum: 0x24F15820
	Offset: 0x3850
	Size: 0x47F
	Parameters: 1
	Flags: None
*/
function function_a354fb63()
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
	Name: function_339776e2
	Namespace: namespace_cac6a05e
	Checksum: 0xEFBD91A2
	Offset: 0x3CD8
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_339776e2(name)
{
	ent = GetEnt(name, "script_parameters");
	if(isdefined(ent))
	{
		ent kill();
	}
}

/*
	Name: function_41ca61ef
	Namespace: namespace_cac6a05e
	Checksum: 0xF4BC9FB2
	Offset: 0x3D40
	Size: 0x14D
	Parameters: 1
	Flags: None
*/
function function_41ca61ef(num)
{
	level endon("hash_90029dea");
	if(isdefined(num))
	{
	}
	else
	{
	}
	thread function_dae6fcbf("" + num + "");
	level thread namespace_1d1d22be::function_ad15f6f5();
	if(isdefined(num))
	{
	}
	else
	{
	}
	surge = "" + num + "";
	exploder::exploder(surge + "_stage01");
	wait(1);
	exploder::exploder(surge + "_stage02");
	wait(1);
	exploder::exploder(surge + "_stage03");
	wait(2);
	exploder::exploder(surge + "_stage04");
	wait(3);
	level notify("hash_2891cea2");
}

/*
	Name: function_567a5fa
	Namespace: namespace_cac6a05e
	Checksum: 0x4E15C84C
	Offset: 0x3E98
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_567a5fa()
{
	level waittill("hash_cd553ae9");
	wait(0.25);
	level.var_24223342 dialog::say("hend_maretti_s_locked_him_0");
	wait(3);
	thread function_269260a3();
}

/*
	Name: function_7bde3a88
	Namespace: namespace_cac6a05e
	Checksum: 0x84B478EF
	Offset: 0x3EF8
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_7bde3a88()
{
	level endon("start_finale");
	level flag::wait_till("boss_taunt1");
	wait(3);
	level flag::set("boss_convo");
	level.var_24223342 dialog::say("hend_maretti_0");
	level.var_24223342 dialog::say("hend_maretti_listen_to_0", 1);
	level dialog::remote("mare_you_haven_t_learned_0", 0.2);
	level.var_24223342 dialog::say("hend_diaz_and_hall_are_de_0", 0.2);
	function_5e1c1c41();
}

/*
	Name: function_ede5a9c3
	Namespace: namespace_cac6a05e
	Checksum: 0x4F9666B
	Offset: 0x3FF8
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_ede5a9c3()
{
	level endon("start_finale");
	level flag::wait_till("boss_taunt2");
	level flag::set("boss_convo");
	level dialog::remote("mare_aren_t_you_worried_a_0");
	level.var_24223342 dialog::say("hend_maretti_you_know_me_0", 0.5);
	level dialog::remote("mare_you_d_better_get_you_1", 1);
	level.var_24223342 dialog::say("hend_please_i_give_you_0", 0.2);
	function_5e1c1c41();
	wait(5);
	level flag::set("boss_convo");
	level dialog::remote("mare_bullet_to_the_head_l_1", 2);
	function_5e1c1c41();
}

/*
	Name: function_80b6b7eb
	Namespace: namespace_cac6a05e
	Checksum: 0x85064DA4
	Offset: 0x4140
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_80b6b7eb()
{
	thread function_7bde3a88();
	thread function_ede5a9c3();
	level flag::wait_till_timeout(10, "boss_wave1");
	wait(5);
	level flag::set("boss_taunt1");
	level flag::wait_till("boss_wave1");
	level flag::wait_till_timeout(40, "boss_wave2");
	wait(5);
	level flag::set("boss_taunt2");
}

/*
	Name: function_5e1c1c41
	Namespace: namespace_cac6a05e
	Checksum: 0xEB0D0FCB
	Offset: 0x4210
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_5e1c1c41()
{
	wait(1);
	level flag::clear("boss_convo");
}

/*
	Name: function_aa2bff88
	Namespace: namespace_cac6a05e
	Checksum: 0xB26722A1
	Offset: 0x4240
	Size: 0xC7
	Parameters: 2
	Flags: None
*/
function function_aa2bff88(str_line, n_timeout)
{
	if(!isdefined(n_timeout))
	{
		n_timeout = -1;
	}
	if(n_timeout < 0)
	{
		level flag::wait_till_clear("boss_convo");
	}
	else if(n_timeout > 0)
	{
		level flag::wait_till_clear_timeout(n_timeout, "boss_convo");
	}
	if(level flag::get("boss_convo"))
	{
		return 0;
	}
	self dialog::say(str_line);
	return 1;
}

/*
	Name: function_4463326b
	Namespace: namespace_cac6a05e
	Checksum: 0xB064FA55
	Offset: 0x4310
	Size: 0xB5
	Parameters: 4
	Flags: None
*/
function function_4463326b(var_d44c15f4, var_aa750b18, n_timeout, str_endon_notify)
{
	if(!isdefined(var_aa750b18))
	{
		var_aa750b18 = 10;
	}
	level endon(str_endon_notify);
	n_waittime = var_aa750b18;
	var_d16e6be2 = 0;
	while(var_d16e6be2 < var_d44c15f4.size)
	{
		wait(n_waittime);
		level.var_24223342 function_aa2bff88(var_d44c15f4[var_d16e6be2], n_timeout);
		var_d16e6be2++;
		n_waittime = n_waittime + 5;
	}
}

/*
	Name: function_269260a3
	Namespace: namespace_cac6a05e
	Checksum: 0xCAD9A3BD
	Offset: 0x43D0
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_269260a3()
{
	var_3d2aa310 = [];
	if(!isdefined(var_3d2aa310))
	{
		var_3d2aa310 = [];
	}
	else if(!IsArray(var_3d2aa310))
	{
		var_3d2aa310 = Array(var_3d2aa310);
	}
	var_3d2aa310[var_3d2aa310.size] = "hend_overload_that_genera_0";
	if(!isdefined(var_3d2aa310))
	{
		var_3d2aa310 = [];
	}
	else if(!IsArray(var_3d2aa310))
	{
		var_3d2aa310 = Array(var_3d2aa310);
	}
	var_3d2aa310[var_3d2aa310.size] = "hend_we_need_that_generat_0";
	if(!isdefined(var_3d2aa310))
	{
		var_3d2aa310 = [];
	}
	else if(!IsArray(var_3d2aa310))
	{
		var_3d2aa310 = Array(var_3d2aa310);
	}
	var_3d2aa310[var_3d2aa310.size] = "hend_i_ll_cover_you_over_0";
	thread function_4463326b(var_3d2aa310, undefined, -1, "gen1_done");
	level waittill("hash_6ca7aa5d");
	function_86fc21bb();
}

/*
	Name: function_86fc21bb
	Namespace: namespace_cac6a05e
	Checksum: 0xAD13C5BD
	Offset: 0x4558
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_86fc21bb()
{
	var_3d2aa310 = [];
	if(!isdefined(var_3d2aa310))
	{
		var_3d2aa310 = [];
	}
	else if(!IsArray(var_3d2aa310))
	{
		var_3d2aa310 = Array(var_3d2aa310);
	}
	var_3d2aa310[var_3d2aa310.size] = "hend_one_down_2";
	if(!isdefined(var_3d2aa310))
	{
		var_3d2aa310 = [];
	}
	else if(!IsArray(var_3d2aa310))
	{
		var_3d2aa310 = Array(var_3d2aa310);
	}
	var_3d2aa310[var_3d2aa310.size] = "hend_move_to_the_next_gen_0";
	thread function_4463326b(var_3d2aa310, undefined, -1, "gen1_done");
}

/*
	Name: function_c3af0181
	Namespace: namespace_cac6a05e
	Checksum: 0x62D99B0D
	Offset: 0x4660
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_c3af0181()
{
	var_3d2aa310 = [];
	if(!isdefined(var_3d2aa310))
	{
		var_3d2aa310 = [];
	}
	else if(!IsArray(var_3d2aa310))
	{
		var_3d2aa310 = Array(var_3d2aa310);
	}
	var_3d2aa310[var_3d2aa310.size] = "hend_get_up_there_and_sec_0";
	if(!isdefined(var_3d2aa310))
	{
		var_3d2aa310 = [];
	}
	else if(!IsArray(var_3d2aa310))
	{
		var_3d2aa310 = Array(var_3d2aa310);
	}
	var_3d2aa310[var_3d2aa310.size] = "hend_there_s_a_path_to_ma_0";
	thread function_4463326b(var_3d2aa310, undefined, -1, "start_finale");
}

/*
	Name: function_ae438739
	Namespace: namespace_cac6a05e
	Checksum: 0xD437B39D
	Offset: 0x4768
	Size: 0x147
	Parameters: 1
	Flags: None
*/
function function_ae438739(var_ecd4dcd7)
{
	level endon("start_finale");
	level endon("death");
	nags = [];
	nags[0] = "hend_keep_your_head_down_1";
	nags[1] = "hend_watch_it_1";
	nags[2] = "hend_watch_that_laser_1";
	while(level.var_6343f89f < nags.size)
	{
		self waittill("damage", amount, attacker, dir, point, mod);
		if(attacker == level.var_2839b910 && GetTime() > level.var_9ef3831c + var_ecd4dcd7 * 1000)
		{
			var_f0c8f3cf = level.var_24223342 function_aa2bff88(nags[level.var_6343f89f], 2);
			if(var_f0c8f3cf)
			{
				level.var_9ef3831c = GetTime();
				level.var_6343f89f++;
			}
		}
	}
}

/*
	Name: function_7a57d63a
	Namespace: namespace_cac6a05e
	Checksum: 0x802E4ABC
	Offset: 0x48B8
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_7a57d63a()
{
	level.var_9ef3831c = 0;
	level.var_6343f89f = 0;
	foreach(player in level.players)
	{
		player thread function_ae438739(5);
	}
}

/*
	Name: function_3375c23
	Namespace: namespace_cac6a05e
	Checksum: 0xB34A7035
	Offset: 0x4970
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_3375c23()
{
	accuracy = 1;
	if(self issprinting())
	{
		accuracy = accuracy - 0.1;
	}
	if(self IsSliding())
	{
		accuracy = accuracy - 0.1;
	}
	player_vec = self GetVelocity();
	speed = length(player_vec);
	if(speed > 100)
	{
		player_vec = self GetNormalizedMovement();
		var_8aeaad8d = AnglesToForward(level.var_2839b910.angles);
		dot = Abs(VectorDot(player_vec, var_8aeaad8d));
		accuracy = accuracy - 1 - dot * 0.1;
	}
	return accuracy;
}

