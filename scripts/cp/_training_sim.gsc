#using scripts\codescripts\struct;
#using scripts\cp\_achievements;
#using scripts\cp\_challenges;
#using scripts\cp\_decorations;
#using scripts\cp\_objectives;
#using scripts\cp\_safehouse;
#using scripts\cp\_util;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_tactical_rig;
#using scripts\cp\gametypes\_globallogic_player;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\music_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\table_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicles\_quadtank;

#namespace training_sim;

/*
	Name: __init__sytem__
	Namespace: training_sim
	Checksum: 0x70D24ECB
	Offset: 0xAA8
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("training_sim", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: training_sim
	Checksum: 0xCE31E2B6
	Offset: 0xAE8
	Size: 0x30B
	Parameters: 0
	Flags: None
*/
function __init__()
{
	callback::on_connect(&on_player_connect);
	callback::on_spawned(&on_player_spawned);
	callback::on_ai_spawned(&on_ai_spawned);
	callback::on_ai_damage(&on_ai_damage);
	callback::on_ai_killed(&on_ai_killed);
	callback::on_ai_spawned(&function_e340d355);
	clientfield::register("actor", "rez_in", 1, 1, "int");
	clientfield::register("actor", "rez_out", 1, 1, "int");
	clientfield::register("vehicle", "rez_in", 1, 1, "int");
	clientfield::register("vehicle", "rez_out", 1, 1, "int");
	clientfield::register("actor", "enable_ethereal_overlay", 1, 1, "int");
	clientfield::register("vehicle", "enable_ethereal_overlay", 1, 1, "int");
	clientfield::register("scriptmover", "enable_ethereal_overlay", 1, 1, "int");
	clientfield::register("toplayer", "postfx_build_world", 1, 1, "counter");
	clientfield::register("toplayer", "cleanup_sim", 1000, 1, "counter");
	function_76550e47();
	function_7f7e9ea5();
	level._effect["round_beacon_disabled"] = "ui/fx_ui_frontend_training_sim_icon_active";
	level._effect["round_beacon_enabled"] = "ui/fx_ui_frontend_training_sim_icon_idle";
	level._effect["round_beacon_moving"] = "ui/fx_ui_frontend_training_sim_icon_move";
	function_b9b9b898();
	function_b8d52e94();
}

/*
	Name: function_b8d52e94
	Namespace: training_sim
	Checksum: 0xF15C71AC
	Offset: 0xE00
	Size: 0x751
	Parameters: 0
	Flags: None
*/
function function_b8d52e94()
{
	var_5ca6504d = [];
	if(!isdefined(var_5ca6504d))
	{
		var_5ca6504d = [];
	}
	else if(!IsArray(var_5ca6504d))
	{
		var_5ca6504d = Array(var_5ca6504d);
	}
	var_5ca6504d[var_5ca6504d.size] = util::spawn_model("collision_clip_512x512x512", (-15393.6, -3229.79, 1130.5), (0, 0, 0));
	if(!isdefined(var_5ca6504d))
	{
		var_5ca6504d = [];
	}
	else if(!IsArray(var_5ca6504d))
	{
		var_5ca6504d = Array(var_5ca6504d);
	}
	var_5ca6504d[var_5ca6504d.size] = util::spawn_model("collision_clip_512x512x512", (-17421.5, -697.8, 1130.5), VectorScale((0, 1, 0), 45));
	if(!isdefined(var_5ca6504d))
	{
		var_5ca6504d = [];
	}
	else if(!IsArray(var_5ca6504d))
	{
		var_5ca6504d = Array(var_5ca6504d);
	}
	var_5ca6504d[var_5ca6504d.size] = util::spawn_model("collision_clip_512x512x512", (-18309.6, -3701.79, 1130.5), (0, 0, 0));
	if(!isdefined(var_5ca6504d))
	{
		var_5ca6504d = [];
	}
	else if(!IsArray(var_5ca6504d))
	{
		var_5ca6504d = Array(var_5ca6504d);
	}
	var_5ca6504d[var_5ca6504d.size] = util::spawn_model("collision_clip_512x512x512", (-15413.6, 7862.21, 1130.5), (0, 0, 0));
	if(!isdefined(var_5ca6504d))
	{
		var_5ca6504d = [];
	}
	else if(!IsArray(var_5ca6504d))
	{
		var_5ca6504d = Array(var_5ca6504d);
	}
	var_5ca6504d[var_5ca6504d.size] = util::spawn_model("collision_clip_512x512x512", (-17441.5, 10394.2, 1130.5), VectorScale((0, 1, 0), 45));
	if(!isdefined(var_5ca6504d))
	{
		var_5ca6504d = [];
	}
	else if(!IsArray(var_5ca6504d))
	{
		var_5ca6504d = Array(var_5ca6504d);
	}
	var_5ca6504d[var_5ca6504d.size] = util::spawn_model("collision_clip_512x512x512", (-18329.6, 7390.21, 1130.5), (0, 0, 0));
	if(!isdefined(var_5ca6504d))
	{
		var_5ca6504d = [];
	}
	else if(!IsArray(var_5ca6504d))
	{
		var_5ca6504d = Array(var_5ca6504d);
	}
	var_5ca6504d[var_5ca6504d.size] = util::spawn_model("collision_clip_512x512x512", (-28485.6, 7878.21, 1130.5), (0, 0, 0));
	if(!isdefined(var_5ca6504d))
	{
		var_5ca6504d = [];
	}
	else if(!IsArray(var_5ca6504d))
	{
		var_5ca6504d = Array(var_5ca6504d);
	}
	var_5ca6504d[var_5ca6504d.size] = util::spawn_model("collision_clip_512x512x512", (-30513.5, 10410.2, 1130.5), VectorScale((0, 1, 0), 45));
	if(!isdefined(var_5ca6504d))
	{
		var_5ca6504d = [];
	}
	else if(!IsArray(var_5ca6504d))
	{
		var_5ca6504d = Array(var_5ca6504d);
	}
	var_5ca6504d[var_5ca6504d.size] = util::spawn_model("collision_clip_512x512x512", (-31401.6, 7406.21, 1130.5), (0, 0, 0));
	if(!isdefined(var_5ca6504d))
	{
		var_5ca6504d = [];
	}
	else if(!IsArray(var_5ca6504d))
	{
		var_5ca6504d = Array(var_5ca6504d);
	}
	var_5ca6504d[var_5ca6504d.size] = util::spawn_model("collision_clip_512x512x512", (-28479.6, -3223.79, 1130.5), (0, 0, 0));
	if(!isdefined(var_5ca6504d))
	{
		var_5ca6504d = [];
	}
	else if(!IsArray(var_5ca6504d))
	{
		var_5ca6504d = Array(var_5ca6504d);
	}
	var_5ca6504d[var_5ca6504d.size] = util::spawn_model("collision_clip_512x512x512", (-30507.5, -691.848, 1130.5), VectorScale((0, 1, 0), 45));
	if(!isdefined(var_5ca6504d))
	{
		var_5ca6504d = [];
	}
	else if(!IsArray(var_5ca6504d))
	{
		var_5ca6504d = Array(var_5ca6504d);
	}
	var_5ca6504d[var_5ca6504d.size] = util::spawn_model("collision_clip_512x512x512", (-28481.6, -3221.79, 1130.5), (0, 0, 0));
	foreach(mdl in var_5ca6504d)
	{
		mdl disconnectpaths(2, 0);
		mdl Hide();
		mdl notsolid();
	}
}

/*
	Name: on_player_connect
	Namespace: training_sim
	Checksum: 0x1A60D990
	Offset: 0x1560
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function on_player_connect()
{
	/#
		self thread function_e22afa2c();
	#/
}

/*
	Name: on_player_spawned
	Namespace: training_sim
	Checksum: 0x68BC8B88
	Offset: 0x1588
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
	LUI = self GetLuiMenu("TrainingSim");
	if(isdefined(LUI))
	{
		self CloseLUIMenu(LUI);
	}
}

/*
	Name: function_b9b9b898
	Namespace: training_sim
	Checksum: 0xE1A6ACC1
	Offset: 0x15E8
	Size: 0x175
	Parameters: 0
	Flags: None
*/
function function_b9b9b898()
{
	if(!isdefined(level.var_6de9c3a5))
	{
		level.var_6de9c3a5 = [];
		var_6de9c3a5 = struct::get_script_bundle_list("trainingsimrating", "rating_list");
		foreach(var_d70cfeea in var_6de9c3a5)
		{
			var_1a07fad9 = struct::get_script_bundle("trainingsimrating", var_d70cfeea);
			level.var_6de9c3a5[index] = spawnstruct();
			level.var_6de9c3a5[index].var_92142c80 = var_1a07fad9.var_92142c80;
			level.var_6de9c3a5[index].var_1253f065 = var_1a07fad9.var_1253f065;
			level.var_6de9c3a5[index].var_9f813737 = var_1a07fad9.var_9f813737;
		}
	}
}

/*
	Name: function_a91b6cca
	Namespace: training_sim
	Checksum: 0x87E94E9
	Offset: 0x1768
	Size: 0x15D
	Parameters: 0
	Flags: None
*/
function function_a91b6cca()
{
	if(!(isdefined(level.var_a91b6cca) && level.var_a91b6cca))
	{
		level.var_a91b6cca = 1;
		foreach(beacon in struct::get_array("round_beacon", "script_noteworthy"))
		{
			e_trig = GetEnt(beacon.targetname, "target");
			beacon.prompt = safehouse::function_a8960cf7(e_trig, &"cp_safehouse_training_nextround", &"CP_SH_CAIRO_TRAINING_START_ROUND", &function_daea15a5, 0);
			beacon.prompt safehouse::function_e04cba0f();
			beacon.prompt.beacon = beacon;
		}
	}
}

/*
	Name: function_daea15a5
	Namespace: training_sim
	Checksum: 0x99884F8B
	Offset: 0x18D0
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_daea15a5(e_player)
{
	self.beacon notify("trigger", e_player);
}

/*
	Name: function_cc13d7aa
	Namespace: training_sim
	Checksum: 0xCF0B6A46
	Offset: 0x1900
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_cc13d7aa()
{
	v_spawn_pos = self.var_a18380a7.origin + VectorScale((0, 0, 1), 50);
	self.var_77104b83 = util::spawn_model("p7_sim_training_icon", v_spawn_pos, self.var_a18380a7.angles);
	self.var_77104b83.var_792a209 = v_spawn_pos;
	self.var_77104b83.var_3c66c303 = 0;
	self.var_77104b83 thread function_89e36314();
}

/*
	Name: function_d03d00c6
	Namespace: training_sim
	Checksum: 0xAA3A7F0B
	Offset: 0x19B0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_d03d00c6()
{
	if(SessionModeIsSystemlink())
	{
		return;
	}
	precacheLeaderboards("LB_CP_TRAINING_SIM");
}

/*
	Name: function_89e36314
	Namespace: training_sim
	Checksum: 0xA43B6CAB
	Offset: 0x19F0
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_89e36314()
{
	self endon("death");
	while(1)
	{
		if(self.var_3c66c303 != 2)
		{
			if(self.var_3c66c303 == 0)
			{
			}
			else
			{
			}
			var_53a79e45 = 45;
			if(self.var_3c66c303 == 0)
			{
			}
			else
			{
			}
			var_ad74c1fa = 2.5;
			if(self.var_3c66c303 == 0)
			{
			}
			else
			{
			}
			n_accel = 0.7;
			while(self.var_3c66c303 != 2)
			{
				self moveto(self.var_792a209 + (0, 0, var_53a79e45), var_ad74c1fa, n_accel, n_accel);
				self waittill("movedone");
				wait(0.15);
				var_53a79e45 = var_53a79e45 * -1;
				self PlayLoopSound("veh_mapper_drone_main");
			}
		}
		wait(0.2);
	}
}

/*
	Name: function_cf1101c0
	Namespace: training_sim
	Checksum: 0xAAAF1DA5
	Offset: 0x1B40
	Size: 0x1C7
	Parameters: 0
	Flags: None
*/
function function_cf1101c0()
{
	self.var_77104b83.e_fx = self.var_77104b83 FX::Play("round_beacon_moving", self.var_77104b83.origin, self.var_77104b83.angles, "movedone", 1);
	self.var_77104b83.var_3c66c303 = 2;
	self.var_77104b83.var_792a209 = self.var_a18380a7.origin + VectorScale((0, 0, 1), 180);
	self.var_77104b83 moveto(self.var_77104b83.var_792a209, 2, 1.25, 0.25);
	self.var_77104b83 playsound("veh_mapper_drone_ping");
	self.var_77104b83 playsound("veh_beacon_ball_move_start");
	self.var_77104b83 PlayLoopSound("veh_mapper_drone_move");
	self.var_77104b83 waittill("movedone");
	self.var_77104b83.e_fx = self.var_77104b83 FX::Play("round_beacon_disabled", self.var_77104b83.origin, self.var_77104b83.angles, "round_beacon_moving", 1);
	self.var_77104b83.var_3c66c303 = 1;
}

/*
	Name: function_fcd1719a
	Namespace: training_sim
	Checksum: 0xE09728BF
	Offset: 0x1D10
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_fcd1719a()
{
	self.var_77104b83.e_fx = self.var_77104b83 FX::Play("round_beacon_moving", self.var_77104b83.origin, self.var_77104b83.angles, "movedone", 1);
	self.var_77104b83.var_3c66c303 = 2;
	self.var_77104b83.var_792a209 = self.var_a18380a7.origin + VectorScale((0, 0, 1), 50);
	self.var_77104b83 moveto(self.var_77104b83.var_792a209, 1.5, 0.3, 1.1);
	self.var_77104b83 waittill("movedone");
	self.var_77104b83.var_3c66c303 = 0;
	self.var_77104b83.e_fx = self.var_77104b83 FX::Play("round_beacon_enabled", self.var_77104b83.origin, self.var_77104b83.angles, "round_beacon_moving", 1);
	self.var_77104b83 playsound("veh_mapper_drone_ping");
	self.var_77104b83 playsound("veh_beacon_ball_move_start");
}

/*
	Name: teleport_player
	Namespace: training_sim
	Checksum: 0x9941D58D
	Offset: 0x1EC8
	Size: 0xE3
	Parameters: 1
	Flags: None
*/
function teleport_player(var_cc1de81f)
{
	self function_9ab09984();
	self.var_bd5ad7fc = var_cc1de81f;
	self Unlink();
	a_spawn_points = get_struct_array("training_sim_spawn_point", "script_noteworthy");
	s_spawn_point = Array::random(a_spawn_points);
	self SetOrigin(s_spawn_point.origin);
	util::wait_network_frame();
	self SetPlayerAngles(s_spawn_point.angles);
}

/*
	Name: function_17f2cd2f
	Namespace: training_sim
	Checksum: 0xDCE5EDA5
	Offset: 0x1FB8
	Size: 0x203
	Parameters: 0
	Flags: None
*/
function function_17f2cd2f()
{
	if(self.var_d6d35c88 == level.var_6de9c3a5.size)
	{
		return;
	}
	if(level.var_6de9c3a5[self.var_d6d35c88].var_92142c80 <= self.var_d1b47d51)
	{
		if(!(isdefined(self GetDStat("trainingSimStats", "ranksAchieved", self.var_d6d35c88)) && self GetDStat("trainingSimStats", "ranksAchieved", self.var_d6d35c88)))
		{
			self SetDStat("trainingSimStats", "ranksAchieved", self.var_d6d35c88, 1);
			self SetDStat("PlayerStatsByMap", "cp_sh_cairo", "completedDifficulties", self.var_d6d35c88, 1);
			self GiveUnlockToken(level.var_6de9c3a5[self.var_d6d35c88].var_1253f065);
			self AddPlayerStat("career_tokens", level.var_6de9c3a5[self.var_d6d35c88].var_1253f065);
			self AddRankXPValue("completed_training_sim_rating", level.var_6de9c3a5[self.var_d6d35c88].var_9f813737);
			self AddPlayerStat("CAREER_TRAINING_SIM", 1);
		}
		self.var_d6d35c88++;
		self SetLUIMenuData(self.var_43693cde, "currentRating", self.var_d6d35c88);
	}
}

/*
	Name: function_635d5e9d
	Namespace: training_sim
	Checksum: 0xAD39B4B
	Offset: 0x21C8
	Size: 0x91
	Parameters: 0
	Flags: None
*/
function function_635d5e9d()
{
	for(i = 0; i < 4; i++)
	{
		if(!(isdefined(self GetDStat("trainingSimStats", "ranksAchieved", i)) && self GetDStat("trainingSimStats", "ranksAchieved", i)))
		{
			return i;
		}
	}
	return 4;
}

/*
	Name: run
	Namespace: training_sim
	Checksum: 0x4B4B9012
	Offset: 0x2268
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function run(var_cc1de81f)
{
	self.var_8201758a = 1;
	self thread function_266c43bf(var_cc1de81f);
	self util::waittill_either("training_finished", "death");
	self thread function_a1fa0b8e();
	music::setmusicstate("underscore", self);
}

/*
	Name: function_a1fa0b8e
	Namespace: training_sim
	Checksum: 0xD22FD0CA
	Offset: 0x2300
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_a1fa0b8e()
{
	self endon("death");
	self endon("disconnect");
	self endon("hash_3a6467f0");
	wait(5);
	music::setmusicstate("underscore", self);
}

/*
	Name: function_266c43bf
	Namespace: training_sim
	Checksum: 0x793BBEEC
	Offset: 0x2350
	Size: 0x221
	Parameters: 1
	Flags: None
*/
function function_266c43bf(var_cc1de81f)
{
	self endon("disconnect");
	self thread teleport_player(var_cc1de81f);
	wait(0.05);
	self util::freeze_player_controls(1);
	self.var_24c69c09 = 1;
	self.var_d1b47d51 = 0;
	self.var_80e5e834 = 0;
	self.var_bcf55acc = [];
	self.var_d46900f9 = 0;
	self.var_2ded5a80 = 0;
	self.var_a46c7f73 = 0;
	self namespace_d00ec32::giveallabilities();
	self function_d2260497();
	if(self function_76f34311("cybercom_emergencyreserve") > 0)
	{
		self.lives = 1;
	}
	self util::streamer_wait(undefined, 0, 9);
	wait(1.2);
	self clientfield::increment_to_player("postfx_build_world", 1);
	self thread LUI::screen_fade_in(1.5, "white");
	CodeSetUIModelClientField(self, "safehouse.inTrainingSim", 1);
	self thread function_86a2dc30();
	function_cce02c2e();
	CleanUp();
	if(isdefined(self.var_43693cde))
	{
		self CloseLUIMenu(self.var_43693cde);
		self.var_43693cde = undefined;
	}
	if(isalive(self))
	{
		self notify("hash_1c919c84");
	}
	self.var_24c69c09 = undefined;
}

/*
	Name: CleanUp
	Namespace: training_sim
	Checksum: 0x449C074B
	Offset: 0x2580
	Size: 0x1CB
	Parameters: 0
	Flags: None
*/
function CleanUp()
{
	CodeSetUIModelClientField(self, "safehouse.inTrainingSim", 0);
	if(isdefined(self.var_a18380a7.prompt))
	{
		self.var_a18380a7.prompt safehouse::function_e04cba0f(self);
	}
	objectives::Hide("cp_safehouse_training_nextround", self);
	objectives::Hide("cp_safehouse_training_start", self);
	if(isdefined(self.var_a18380a7.e_fx))
	{
		self.var_a18380a7.e_fx delete();
	}
	if(isdefined(self.var_77104b83))
	{
		self.var_77104b83 delete();
	}
	a_enemies = GetAIArray(self.var_bd5ad7fc, "prefabname");
	foreach(e_enemy in a_enemies)
	{
		e_enemy delete();
	}
	delete_corpses();
	function_8c8a1672();
	function_65b24866();
}

/*
	Name: function_76550e47
	Namespace: training_sim
	Checksum: 0x30AD3CAF
	Offset: 0x2758
	Size: 0x1A7
	Parameters: 0
	Flags: None
*/
function function_76550e47()
{
	level.var_a6bed3c2 = [];
	var_d10f0e22 = table::load("gamedata/tables/cp/cp_training_sim.csv", "round", 1);
	a_rounds = getArrayKeys(var_d10f0e22);
	foreach(n_round in a_rounds)
	{
		var_23d730a4 = getArrayKeys(var_d10f0e22[n_round]);
		foreach(str_type in var_23d730a4)
		{
			n_count = var_d10f0e22[n_round][str_type];
			if(n_count > 0)
			{
				level.var_a6bed3c2[n_round][str_type] = n_count;
			}
		}
	}
}

/*
	Name: function_7f7e9ea5
	Namespace: training_sim
	Checksum: 0x5DCF13F2
	Offset: 0x2908
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_7f7e9ea5()
{
	level.var_4b30274 = table::load("gamedata/tables/cp/cp_training_sim.csv", "score", 1);
}

/*
	Name: function_86a2dc30
	Namespace: training_sim
	Checksum: 0x1438C8DE
	Offset: 0x2948
	Size: 0x99
	Parameters: 0
	Flags: None
*/
function function_86a2dc30()
{
	self endon("death");
	self endon("hash_1c919c84");
	self waittill("menuresponse", menu, response);
	while(response != "EndTrainingSim")
	{
		self waittill("menuresponse", menu, response);
	}
	self LUI::screen_fade_out(1.5, "black");
	self notify("hash_1c919c84");
}

/*
	Name: function_b5b532e8
	Namespace: training_sim
	Checksum: 0xB7609E8B
	Offset: 0x29F0
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_b5b532e8()
{
	var_762314d8 = function_d2614e32();
	e_trig = GetEnt(var_762314d8.targetname, "target");
	var_762314d8.prompt = safehouse::function_a8960cf7(e_trig, &"cp_safehouse_training_start", &"CP_SH_CAIRO_TRAINING_START_ROUND", &function_daea15a5, 0);
	var_762314d8.prompt safehouse::function_e04cba0f();
	var_762314d8.prompt.beacon = var_762314d8;
	objectives::show("cp_safehouse_training_start", self);
	self.var_77104b83.e_fx = self.var_77104b83 FX::Play("round_beacon_enabled", self.var_77104b83.origin, self.var_77104b83.angles, "round_beacon_moving", 1);
	var_762314d8.prompt safehouse::function_a8271940(self);
	var_762314d8 waittill("trigger");
	var_762314d8.prompt safehouse::function_e04cba0f(self);
	objectives::Hide("cp_safehouse_training_start", self);
}

/*
	Name: function_cce02c2e
	Namespace: training_sim
	Checksum: 0xEA4E13C1
	Offset: 0x2BA8
	Size: 0xC63
	Parameters: 0
	Flags: None
*/
function function_cce02c2e()
{
	self endon("death");
	self endon("hash_1c919c84");
	/#
		self thread function_453e055b();
	#/
	self.training_sim_round = 0;
	self.var_69051fdd = get_ent("sim_goal_volume", "targetname", 1);
	self.var_2328b30c = function_4041981f();
	self.var_a18380a7 = function_d2614e32();
	music::setmusicstate("ts_underscore", self);
	self notify("enable_cybercom");
	wait(2.5);
	LUI::screen_fade_out(0.1, "white");
	function_cc13d7aa();
	wait(0.3);
	LUI::screen_fade_in(1.5, "white");
	function_a91b6cca();
	self notify("hash_ce89933d");
	self util::freeze_player_controls(0);
	wait(0.25);
	self util::function_16c71b8(0);
	self notify("hash_2aca24c6");
	function_b5b532e8();
	self.var_43693cde = self OpenLUIMenu("TrainingSim");
	self SetDStat("trainingSimStats", "ranksAchieved", 0, 1);
	self.var_d6d35c88 = self function_635d5e9d();
	self.training_sim_round++;
	self SetLUIMenuData(self.var_43693cde, "training_sim_time_bonus", "");
	self SetLUIMenuData(self.var_43693cde, "round_num", "1");
	self SetLUIMenuData(self.var_43693cde, "score", "0");
	self SetLUIMenuData(self.var_43693cde, "roundStartTime", GetTime());
	self SetLUIMenuData(self.var_43693cde, "currentRating", self.var_d6d35c88);
	var_38184ced = 2;
	while(isdefined(level.var_a6bed3c2[self.training_sim_round]))
	{
		self.var_1e13e77e = self.var_a18380a7;
		self.var_a18380a7 = function_c9db2b14(self.var_1e13e77e);
		self thread function_7407182f(self.var_a18380a7.origin);
		thread function_cf1101c0();
		self SetLUIMenuData(self.var_43693cde, "round_num", "" + self.training_sim_round);
		wait(var_38184ced);
		delete_corpses();
		function_8c8a1672();
		function_30df2b91();
		function_49796025();
		var_23d730a4 = level.var_a6bed3c2[self.training_sim_round];
		self.var_4c79ddb8 = [];
		foreach(n_count in var_23d730a4)
		{
			if(str_type == "goaltime")
			{
				break;
			}
			var_8e7d3ece = undefined;
			a_spawners = function_d05904dc(str_type);
			a_spawners = Array::randomize(a_spawners);
			a_spawners = Array::merge_sort(a_spawners, &function_44933f23);
			var_b3d71f31 = 0;
			/#
				Assert(a_spawners.size, "Dev Block strings are not supported" + str_type + "Dev Block strings are not supported");
			#/
			for(i = 0; i < n_count; i++)
			{
				var_a59295c6 = undefined;
				SP = a_spawners[var_b3d71f31];
				var_b3d71f31++;
				if(var_b3d71f31 >= a_spawners.size)
				{
				}
				else
				{
				}
				var_b3d71f31 = var_b3d71f31;
				while(1)
				{
					e_spawned = SP spawner::spawn(1);
					if(isdefined(e_spawned))
					{
						e_spawned.var_a5c5977d = SP.origin[2];
						e_spawned thread function_6dbfd048(self);
						e_spawned Hide();
						e_spawned notsolid();
						e_spawned.takedamage = 0;
						e_spawned ai::set_ignoreall(1);
						if(SP.script_string === "spawn_at_spawner")
						{
							v_origin = e_spawned.origin;
						}
						else
						{
							v_origin = function_27b9fdd3(e_spawned, self.var_a18380a7.origin, var_8e7d3ece);
						}
						v_angles = VectorToAngles(self.origin - v_origin);
						e_spawned spawner::teleport_spawned(v_origin, v_angles);
						var_5e280b91 = RandomFloatRange(0.25, 0.45);
						wait(var_5e280b91);
						e_spawned show();
						e_spawned.takedamage = 1;
						e_spawned ai::set_ignoreall(0);
						e_spawned GetPerfectInfo(self, 1);
						e_spawned util::delay(1, "death", &solid);
						if(IsActor(e_spawned))
						{
							e_spawned thread function_9b1ae7e9(self);
						}
						else if(isVehicle(e_spawned))
						{
							e_spawned thread function_826a69d8(self);
						}
						if(!isdefined(var_8e7d3ece))
						{
							var_8e7d3ece = e_spawned.origin;
						}
						if(!isdefined(self.var_4c79ddb8))
						{
							self.var_4c79ddb8 = [];
						}
						else if(!IsArray(self.var_4c79ddb8))
						{
							self.var_4c79ddb8 = Array(self.var_4c79ddb8);
						}
						self.var_4c79ddb8[self.var_4c79ddb8.size] = e_spawned;
						break;
					}
					wait(0.05);
				}
			}
		}
		self notify("hash_a120a3f4", 0);
		music::setmusicstate("ts_combat", self);
		while(1)
		{
			var_bd6b575 = [];
			foreach(e_spawned in self.var_4c79ddb8)
			{
				if(isdefined(e_spawned) && isalive(e_spawned) && e_spawned.team != self.team)
				{
					var_bd6b575[var_bd6b575.size] = e_spawned;
				}
			}
			if(var_bd6b575.size <= 0)
			{
				break;
			}
			self.var_4c79ddb8 = var_bd6b575;
			wait(0.25);
		}
		self.var_4c79ddb8 = [];
		if(!isdefined(level.var_a6bed3c2[self.training_sim_round + 1]))
		{
			break;
		}
		music::setmusicstate("ts_underscore", self);
		objectives::show("cp_safehouse_training_nextround", self);
		function_fcd1719a();
		var_38184ced = 3.5;
		self.var_a18380a7.prompt safehouse::function_a8271940(self);
		self.var_a18380a7 waittill("trigger");
		self thread function_4837ece8(self.var_a18380a7);
		function_e8f80ed0();
		function_31f3ed94(self);
		self.var_a18380a7.prompt safehouse::function_e04cba0f(self);
		objectives::Hide("cp_safehouse_training_nextround", self);
		self.training_sim_round++;
	}
	wait(2);
	self util::freeze_player_controls(1);
	music::setmusicstate("ts_victory", self);
	self LUINotifyEvent(&"training_sim_complete", 0);
	wait(3);
	self LUI::screen_fade_out(2, "black");
	self util::freeze_player_controls(0);
	if(level.gameSkillLowest == 4)
	{
		self AddPlayerStat("career_training_sim_real", 1);
	}
}

/*
	Name: function_7407182f
	Namespace: training_sim
	Checksum: 0xBBE04DC6
	Offset: 0x3818
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_7407182f(var_19f0c7ba)
{
	var_878a2866 = var_19f0c7ba - self.origin;
	self util::freeze_player_controls(1);
	self StartCameraTween(0.3);
	self SetPlayerAngles((17, VectorToAngles(var_878a2866)[1], 0));
	wait(0.4);
	self util::freeze_player_controls(0);
}

/*
	Name: function_a92a30c4
	Namespace: training_sim
	Checksum: 0x2E8F4E74
	Offset: 0x38D8
	Size: 0x83
	Parameters: 2
	Flags: None
*/
function function_a92a30c4(var_6ec35b3f, var_fcbbec04)
{
	var_59fb42bf = ACos(VectorDot(var_6ec35b3f, var_fcbbec04) / length(var_6ec35b3f) * length(var_fcbbec04));
	return var_59fb42bf;
}

/*
	Name: function_44933f23
	Namespace: training_sim
	Checksum: 0xAF4881C2
	Offset: 0x3968
	Size: 0x3D
	Parameters: 2
	Flags: None
*/
function function_44933f23(sp1, sp2)
{
	if(sp1.script_string === "spawn_at_spawner")
	{
		return 1;
	}
	else
	{
		return 0;
	}
}

/*
	Name: function_49796025
	Namespace: training_sim
	Checksum: 0x9326BDD3
	Offset: 0x39B0
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_49796025()
{
	self.var_bcf55acc[self.training_sim_round] = spawnstruct();
	self.var_bcf55acc[self.training_sim_round].var_dbc3b44a = GetTime();
	self.var_bcf55acc[self.training_sim_round].headshots = 0;
	self.var_bcf55acc[self.training_sim_round].var_5004e3e9 = 0;
	self.var_bcf55acc[self.training_sim_round].var_827fa2cc = 0;
}

/*
	Name: function_e8f80ed0
	Namespace: training_sim
	Checksum: 0xD42AD6DF
	Offset: 0x3A60
	Size: 0x1EB
	Parameters: 0
	Flags: None
*/
function function_e8f80ed0()
{
	var_bc6c413b = self.var_bcf55acc[self.training_sim_round];
	if(isdefined(var_bc6c413b))
	{
		var_3313da6b = level.var_a6bed3c2[self.training_sim_round]["goaltime"];
		var_4cd10db3 = GetTime() - var_bc6c413b.var_dbc3b44a;
		n_round_time = var_4cd10db3 / 1000;
		var_8f752567 = n_round_time - var_3313da6b;
		var_35989c93 = 0;
		if(var_8f752567 < 0)
		{
			var_35989c93 = floor(Abs(var_8f752567 * 10));
		}
		var_bc6c413b.var_a3d7c1d0 = self.var_80e5e834;
		var_bc6c413b.n_time_ms = var_4cd10db3;
		var_bc6c413b.var_35989c93 = var_35989c93;
		self.var_80e5e834 = 0;
		if(var_35989c93 > 0)
		{
			self.var_d1b47d51 = self.var_d1b47d51 + var_35989c93;
			self function_a5ac6877();
			self function_17f2cd2f();
			self SetLUIMenuData(self.var_43693cde, "training_sim_time_bonus", "" + var_35989c93);
			self SetLUIMenuData(self.var_43693cde, "score", "" + self.var_d1b47d51);
		}
	}
}

/*
	Name: delete_corpses
	Namespace: training_sim
	Checksum: 0x4A04F49C
	Offset: 0x3C58
	Size: 0x141
	Parameters: 0
	Flags: None
*/
function delete_corpses()
{
	a_corpses = GetCorpseArray();
	foreach(e_corpse in a_corpses)
	{
		e_corpse delete();
	}
	a_corpses = GetEntArray("script_vehicle_corpse", "classname");
	foreach(e_corpse in a_corpses)
	{
		e_corpse delete();
	}
}

/*
	Name: function_8c8a1672
	Namespace: training_sim
	Checksum: 0xCFFC5349
	Offset: 0x3DA8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_8c8a1672()
{
	self clientfield::increment_to_player("cleanup_sim", 1);
}

/*
	Name: function_65b24866
	Namespace: training_sim
	Checksum: 0x70B675A5
	Offset: 0x3DD8
	Size: 0xE9
	Parameters: 0
	Flags: None
*/
function function_65b24866()
{
	a_dropped_weapons = GetDroppedWeapons();
	foreach(e_weapon in a_dropped_weapons)
	{
		if(isdefined(e_weapon) && Distance2DSquared(self.origin, e_weapon.origin) <= 5000 * 5000)
		{
			e_weapon delete();
		}
	}
}

/*
	Name: function_30df2b91
	Namespace: training_sim
	Checksum: 0x78A6DEE6
	Offset: 0x3ED0
	Size: 0x141
	Parameters: 0
	Flags: None
*/
function function_30df2b91()
{
	var_fed635a = GetWeapon("riotshield");
	if(!isdefined(var_fed635a))
	{
		return;
	}
	a_dropped_weapons = GetDroppedWeapons();
	foreach(e_weapon in a_dropped_weapons)
	{
		if(isdefined(e_weapon) && isdefined(e_weapon.item) && e_weapon.item == var_fed635a && Distance2DSquared(self.origin, e_weapon.origin) <= 5000 * 5000)
		{
			e_weapon delete();
		}
	}
}

/*
	Name: function_4837ece8
	Namespace: training_sim
	Checksum: 0x63CF1E0F
	Offset: 0x4020
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_4837ece8(var_a18380a7)
{
	self LUINotifyEvent(&"training_sim_round_complete", 0);
}

/*
	Name: function_c9db2b14
	Namespace: training_sim
	Checksum: 0x91252BDF
	Offset: 0x4058
	Size: 0xDF
	Parameters: 1
	Flags: None
*/
function function_c9db2b14(var_d8d3a227)
{
	var_23e56668 = get_struct_array("round_beacon", "script_noteworthy");
	if(isdefined(var_d8d3a227))
	{
		ArrayRemoveValue(var_23e56668, var_d8d3a227);
	}
	else
	{
		var_178d40cf = ArrayGetClosest(self.origin, var_23e56668);
		ArrayRemoveValue(var_23e56668, var_178d40cf);
	}
	var_a18380a7 = Array::random(var_23e56668);
	function_d4242515(var_a18380a7);
	return var_a18380a7;
}

/*
	Name: function_d2614e32
	Namespace: training_sim
	Checksum: 0x1375D909
	Offset: 0x4140
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_d2614e32()
{
	var_23e56668 = get_struct_array("round_beacon", "script_noteworthy");
	var_178d40cf = ArrayGetClosest(self.origin, var_23e56668);
	return var_178d40cf;
}

/*
	Name: function_4041981f
	Namespace: training_sim
	Checksum: 0x83646AA1
	Offset: 0x41A8
	Size: 0xBF
	Parameters: 0
	Flags: None
*/
function function_4041981f()
{
	var_23e56668 = get_struct_array("round_beacon", "script_noteworthy");
	foreach(var_a18380a7 in var_23e56668)
	{
		if(var_a18380a7.groupname === "tower1")
		{
			return var_a18380a7;
		}
	}
}

/*
	Name: function_6dbfd048
	Namespace: training_sim
	Checksum: 0x9D70D638
	Offset: 0x4270
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_6dbfd048(e_player)
{
	self endon("death");
	e_player waittill("death");
	objectives::Hide("cp_safehouse_training_nextround", e_player);
	objectives::Hide("cp_safehouse_training_start", e_player);
	self delete();
}

/*
	Name: function_27b9fdd3
	Namespace: training_sim
	Checksum: 0xC71499EC
	Offset: 0x42F8
	Size: 0x621
	Parameters: 3
	Flags: None
*/
function function_27b9fdd3(e_spawned, v_pos, var_8e7d3ece)
{
	var_88ea9601 = e_spawned GetAbsMaxs();
	var_eea2d76b = e_spawned GetAbsMins();
	n_size = max(var_88ea9601[0] - var_eea2d76b[0], var_88ea9601[1] - var_eea2d76b[1]);
	n_height = var_88ea9601[2] - var_eea2d76b[2];
	var_567a389e = undefined;
	if(isdefined(var_8e7d3ece))
	{
		v_pos = var_8e7d3ece;
		var_ac2f333b = n_size;
		var_819d27f5 = var_ac2f333b + n_size * 5;
		/#
			if(GetDvarInt("Dev Block strings are not supported", 0))
			{
				sphere(v_pos, 20, e_spawned.script_color, 1, 0, 10, 600);
			}
		#/
	}
	else if(e_spawned.script_string === "spawn_between_towers")
	{
		var_bbcaca07 = Distance2D(e_spawned.spawner.origin, self.var_2328b30c.origin);
		var_ac2f333b = 0;
		var_819d27f5 = e_spawned.spawner.radius;
		var_226a15c3 = (self.var_a18380a7.origin[0], self.var_a18380a7.origin[1], e_spawned.spawner.origin[2]);
		var_c4a9fefc = (self.var_1e13e77e.origin[0], self.var_1e13e77e.origin[1], var_226a15c3[2]);
		v_pos = var_226a15c3 + VectorNormalize(var_c4a9fefc - var_226a15c3) * var_bbcaca07;
	}
	else if(isdefined(v_pos))
	{
		var_ac2f333b = 0;
		var_819d27f5 = var_ac2f333b + 1000 + n_size * 3;
		v_pos = (v_pos[0], v_pos[1], e_spawned.var_a5c5977d);
	}
	else
	{
		v_pos = self.origin;
		var_ac2f333b = max(500, n_size);
		var_819d27f5 = var_ac2f333b + n_size * 3;
		var_567a389e = AnglesToForward(self.angles) * -10;
	}
	n_half_height = n_height / 2;
	var_b61860b6 = n_size / 2;
	var_2f3e48f3 = n_size / 2;
	var_fdf395af = [];
	v_pos = (v_pos[0], v_pos[1], e_spawned.var_a5c5977d);
	if(isdefined(var_567a389e))
	{
		queryResult = PositionQuery_Source_Navigation(v_pos, var_ac2f333b, var_819d27f5, n_half_height, var_b61860b6, e_spawned, var_2f3e48f3, var_567a389e);
	}
	else
	{
		queryResult = PositionQuery_Source_Navigation(v_pos, var_ac2f333b, var_819d27f5, n_half_height, var_b61860b6, e_spawned, var_2f3e48f3);
	}
	if(queryResult.data.size)
	{
		return queryResult.data[RandomInt(queryResult.data.size)].origin;
	}
	/#
		if(GetDvarInt("Dev Block strings are not supported", 0))
		{
			foreach(point in var_fdf395af)
			{
				debugstar(point.origin, 600, e_spawned.script_color);
			}
		}
	#/
	queryResult = PositionQuery_Source_Navigation(self.var_a18380a7.origin, var_ac2f333b, var_819d27f5, n_half_height, var_b61860b6, e_spawned, var_2f3e48f3);
	if(queryResult.data.size)
	{
		return queryResult.data[RandomInt(queryResult.data.size)].origin;
	}
	return e_spawned.origin;
}

/*
	Name: function_d05904dc
	Namespace: training_sim
	Checksum: 0x5BDBBA29
	Offset: 0x4928
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_d05904dc(str_type)
{
	a_spawners = util::query_ents(associativeArray("classname", str_type, "vehicletype", str_type), 0, [], 0, 1);
	a_spawners = function_ca448a30(a_spawners, self.var_bd5ad7fc, "prefabname");
	a_spawners = Array::filter(a_spawners, 0, &is_spawner);
	return a_spawners;
}

/*
	Name: is_spawner
	Namespace: training_sim
	Checksum: 0x5AC4BD2E
	Offset: 0x49F0
	Size: 0x21
	Parameters: 1
	Flags: None
*/
function is_spawner(ent)
{
	return IsSpawner(ent);
}

/*
	Name: get_ent_array
	Namespace: training_sim
	Checksum: 0xD3773838
	Offset: 0x4A20
	Size: 0x83
	Parameters: 3
	Flags: None
*/
function get_ent_array(str_value, str_key, b_ignore_spawners)
{
	if(!isdefined(b_ignore_spawners))
	{
		b_ignore_spawners = 0;
	}
	a_ents = GetEntArray(self.var_bd5ad7fc, "prefabname", b_ignore_spawners);
	a_ents = function_ca448a30(a_ents, str_value, str_key);
	return a_ents;
}

/*
	Name: get_ent
	Namespace: training_sim
	Checksum: 0x3D6890B1
	Offset: 0x4AB0
	Size: 0x5D
	Parameters: 3
	Flags: None
*/
function get_ent(str_value, str_key, b_ignore_spawners)
{
	a_ents = get_ent_array(str_value, str_key, b_ignore_spawners);
	if(a_ents.size)
	{
		return a_ents[0];
	}
	return undefined;
}

/*
	Name: function_aeb2edb
	Namespace: training_sim
	Checksum: 0x75FC021
	Offset: 0x4B18
	Size: 0x73
	Parameters: 2
	Flags: None
*/
function function_aeb2edb(str_value, str_key)
{
	a_ents = GetActorArray(self.var_bd5ad7fc, "prefabname");
	if(isdefined(str_value))
	{
		a_ents = function_ca448a30(a_ents, str_value, str_key);
	}
	return a_ents;
}

/*
	Name: get_struct_array
	Namespace: training_sim
	Checksum: 0xD86D7ED9
	Offset: 0x4B98
	Size: 0x81
	Parameters: 2
	Flags: None
*/
function get_struct_array(str_value, str_key)
{
	var_5ea0ba06 = struct::get_array(self.var_bd5ad7fc, "prefabname");
	var_389e3f9d = struct::get_array(str_value, str_key);
	return ArrayIntersect(var_5ea0ba06, var_389e3f9d);
}

/*
	Name: on_ai_spawned
	Namespace: training_sim
	Checksum: 0xAE954B43
	Offset: 0x4C28
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function on_ai_spawned()
{
	self endon("death");
	if(self.script_noteworthy === "training_spawners")
	{
		self.var_72f54197 = function_c1a5b344();
		self.var_b0ac175a = 0;
		util::wait_network_frame();
		self clientfield::set("rez_in", 1);
		if(self function_29281420())
		{
			self clientfield::set("enable_ethereal_overlay", 1);
		}
	}
	else if(isdefined(self.var_6319d77b))
	{
		self.var_47c44e16 = self.var_6319d77b.var_bd5ad7fc;
	}
}

/*
	Name: on_ai_damage
	Namespace: training_sim
	Checksum: 0xE6CA6235
	Offset: 0x4D10
	Size: 0x26F
	Parameters: 1
	Flags: None
*/
function on_ai_damage(var_d4457625)
{
	if(isPlayer(var_d4457625.eAttacker) && (isdefined(var_d4457625.eAttacker.var_24c69c09) && var_d4457625.eAttacker.var_24c69c09))
	{
		var_bc6c413b = var_d4457625.eAttacker.var_bcf55acc[var_d4457625.eAttacker.training_sim_round];
		if(isdefined(var_bc6c413b) && isdefined(self.var_72f54197))
		{
			n_multiplier = 1;
			if(IsInArray(Array("helmet", "head", "neck"), var_d4457625.sHitLoc))
			{
				if(isdefined(self.var_72f54197["headshot_multiplier"]))
				{
					n_multiplier = self.var_72f54197["headshot_multiplier"];
					var_bc6c413b.headshots++;
					var_d4457625.eAttacker.var_d46900f9++;
				}
			}
			else if(IsInArray(Array("torso_upper", "torso_mid"), var_d4457625.sHitLoc))
			{
				if(isdefined(self.var_72f54197["torso_multiplier"]))
				{
					n_multiplier = self.var_72f54197["torso_multiplier"];
					var_bc6c413b.var_5004e3e9++;
					var_d4457625.eAttacker.var_2ded5a80++;
				}
			}
			else if(isdefined(self.var_72f54197["legs_multiplier"]))
			{
				n_multiplier = self.var_72f54197["legs_multiplier"];
				var_bc6c413b.var_827fa2cc++;
				var_d4457625.eAttacker.var_a46c7f73++;
			}
			if(n_multiplier > self.var_b0ac175a)
			{
				self.var_b0ac175a = n_multiplier;
			}
		}
	}
}

/*
	Name: on_ai_killed
	Namespace: training_sim
	Checksum: 0x72DA7411
	Offset: 0x4F88
	Size: 0x17B
	Parameters: 1
	Flags: None
*/
function on_ai_killed(var_d4457625)
{
	if(isPlayer(var_d4457625.eAttacker) && (isdefined(var_d4457625.eAttacker.var_24c69c09) && var_d4457625.eAttacker.var_24c69c09))
	{
		player = var_d4457625.eAttacker;
		var_a3d7c1d0 = self.var_72f54197["basescore"];
		n_score = floor(var_a3d7c1d0 * self.var_b0ac175a);
		player.var_80e5e834 = player.var_80e5e834 + n_score;
		player.var_d1b47d51 = player.var_d1b47d51 + n_score;
		player thread function_a5ac6877();
		player SetLUIMenuData(player.var_43693cde, "score", "" + player.var_d1b47d51);
		player function_17f2cd2f();
	}
}

/*
	Name: function_a5ac6877
	Namespace: training_sim
	Checksum: 0xDD439CC7
	Offset: 0x5110
	Size: 0x5D
	Parameters: 0
	Flags: None
*/
function function_a5ac6877()
{
	self endon("death");
	self endon("hash_1c919c84");
	wait(0.05);
	self.score = Int(self.var_d1b47d51);
	self.pers["score"] = self.score;
}

/*
	Name: function_c1a5b344
	Namespace: training_sim
	Checksum: 0x8733AAF9
	Offset: 0x5178
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_c1a5b344()
{
	foreach(str_type in getArrayKeys(level.var_4b30274))
	{
		if(IsSubStr(self.classname, str_type) || (isdefined(self.vehicleType) && IsSubStr(self.vehicleType, str_type)))
		{
			return level.var_4b30274[str_type];
		}
	}
}

/*
	Name: function_d4242515
	Namespace: training_sim
	Checksum: 0x4350DCAF
	Offset: 0x5268
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_d4242515(var_a18380a7)
{
	a_volumes = GetEntArray("info_volume", "classname");
	a_volumes = function_ca448a30(a_volumes, var_a18380a7.var_47c44e16, "prefabname");
	a_volumes = function_ca448a30(a_volumes, var_a18380a7.groupname, "groupname");
	var_a18380a7.var_f66aa772 = function_5ecb6fa8(var_a18380a7, "inner_volume");
	var_a18380a7.var_20087b79 = function_5ecb6fa8(var_a18380a7, "middle_volume");
	var_a18380a7.var_2f9a05d7 = function_5ecb6fa8(var_a18380a7, "outer_volume");
	var_a18380a7.var_69051fdd = self.var_69051fdd;
}

/*
	Name: function_5ecb6fa8
	Namespace: training_sim
	Checksum: 0x3C4AB62B
	Offset: 0x5398
	Size: 0x103
	Parameters: 2
	Flags: None
*/
function function_5ecb6fa8(var_a18380a7, str_volume)
{
	a_volumes = GetEntArray("info_volume", "classname");
	a_volumes = function_ca448a30(a_volumes, var_a18380a7.var_47c44e16, "prefabname");
	a_volumes = function_ca448a30(a_volumes, var_a18380a7.groupname, "groupname");
	a_volumes = function_ca448a30(a_volumes, str_volume, "targetname");
	/#
		Assert(a_volumes.size == 1, "Dev Block strings are not supported" + str_volume);
	#/
	return a_volumes[0];
}

/*
	Name: function_9b1ae7e9
	Namespace: training_sim
	Checksum: 0xB9E89DDB
	Offset: 0x54A8
	Size: 0x497
	Parameters: 1
	Flags: None
*/
function function_9b1ae7e9(player)
{
	self endon("death");
	if(isdefined(self.script_goalvolume))
	{
		self SetGoal(function_5ecb6fa8(player.var_a18380a7, self.script_goalvolume), 1);
	}
	else
	{
		self SetGoal(player.var_a18380a7.var_69051fdd, 1);
	}
	player waittill("hash_a120a3f4");
	while(player function_aeb2edb().size > 2)
	{
		wait(RandomFloatRange(0.6666666, 1.333333));
	}
	if(!IsSubStr(self.classname, "warlord"))
	{
		self.var_c9a40973 = GetTime() + 2500;
		while(1)
		{
			var_f2053c49 = Distance2DSquared(self.origin, player.var_a18380a7.origin);
			var_fba032a4 = Distance2DSquared(self.origin, player.origin);
			var_77f64226 = Distance2DSquared(player.origin, player.var_a18380a7.origin);
			if(var_fba032a4 > 450 * 450 || var_77f64226 < 450 * 450)
			{
				self SetGoal(player.var_a18380a7.var_f66aa772, 1);
			}
			if(!GetDvarInt("tu1_trainingSimDisableTeleport", 1))
			{
				if(var_f2053c49 >= 450 * 450 && var_77f64226 >= 450 * 450 && var_fba032a4 >= 300 * 300)
				{
					if(function_93405f3(self, player))
					{
						self.var_c9a40973 = GetTime() + 2500;
					}
					else if(GetTime() > self.var_c9a40973)
					{
						self clientfield::set("rez_out", 1);
						self ai::set_ignoreall(1);
						self Hide();
						v_origin = player.var_a18380a7.origin;
						v_origin = v_origin + AnglesToForward(player.var_a18380a7.angles) * RandomFloatRange(-150, -20);
						v_origin = v_origin + AnglesToRight(player.var_a18380a7.angles) * RandomFloatRange(-150, 150);
						v_angles = VectorToAngles(player.origin - v_origin);
						self spawner::teleport_spawned(v_origin, v_angles);
						util::wait_network_frame();
						self clientfield::set("rez_in", 1);
						self ai::set_ignoreall(0);
						self show();
						break;
					}
				}
				else
				{
					self.var_c9a40973 = GetTime() + 2500;
				}
			}
			wait(0.25);
		}
	}
}

/*
	Name: function_93405f3
	Namespace: training_sim
	Checksum: 0xD9BA518
	Offset: 0x5948
	Size: 0x159
	Parameters: 2
	Flags: None
*/
function function_93405f3(e_enemy, player)
{
	n_player_fov = GetDvarFloat("cg_fov");
	n_dot_check = cos(n_player_fov);
	v_pos = e_enemy.origin;
	v_eye = player GetEye();
	v_facing = AnglesToForward(player getPlayerAngles());
	v_to_ent = VectorNormalize(v_pos - v_eye);
	n_dot = VectorDot(v_facing, v_to_ent);
	if(n_dot > n_dot_check)
	{
		if(e_enemy SightConeTrace(v_eye, player) != 0)
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_826a69d8
	Namespace: training_sim
	Checksum: 0xFE6DDD9
	Offset: 0x5AB0
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_826a69d8(player)
{
	self SetGoal(player);
}

/*
	Name: function_5c685ad1
	Namespace: training_sim
	Checksum: 0x9F82CF13
	Offset: 0x5AE0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_5c685ad1()
{
	self waittill("death");
	if(isdefined(self) && !self function_9d7569cc())
	{
		self clientfield::set("enable_ethereal_overlay", 0);
	}
}

/*
	Name: function_e340d355
	Namespace: training_sim
	Checksum: 0x30C62532
	Offset: 0x5B38
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_e340d355()
{
	if(self function_9d7569cc())
	{
		self thread function_44aa9d22();
		self thread function_efd62bc8();
	}
	else
	{
		self thread function_5c685ad1();
	}
}

/*
	Name: function_9d7569cc
	Namespace: training_sim
	Checksum: 0xBF3791AB
	Offset: 0x5BA8
	Size: 0x31
	Parameters: 0
	Flags: None
*/
function function_9d7569cc()
{
	return !isVehicle(self) && IsActor(self);
}

/*
	Name: function_29281420
	Namespace: training_sim
	Checksum: 0xBC1FA851
	Offset: 0x5BE8
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_29281420()
{
	return self.team == "axis";
}

/*
	Name: function_44aa9d22
	Namespace: training_sim
	Checksum: 0xB012988B
	Offset: 0x5C08
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function function_44aa9d22()
{
	self endon("hash_70947625");
	self waittill("actor_corpse", e_corpse);
	if(isdefined(e_corpse))
	{
		e_corpse clientfield::set("rez_out", 1);
	}
	util::wait_network_frame();
	if(isdefined(self))
	{
		self playsound("evt_ai_derez");
	}
	wait(0.2);
	if(isdefined(e_corpse))
	{
		e_corpse delete();
	}
	if(isdefined(self))
	{
		self notify("hash_70947625");
	}
}

/*
	Name: function_efd62bc8
	Namespace: training_sim
	Checksum: 0xEC36277B
	Offset: 0x5CE0
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function function_efd62bc8()
{
	self endon("hash_70947625");
	self waittill("start_ragdoll");
	if(self.var_d78410bf === 1)
	{
		wait(4);
	}
	if(isdefined(self))
	{
		self clientfield::set("rez_out", 1);
	}
	util::wait_network_frame();
	if(isdefined(self))
	{
		self playsound("evt_ai_derez");
	}
	wait(0.2);
	if(isdefined(self))
	{
		self delete();
		self notify("hash_70947625");
	}
}

/*
	Name: function_31f3ed94
	Namespace: training_sim
	Checksum: 0x976E6AE0
	Offset: 0x5DB8
	Size: 0xE1
	Parameters: 1
	Flags: None
*/
function function_31f3ed94(e_player)
{
	a_weapons = e_player GetWeaponsList();
	foreach(weapon in a_weapons)
	{
		e_player giveMaxAmmo(weapon);
		e_player SetWeaponAmmoClip(weapon, weapon.clipSize);
	}
}

/*
	Name: function_6d04e0c2
	Namespace: training_sim
	Checksum: 0xF1BD46FB
	Offset: 0x5EA8
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_6d04e0c2()
{
	highestScore = self GetDStat("trainingSimStats", "highestScore");
	if(self.var_d1b47d51 > highestScore)
	{
		self SetDStat("trainingSimStats", "highestScore", Int(self.var_d1b47d51));
		self SetDStat("trainingSimStats", "highestRound", Int(self.training_sim_round));
		self SetDStat("trainingSimStats", "oneHitKills", self.var_d46900f9);
		self SetDStat("trainingSimStats", "torsoHits", self.var_2ded5a80);
		self SetDStat("trainingSimStats", "limbHits", self.var_a46c7f73);
	}
}

/*
	Name: upload_leaderboards
	Namespace: training_sim
	Checksum: 0xD8BEC7
	Offset: 0x6000
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function upload_leaderboards()
{
	self uploadleaderboards();
}

/*
	Name: function_3206b93a
	Namespace: training_sim
	Checksum: 0xEBF993E8
	Offset: 0x6028
	Size: 0x29B
	Parameters: 0
	Flags: None
*/
function function_3206b93a()
{
	if(self Decorations::function_59727018())
	{
		self GiveDecoration("cp_medal_training_sim");
	}
	if(isdefined(self.var_d6d35c88))
	{
		if(self.var_d6d35c88 == level.var_6de9c3a5.size)
		{
			self achievements::give_achievement("CP_TRAINING_GOLD");
		}
	}
	if(Decorations::function_bea4ff57())
	{
		self GiveDecoration("cp_medal_all_weapon_unlocks");
	}
	self.var_cae9ddc4 = self OpenLUIMenu("TrainingSimAAR");
	self SetLUIMenuData(self.var_cae9ddc4, "training_sim_aar_score", "" + self.var_d1b47d51);
	self SetLUIMenuData(self.var_cae9ddc4, "training_sim_aar_round", "" + self.training_sim_round);
	self SetLUIMenuData(self.var_cae9ddc4, "training_sim_aar_lethals", "" + self.var_d46900f9);
	self SetLUIMenuData(self.var_cae9ddc4, "training_sim_aar_torsohits", "" + self.var_2ded5a80);
	self SetLUIMenuData(self.var_cae9ddc4, "training_sim_aar_limbhits", "" + self.var_a46c7f73);
	self function_6d04e0c2();
	UploadStats(self);
	self function_9ab09984();
	self waittill("menuresponse", menu, response);
	while(response != "closed")
	{
		self waittill("menuresponse", menu, response);
	}
	self CloseLUIMenu(self.var_cae9ddc4);
}

/*
	Name: function_9ab09984
	Namespace: training_sim
	Checksum: 0x34D56D55
	Offset: 0x62D0
	Size: 0x81
	Parameters: 0
	Flags: None
*/
function function_9ab09984()
{
	self globallogic_player::function_7bdf5497();
	self.pers["score"] = 0;
	self.pers["kills"] = 0;
	self.pers["incaps"] = 0;
	self.pers["assists"] = 0;
	self.pers["revives"] = 0;
}

/*
	Name: function_e22afa2c
	Namespace: training_sim
	Checksum: 0x39E808F6
	Offset: 0x6360
	Size: 0x107
	Parameters: 0
	Flags: None
*/
function function_e22afa2c()
{
	/#
		self endon("disconnect");
		while(1)
		{
			var_dd6f0201 = GetDvarInt("Dev Block strings are not supported");
			var_e2c1fe1f = GetDvarInt("Dev Block strings are not supported");
			if(var_dd6f0201)
			{
				function_11a03fdc(GetDvarInt("Dev Block strings are not supported"));
				end_round();
				SetDvar("Dev Block strings are not supported", 0);
			}
			else if(var_e2c1fe1f)
			{
				end_round();
				SetDvar("Dev Block strings are not supported", 0);
			}
			wait(0.3);
		}
	#/
}

/*
	Name: function_453e055b
	Namespace: training_sim
	Checksum: 0x9BAF38FF
	Offset: 0x6470
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_453e055b()
{
	/#
		while(1)
		{
			while(!GetDvarInt("Dev Block strings are not supported", 0))
			{
				wait(1);
			}
			end_round();
			self waittill("hash_a120a3f4");
		}
	#/
}

/*
	Name: end_round
	Namespace: training_sim
	Checksum: 0x61A4F951
	Offset: 0x64D8
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function end_round()
{
	/#
		if(!isdefined(self.var_4c79ddb8))
		{
			self waittill("hash_a120a3f4");
		}
		if(self.var_4c79ddb8.size)
		{
			wait(5);
			level Array::run_all(Array::remove_dead(self.var_4c79ddb8), &kill);
		}
		wait(5);
		self.var_a18380a7.prompt function_daea15a5(self);
	#/
}

/*
	Name: function_11a03fdc
	Namespace: training_sim
	Checksum: 0x514A4E35
	Offset: 0x6578
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_11a03fdc(n_round)
{
	/#
		self.training_sim_round = n_round - 1;
	#/
}

