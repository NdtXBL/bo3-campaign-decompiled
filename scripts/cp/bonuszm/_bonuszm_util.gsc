#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_oed;
#using scripts\cp\_util;
#using scripts\cp\bonuszm\_bonuszm_data;
#using scripts\cp\bonuszm\_bonuszm_dev;
#using scripts\cp\bonuszm\_bonuszm_magicbox;
#using scripts\cp\bonuszm\_bonuszm_spawner_shared;
#using scripts\cp\bonuszm\_bonuszm_util;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_tactical_rig;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_globallogic_player;
#using scripts\shared\_oob;
#using scripts\shared\ai\systems\blackboard;
#using scripts\shared\ai\systems\shared;
#using scripts\shared\ai\zombie_shared;
#using scripts\shared\ai\zombie_utility;
#using scripts\shared\ammo_shared;
#using scripts\shared\archetype_shared\archetype_shared;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\clientids_shared;
#using scripts\shared\containers_shared;
#using scripts\shared\demo_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\gameskill_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\load_shared;
#using scripts\shared\math_shared;
#using scripts\shared\music_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\serverfaceanim_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\tweakables_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\weapons_shared;

#namespace namespace_37cacec1;

/*
	Name: function_5e408c24
	Namespace: namespace_37cacec1
	Checksum: 0x872C3364
	Offset: 0xAA0
	Size: 0x17B
	Parameters: 4
	Flags: None
*/
function function_5e408c24(origin, region, minRadius, maxRadius)
{
	nodes = GetNodesInRadius(origin, maxRadius, minRadius);
	var_54f3a637 = [];
	foreach(node in nodes)
	{
		if(isdefined(region))
		{
			var_dd83e145 = function_7d9668cb(node);
			if(isdefined(var_dd83e145) && region == var_dd83e145)
			{
				Array::add(var_54f3a637, node);
			}
			continue;
		}
		Array::add(var_54f3a637, node);
	}
	goToNode = Array::random(var_54f3a637);
	return goToNode;
}

/*
	Name: function_165bd27a
	Namespace: namespace_37cacec1
	Checksum: 0x381DC3F
	Offset: 0xC28
	Size: 0x131
	Parameters: 1
	Flags: None
*/
function function_165bd27a(health)
{
	/#
		Assert(isdefined(health));
	#/
	scalar = 1;
	if(isdefined(level.currentDifficulty))
	{
		switch(level.currentDifficulty)
		{
			case "easy":
			{
				scalar = level.var_a9e78bf7["zombiehealthscale1"];
				break;
			}
			case "normal":
			{
				scalar = level.var_a9e78bf7["zombiehealthscale2"];
				break;
			}
			case "hardened":
			{
				scalar = level.var_a9e78bf7["zombiehealthscale3"];
				break;
			}
			case "veteran":
			{
				scalar = level.var_a9e78bf7["zombiehealthscale4"];
				break;
			}
			case "realistic":
			{
				scalar = level.var_a9e78bf7["zombiehealthscale5"];
				break;
			}
		}
	}
	return Int(health * scalar);
}

/*
	Name: function_5f2c4513
	Namespace: namespace_37cacec1
	Checksum: 0x856E1F27
	Offset: 0xD68
	Size: 0x119
	Parameters: 0
	Flags: None
*/
function function_5f2c4513()
{
	scalar = 1;
	if(isdefined(level.activePlayers))
	{
		switch(level.activePlayers.size)
		{
			case 1:
			{
				scalar = level.var_a9e78bf7["extrazombiescale1"];
				break;
			}
			case 2:
			{
				scalar = level.var_a9e78bf7["extrazombiescale2"];
				break;
			}
			case 3:
			{
				scalar = level.var_a9e78bf7["extrazombiescale3"];
				break;
			}
			case 4:
			{
				scalar = level.var_a9e78bf7["extrazombiescale4"];
				break;
			}
		}
	}
	/#
		Assert(isdefined(level.var_a9e78bf7["Dev Block strings are not supported"]));
	#/
	return Int(level.var_a9e78bf7["extraspawns"] * scalar);
}

/*
	Name: function_9cb5d4c9
	Namespace: namespace_37cacec1
	Checksum: 0x39A40085
	Offset: 0xE90
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_9cb5d4c9()
{
	level.var_3a7fa0a9 = [];
	Array::add(level.var_3a7fa0a9, "cin_gen_traversal_zipline_enemy01_attach");
	Array::add(level.var_3a7fa0a9, "cin_gen_traversal_zipline_enemy01_death");
	Array::add(level.var_3a7fa0a9, "cin_gen_traversal_zipline_enemy01_dismount");
	Array::add(level.var_3a7fa0a9, "cin_gen_traversal_zipline_enemy01_idle");
	Array::add(level.var_3a7fa0a9, "cin_gen_traversal_zipline_enemy02_attach");
	Array::add(level.var_3a7fa0a9, "cin_gen_traversal_zipline_enemy02_death");
	Array::add(level.var_3a7fa0a9, "cin_gen_traversal_zipline_enemy02_dismount");
	Array::add(level.var_3a7fa0a9, "cin_gen_traversal_zipline_enemy02_idle");
	Array::add(level.var_3a7fa0a9, "ch_sgen_11_01_silofloor_aie_dropdown_robot02_2ndfloor");
	Array::add(level.var_3a7fa0a9, "ch_sgen_11_01_silofloor_aie_dropdown_robot01_3rdfloor");
	Array::add(level.var_3a7fa0a9, "ch_sgen_12_02_corvus_aie_192jump");
	Array::add(level.var_3a7fa0a9, "ch_gen_aie_robot_jumpdown_444");
	Array::add(level.var_3a7fa0a9, "ch_sgen_18_01_pallasfight_aie_jumpdown_robot01");
}

/*
	Name: function_51828ce6
	Namespace: namespace_37cacec1
	Checksum: 0x644B23EF
	Offset: 0x1050
	Size: 0xFD
	Parameters: 0
	Flags: None
*/
function function_51828ce6()
{
	if(!self isInScriptedState())
	{
		return 0;
	}
	if(isdefined(self.current_scene) && IsString(self.current_scene))
	{
		if(IsInArray(level.var_3a7fa0a9, self.current_scene))
		{
			return 1;
		}
	}
	if(level.script === "cp_mi_sing_sgen")
	{
		if(isdefined(self.traverseStartNode) && isdefined(self.traverseStartNode.animscript) && IsString(self.traverseStartNode.animscript))
		{
			if(IsInArray(level.var_3a7fa0a9, self.traverseStartNode.animscript))
			{
				return 1;
			}
		}
	}
	return 0;
}

/*
	Name: function_ce6a97e6
	Namespace: namespace_37cacec1
	Checksum: 0xC9CE7BEB
	Offset: 0x1158
	Size: 0x59
	Parameters: 0
	Flags: None
*/
function function_ce6a97e6()
{
	mapname = GetDvarString("mapname");
	return self GetDStat("PlayerStatsByMap", mapname + "_nightmares", "hasBeenCompleted");
}

/*
	Name: function_d68296ac
	Namespace: namespace_37cacec1
	Checksum: 0xD5F288A6
	Offset: 0x11C0
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_d68296ac()
{
	mapname = GetDvarString("mapname");
	if(mapname == "cp_mi_eth_prologue")
	{
		if(isdefined(level.var_c0e97bd) && level.var_c0e97bd == "skipto_hangar")
		{
			level flag::wait_till_all(Array("plane_hangar_hendricks_ready_flag", "plane_hangar_khalil_ready_flag", "plane_hangar_minister_ready_flag"));
			wait(4);
		}
	}
	if(mapname == "cp_mi_cairo_ramses")
	{
		if(isdefined(level.var_c0e97bd) && level.var_c0e97bd == "defend_ramses_station")
		{
			level flag::wait_till("raps_intro_done");
		}
	}
}

/*
	Name: function_ec036ed3
	Namespace: namespace_37cacec1
	Checksum: 0xB4902CEF
	Offset: 0x12B8
	Size: 0x67F
	Parameters: 3
	Flags: None
*/
function function_ec036ed3(var_28b84d73, var_14e6a7e9, var_df4e4d0f)
{
	if(!isdefined(level.var_5e64ddb4))
	{
		level.var_5e64ddb4 = [];
		level.var_3494f35e = 0;
	}
	closestPlayer = ArrayGetClosest(var_14e6a7e9, level.activePlayers);
	if(!isdefined(closestPlayer))
	{
		return var_14e6a7e9;
	}
	playerForward = AnglesToForward(closestPlayer.angles);
	var_2d1236a = closestPlayer.origin;
	var_2d1236a = GetClosestPointOnNavMesh(var_2d1236a, randomIntRange(100, 300));
	if(isdefined(var_2d1236a))
	{
		queryResult = PositionQuery_Source_Navigation(var_2d1236a, 450, randomIntRange(800, 1200), 70, randomIntRange(80, 150), self);
	}
	if(!isdefined(queryResult))
	{
		var_2d1236a = closestPlayer.origin;
		if(isdefined(var_2d1236a))
		{
			queryResult = PositionQuery_Source_Navigation(var_2d1236a, 150, randomIntRange(800, 1200), 70, randomIntRange(80, 150), self);
		}
	}
	var_59b020a9 = undefined;
	if(isdefined(queryResult) && queryResult.data.size > 0)
	{
		foreach(data in queryResult.data)
		{
			data.score = 0;
			var_dcf3b4e8 = function_1f637867(var_28b84d73, closestPlayer, data);
			data.score = data.score + var_dcf3b4e8;
			var_8fb5ce54 = function_ae0beba6(var_28b84d73, closestPlayer, data);
			data.score = data.score + var_8fb5ce54;
			var_6a9c89c0 = function_d789e857(var_28b84d73, closestPlayer, data);
			data.score = data.score + var_6a9c89c0;
			var_77f56330 = function_fb8e7615(var_28b84d73, closestPlayer, data);
			data.score = data.score - var_77f56330;
			if(!isdefined(var_59b020a9))
			{
				var_59b020a9 = data;
			}
			if(data.score > var_59b020a9.score)
			{
				/#
					Record3DText("Dev Block strings are not supported" + data.score + "Dev Block strings are not supported" + var_dcf3b4e8 + "Dev Block strings are not supported" + var_8fb5ce54 + "Dev Block strings are not supported" + var_6a9c89c0 + "Dev Block strings are not supported" + var_77f56330 + "Dev Block strings are not supported", data.origin, (0, 0, 1), "Dev Block strings are not supported");
				#/
				var_59b020a9 = data;
				continue;
			}
			/#
				Record3DText("Dev Block strings are not supported" + data.score + "Dev Block strings are not supported" + var_dcf3b4e8 + "Dev Block strings are not supported" + var_8fb5ce54 + "Dev Block strings are not supported" + var_6a9c89c0 + "Dev Block strings are not supported" + var_77f56330 + "Dev Block strings are not supported", data.origin, (1, 0, 0), "Dev Block strings are not supported");
			#/
		}
	}
	/#
		function_4d084a77();
	#/
	if(isdefined(var_59b020a9))
	{
		/#
			Record3DText("Dev Block strings are not supported" + var_59b020a9.score, var_59b020a9.origin + VectorScale((0, 0, 1), 20), (0, 1, 0), "Dev Block strings are not supported");
		#/
		var_42322402 = var_59b020a9.origin;
	}
	if(!isdefined(var_42322402))
	{
		goToNode = function_5e408c24(var_14e6a7e9, var_df4e4d0f, 100, randomIntRange(600, 1000));
		if(isdefined(goToNode))
		{
			var_42322402 = goToNode.origin;
		}
	}
	if(!isdefined(var_42322402))
	{
		var_42322402 = var_14e6a7e9;
	}
	if(level.var_3494f35e > 10)
	{
		level.var_3494f35e = 0;
	}
	level.var_5e64ddb4[level.var_3494f35e] = var_42322402;
	level.var_3494f35e++;
	return var_42322402;
}

/*
	Name: function_1f637867
	Namespace: namespace_37cacec1
	Checksum: 0xD678897
	Offset: 0x1940
	Size: 0x163
	Parameters: 3
	Flags: None
*/
function function_1f637867(var_28b84d73, closestPlayer, data)
{
	score = 0;
	foreach(player in level.activePlayers)
	{
		var_5734b0ef = DistanceSquared(data.origin, player.origin);
		var_d322d6e7 = math::clamp(var_5734b0ef, 0, 1200 * 1200);
		score = score + var_d322d6e7 / 1200 * 1200;
		if(var_5734b0ef > 1200 * 1200)
		{
			score = score + RandomFloatRange(-0.1, 0.1);
		}
	}
	return score;
}

/*
	Name: function_ae0beba6
	Namespace: namespace_37cacec1
	Checksum: 0xC5CEDEFE
	Offset: 0x1AB0
	Size: 0x1B3
	Parameters: 3
	Flags: None
*/
function function_ae0beba6(var_28b84d73, closestPlayer, data)
{
	score = 0;
	var_4d45bcdc = 0;
	if(isdefined(closestPlayer) && isdefined(closestPlayer.var_924bb3b8))
	{
		var_c54cd263 = VectorNormalize((closestPlayer.var_924bb3b8[0], closestPlayer.var_924bb3b8[1], 0) - (closestPlayer.origin[0], closestPlayer.origin[1], 0));
		fov = cos(70);
		var_a9f2c7c7 = VectorNormalize((data.origin[0], data.origin[1], 0) - (closestPlayer.origin[0], closestPlayer.origin[1], 0));
		dot = VectorDot(var_c54cd263, var_a9f2c7c7);
		if(dot >= fov)
		{
			score = RandomFloatRange(1, 2);
		}
	}
	return score;
}

/*
	Name: function_d789e857
	Namespace: namespace_37cacec1
	Checksum: 0x3ADBC828
	Offset: 0x1C70
	Size: 0x81
	Parameters: 3
	Flags: None
*/
function function_d789e857(var_28b84d73, closestPlayer, data)
{
	/#
		Assert(isdefined(var_28b84d73));
	#/
	score = 1;
	if(var_28b84d73 IsPosInClaimedLocation(data.origin))
	{
		score = 0;
	}
	return score;
}

/*
	Name: function_fb8e7615
	Namespace: namespace_37cacec1
	Checksum: 0x33A2CD6
	Offset: 0x1D00
	Size: 0x111
	Parameters: 3
	Flags: None
*/
function function_fb8e7615(var_28b84d73, closestPlayer, data)
{
	score = 0;
	foreach(location in level.var_5e64ddb4)
	{
		var_b0035858 = DistanceSquared(location, data.origin);
		if(var_b0035858 <= 120 * 120)
		{
			score = score + 1 - var_b0035858 / 120 * 120 * 0.2;
		}
	}
	return score;
}

/*
	Name: function_4d084a77
	Namespace: namespace_37cacec1
	Checksum: 0x14E4B0C7
	Offset: 0x1E20
	Size: 0x99
	Parameters: 0
	Flags: None
*/
function function_4d084a77()
{
	/#
		foreach(location in level.var_5e64ddb4)
		{
			RecordSphere(location, 4, (1, 1, 0), "Dev Block strings are not supported");
		}
	#/
}

