#using scripts\cp\_achievements;
#using scripts\cp\_bb;
#using scripts\cp\_callbacks;
#using scripts\cp\_laststand;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_globallogic;
#using scripts\cp\gametypes\_globallogic_score;
#using scripts\cp\gametypes\_globallogic_spawn;
#using scripts\cp\gametypes\_globallogic_ui;
#using scripts\cp\gametypes\_globallogic_utils;
#using scripts\cp\gametypes\_killcam;
#using scripts\cp\gametypes\_save;
#using scripts\cp\gametypes\_spawning;
#using scripts\cp\gametypes\_spawnlogic;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\music_shared;
#using scripts\shared\player_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_c03736ba;

/*
	Name: function_c35e6aab
	Namespace: namespace_c03736ba
	Checksum: 0x1019FAED
	Offset: 0x8A0
	Size: 0x63
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_c35e6aab()
{
	namespace_71e9cb84::function_50f16166("playercorpse", "hide_body", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "killcam_menu", 1, 1, "int");
}

/*
	Name: function_d290ebfa
	Namespace: namespace_c03736ba
	Checksum: 0x58B61659
	Offset: 0x910
	Size: 0x373
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_2282eece::function_c35e6aab();
	level.var_76c6e677 = function_57b2be45(function_6f1ebe57("g_gametype"));
	namespace_82b91a51::function_4a3f3ebe(0, 9);
	namespace_82b91a51::function_aa42b85a(0, 0);
	namespace_82b91a51::function_d094fb41(0, 0);
	namespace_82b91a51::function_549dd2f3(0, 10);
	namespace_82b91a51::function_779e30c5(0, 0);
	namespace_82b91a51::function_69229fbb(0, 100);
	namespace_2282eece::function_9f81beec(level.var_76c6e677, 15, 0, 1440);
	namespace_2f06d687::function_ef554cf7("axis", &function_54ba8dfa);
	level.var_f7711ebc = function_92a88da3("cumulativeRoundScores") == 0;
	level.var_a84b87c9 = function_92a88da3("teamScorePerKill");
	level.var_261dc085 = function_92a88da3("teamScorePerDeath");
	level.var_f29440cb = function_92a88da3("teamScorePerHeadshot");
	level.var_de12b72f = 1;
	level.var_edeba204 = 1;
	level.var_34685338 = &function_34685338;
	level.var_19bc9234 = &function_19bc9234;
	level.var_cc747d7a = undefined;
	level.var_c2658b46 = &function_c2658b46;
	level.var_2b829c4e = &function_fad7287a;
	level.var_bdd4d5c2 = &function_e5226d10;
	level thread function_a67d9d08();
	level.var_29d9f951 = 1;
	level.var_c8fa349a = 0;
	level.var_f1b9c317 = 0;
	level.var_fb734762 = &namespace_2282eece::function_90f415c9;
	level.var_67d7b8a9 = &namespace_2282eece::function_90f415c9;
	namespace_a230c2b1::function_a638807d(level.var_76c6e677);
	game["dialog"]["gametype"] = "coop_start";
	game["dialog"]["gametype_hardcore"] = "hccoop_start";
	game["dialog"]["offense_obj"] = "generic_boost";
	game["dialog"]["defense_obj"] = "generic_boost";
	function_7afde52("score", "kills", "assists", "incaps", "revives");
}

/*
	Name: function_54ba8dfa
	Namespace: namespace_c03736ba
	Checksum: 0x67F88810
	Offset: 0xC90
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_54ba8dfa()
{
	level namespace_52deffe2::function_eddb7236("enemy_spawn", self.var_722885f3, "allies");
	self namespace_52deffe2::function_f93165aa("enemy", "allies");
}

/*
	Name: function_79eba3d6
	Namespace: namespace_c03736ba
	Checksum: 0x8F80E6A3
	Offset: 0xCF8
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_79eba3d6(var_60db70fa)
{
	self endon("hash_3f7b661c");
	wait(var_60db70fa);
	self function_4890e520();
}

/*
	Name: function_642c1545
	Namespace: namespace_c03736ba
	Checksum: 0xC268D551
	Offset: 0xD38
	Size: 0x203
	Parameters: 0
	Flags: None
*/
function function_642c1545()
{
	self function_906ef162();
	if(namespace_1d795d47::function_52c50cb8() != -1)
	{
		self function_892bf421(namespace_1d795d47::function_52c50cb8(), "checkpoint_restores", 1);
	}
	if(isdefined(self.var_3ae58dd))
	{
	}
	else
	{
	}
	var_3ae58dd = level.var_6c3e6703;
	if(isdefined(self.var_5ed5ed01))
	{
	}
	else
	{
	}
	var_5ed5ed01 = level.var_6c3e6703;
	if(isdefined(self.var_bd1a8795))
	{
	}
	else
	{
	}
	var_bd1a8795 = level.var_6c3e6703;
	if(isdefined(self.var_f5ffba49))
	{
	}
	else
	{
	}
	var_f5ffba49 = level.var_6c3e6703;
	self.var_463e2ebb = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < 3; var_c957f6b6++)
	{
		if(level.var_1a47407b && isdefined(self.var_463e2ebb[var_c957f6b6]) && isdefined(level.var_8c9c8482[self.var_463e2ebb[var_c957f6b6]]))
		{
			var_d50db15a[var_c957f6b6] = level.var_8c9c8482[self.var_463e2ebb[var_c957f6b6]];
			continue;
		}
		var_d50db15a[var_c957f6b6] = 0;
	}
	self function_cf0ced21(var_3ae58dd, var_5ed5ed01, var_bd1a8795, var_f5ffba49, var_d50db15a[0], var_d50db15a[1], var_d50db15a[2]);
}

/*
	Name: function_a67d9d08
	Namespace: namespace_c03736ba
	Checksum: 0xC2B65F4D
	Offset: 0xF48
	Size: 0x2B5
	Parameters: 0
	Flags: None
*/
function function_a67d9d08()
{
	while(1)
	{
		level waittill("hash_2693b45");
		namespace_ccb8d056::function_c1cdedfb("death");
		namespace_82b91a51::function_459ff829();
		level thread namespace_ce7c3ed5::function_3f0b2996(1.25, 0, 1, "black", 1);
		function_ea498744("checkpointRestoreCount", 1);
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_5dc5e20a function_49876a9e(game["menu_start_menu"]);
			if(var_5dc5e20a namespace_957e94ce::function_7922262b("mobile_armory_in_use"))
			{
				var_5dc5e20a notify("hash_d2c577ed", "ChooseClass_InGame", "cancel");
			}
			var_5dc5e20a function_49876a9e(game["menu_changeclass"]);
			var_5dc5e20a function_49876a9e(game["menu_changeclass_offline"]);
			if(var_5dc5e20a.var_e0beb6ee == "spectator")
			{
				if(!isdefined(var_5dc5e20a.var_808c68ef))
				{
					var_5dc5e20a thread namespace_88a69b2f::function_1fb4fec9();
				}
				else
				{
					var_5dc5e20a thread namespace_7956eece::function_8deb5b1b();
				}
			}
			else if(var_5dc5e20a namespace_564407fb::function_38a9aff8())
			{
				var_5dc5e20a notify("hash_d397bc5c");
			}
			var_a7283d73 = var_5dc5e20a function_83fd42b5();
			if(!var_a7283d73)
			{
				var_5dc5e20a thread function_79eba3d6(3);
			}
			if(!(isdefined(world.var_bf966ebd) && world.var_bf966ebd))
			{
				world.var_bf966ebd = 1;
			}
			var_5dc5e20a function_642c1545();
		}
	}
}

/*
	Name: function_34685338
	Namespace: namespace_c03736ba
	Checksum: 0x2458E6C8
	Offset: 0x1208
	Size: 0x3B1
	Parameters: 0
	Flags: None
*/
function function_34685338()
{
	function_7c73e78e("auto_change");
	if(!isdefined(game["switchedsides"]))
	{
		game["switchedsides"] = 0;
	}
	if(game["switchedsides"])
	{
		var_6778c478 = game["attackers"];
		var_3bc9c460 = game["defenders"];
		game["attackers"] = var_3bc9c460;
		game["defenders"] = var_6778c478;
	}
	level.var_1ebbb333 = 0;
	namespace_52deffe2::function_1fd0742f();
	level.var_6af14375 = (0, 0, 0);
	level.var_51c188a7 = (0, 0, 0);
	foreach(var_3e94206a in level.var_f9f79134)
	{
		namespace_82b91a51::function_b5deb01d(var_3e94206a, &"OBJECTIVES_COOP");
		namespace_82b91a51::function_a7a109e6(var_3e94206a, &"OBJECTIVES_COOP_HINT");
		namespace_82b91a51::function_f38b59c3(var_3e94206a, &"OBJECTIVES_COOP");
	}
	level.var_d45a4a66 = namespace_d73b9283::function_b31651a2(level.var_6af14375, level.var_51c188a7);
	function_877b12b0(level.var_d45a4a66);
	var_3f6206f4 = namespace_4a43ba8::function_3812b585();
	function_9eb6e484(var_3f6206f4.var_722885f3, var_3f6206f4.var_6ab6f4fd);
	level thread function_7185e36b();
	namespace_4a43ba8::function_74317bd4("allies", "cp_coop_spawn");
	namespace_52deffe2::function_ca8dbdcd();
	level namespace_ad23e503::function_1ab5ebec("first_player_spawned");
	if(!level namespace_957e94ce::function_7922262b("level_has_skiptos"))
	{
		namespace_4a43ba8::function_311d8eda();
		namespace_4a43ba8::function_74317bd4("allies", "cp_coop_spawn");
		namespace_4a43ba8::function_74317bd4("allies", "cp_coop_respawn");
		namespace_52deffe2::function_ca8dbdcd();
	}
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		namespace_d8129fdd::function_bea1c67c("_level", var_5dc5e20a, "start");
	}
}

/*
	Name: function_19bc9234
	Namespace: namespace_c03736ba
	Checksum: 0x536B7693
	Offset: 0x15C8
	Size: 0x183
	Parameters: 2
	Flags: None
*/
function function_19bc9234(var_b530240c, var_878f71b1)
{
	if(!isdefined(var_b530240c))
	{
		var_b530240c = 0;
	}
	function_c22bfa61("COOP:onSpawnPlayer");
	self.var_667fe152 = undefined;
	if(isdefined(var_878f71b1))
	{
		var_878f71b1 = 1;
	}
	if(isdefined(var_878f71b1))
	{
		var_878f71b1 = -1;
	}
	var_3f6206f4 = namespace_52deffe2::function_fe9b0dce(self, var_b530240c);
	if(var_b530240c)
	{
		self function_c2ea5e7d(var_3f6206f4["origin"], var_3f6206f4["angles"]);
		self.var_b1c4b4dc = var_3f6206f4;
	}
	else if(isdefined(self.var_10aaa336))
	{
		var_3f6206f4["origin"] = self.var_10aaa336;
		self.var_10aaa336 = undefined;
	}
	if(isdefined(self.var_7e4a3c90))
	{
		var_3f6206f4["angles"] = self.var_7e4a3c90;
		self.var_7e4a3c90 = undefined;
	}
	self function_9b7fda5e(var_3f6206f4["origin"], var_3f6206f4["angles"], "coop");
	self thread function_51525e38();
	function_7905cb51();
}

/*
	Name: function_5cee117d
	Namespace: namespace_c03736ba
	Checksum: 0x7ACA4115
	Offset: 0x1758
	Size: 0x1BB
	Parameters: 0
	Flags: None
*/
function function_5cee117d()
{
	var_3f7d6e27 = [];
	while(!level.var_6b0d921)
	{
		var_e300e83a = level.var_e300e83a;
		var_43ec2aca = var_e300e83a * 0.1;
		var_62e9f79a = function_69c2f683(var_e300e83a - var_43ec2aca);
		var_dcf5aeea = var_e300e83a - 10;
		var_a812a174 = 0;
		var_1dbb4af6 = 0;
		foreach(var_3e94206a in level.var_e7a38025)
		{
			var_f1242439 = [[level.var_1dcc90b7]](var_3e94206a);
			if(var_f1242439 > var_a812a174)
			{
				var_1dbb4af6 = var_a812a174;
				var_a812a174 = var_f1242439;
				continue;
			}
			if(var_f1242439 > var_1dbb4af6)
			{
				var_1dbb4af6 = var_f1242439;
			}
		}
		var_9ed8c312 = var_a812a174 - var_1dbb4af6;
		if(var_9ed8c312 <= var_43ec2aca && var_62e9f79a <= var_a812a174)
		{
			return;
		}
		wait(1);
	}
}

/*
	Name: function_c2658b46
	Namespace: namespace_c03736ba
	Checksum: 0xA513346D
	Offset: 0x1920
	Size: 0x453
	Parameters: 9
	Flags: None
*/
function function_c2658b46(var_51e6a548, var_a0ad4f34, var_f9a179ed, var_ba36487d, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_b2e5f7d2)
{
	self function_49876a9e(game["menu_changeclass"]);
	var_a0ad4f34 namespace_e32b5089::function_595758a3(var_a0ad4f34.var_3e94206a, level.var_a84b87c9);
	self namespace_e32b5089::function_595758a3(self.var_3e94206a, level.var_261dc085 * -1);
	if(var_ba36487d == "MOD_HEAD_SHOT")
	{
		var_a0ad4f34 namespace_e32b5089::function_595758a3(var_a0ad4f34.var_3e94206a, level.var_f29440cb);
	}
	if(!function_27c72c1b() && (!isdefined(level.var_3da0c335) && level.var_3da0c335))
	{
		/#
			namespace_33b293fd::function_a7ee953(isdefined(level.var_3a87bd96));
		#/
		self function_1f3745c0(level.var_3a87bd96);
		var_d4633ac5 = self function_da26566c();
		if(isdefined(var_d4633ac5))
		{
			foreach(var_ecd5af4c in var_d4633ac5)
			{
				if(var_ecd5af4c !== self.var_24c0bfb)
				{
					self.var_88c6e52a = var_ecd5af4c;
					break;
				}
			}
		}
		self namespace_5dc5e20a::function_18cd2f76();
		self namespace_9f824288::function_bee608f0("saved_weapon", self.var_88c6e52a.var_4be20d44);
		self namespace_9f824288::function_bee608f0("saved_weapondata", self.var_ae42e42f);
		self.var_ae42e42f = undefined;
		self.var_8db39318 = undefined;
	}
	if(!(isdefined(level.var_3da0c335) && level.var_3da0c335))
	{
		if(isdefined(level.var_ad1a71f5))
		{
			return;
		}
		level.var_33287bb1 = self;
		if(self.var_dc4a16f6 === 0 && self function_76f34311("cybercom_emergencyreserve") != 0)
		{
			self.var_dc4a16f6 = 1;
			self function_b26abbde("lives", self.var_dc4a16f6);
		}
		if(level.var_2395e945.size == 1)
		{
			self function_b8862210("evt_death_down", self);
			if(isdefined(level.var_d59daf8) && level.var_d59daf8)
			{
				self.var_e8880dea = 1;
				if(isdefined(level.var_3a9f9a38) && level.var_3a9f9a38 && (isdefined(self.var_ebd83169) && self.var_ebd83169))
				{
					self thread function_c14603ce();
				}
				self namespace_82b91a51::function_9fcf3cd8(5, "cp_deathcam_ended");
			}
			level thread function_5ed5738a(undefined, undefined);
		}
		else if(level.var_6c41e242 >= 2)
		{
			function_37cbcf1a("evt_death_down", (0, 0, 0));
			level thread function_5ed5738a(&"GAME_YOU_DIED");
		}
	}
}

/*
	Name: function_5ed5738a
	Namespace: namespace_c03736ba
	Checksum: 0x7719132D
	Offset: 0x1D80
	Size: 0x59B
	Parameters: 2
	Flags: None
*/
function function_5ed5738a(var_b90e5c2c, var_c878636f)
{
	level.var_ad1a71f5 = 1;
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_82b91a51::function_c72856fc(0);
		namespace_d8129fdd::function_bea1c67c(level.var_31aefea8, var_5dc5e20a, "restart");
		var_5dc5e20a namespace_82b91a51::function_56cee95(1);
		var_5dc5e20a.var_c8430b0a = 1;
		if(isdefined(var_b90e5c2c))
		{
			var_e13f49eb = 1;
			var_5dc5e20a.var_c8656312 = var_5dc5e20a function_2f6b6a4c("CPMissionFailed");
			if(var_b90e5c2c == &"GAME_YOU_DIED")
			{
				if(var_5dc5e20a == level.var_33287bb1)
				{
					var_5dc5e20a thread function_7a243f7c();
				}
				else
				{
					var_5dc5e20a thread function_4f6eaa7(level.var_33287bb1);
				}
				var_5dc5e20a function_3a9588ea(var_5dc5e20a.var_c8656312, "MissionFailReason", "");
			}
			else
			{
				var_5dc5e20a function_3a9588ea(var_5dc5e20a.var_c8656312, "MissionFailReason", var_b90e5c2c);
			}
			if(!isdefined(var_c878636f))
			{
				var_c878636f = "";
			}
			var_5dc5e20a function_3a9588ea(var_5dc5e20a.var_c8656312, "MissionFailHint", var_c878636f);
		}
	}
	if(isdefined(var_e13f49eb))
	{
		wait(3.8);
	}
	var_d5b5f12 = 1.25;
	if(isdefined(level.var_33287bb1))
	{
		if(isdefined(level.var_3a9f9a38) && level.var_3a9f9a38)
		{
			foreach(var_5dc5e20a in level.var_2395e945)
			{
				if(isdefined(var_5dc5e20a.var_acfedf1c) && var_5dc5e20a.var_acfedf1c)
				{
					level.var_33287bb1 namespace_82b91a51::function_5b7e3888("end_killcam", "fade_out_killcam");
					if(isdefined(level.var_33287bb1.var_1c362abb))
					{
						var_d5b5f12 = level.var_33287bb1.var_1c362abb;
					}
				}
			}
		}
		level thread namespace_ce7c3ed5::function_3f0b2996(var_d5b5f12, 1, 0, "black", 0);
		wait(var_d5b5f12);
		var_ac4d13a6 = 1;
		if(isdefined(level.var_3a9f9a38) && level.var_3a9f9a38)
		{
			foreach(var_5dc5e20a in level.var_2395e945)
			{
				if(isdefined(var_5dc5e20a.var_acfedf1c) && var_5dc5e20a.var_acfedf1c)
				{
					var_5dc5e20a namespace_71e9cb84::function_e9c3870b("killcam_menu", 0);
				}
			}
		}
	}
	else if(!isdefined(var_ac4d13a6))
	{
		level thread namespace_ce7c3ed5::function_3f0b2996(var_d5b5f12, 1, 0, "black", 0);
		wait(var_d5b5f12);
	}
	if(isdefined(level.var_6b0d921) && level.var_6b0d921)
	{
		wait(1000);
	}
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a notify("hash_1528244e");
		var_5dc5e20a function_7198d073(0);
		var_5dc5e20a namespace_82b91a51::function_56cee95(0);
	}
	function_ada65d6b();
	wait(0.5);
	function_764c8221();
}

/*
	Name: function_7a243f7c
	Namespace: namespace_c03736ba
	Checksum: 0xCB4A30DD
	Offset: 0x2328
	Size: 0x12F
	Parameters: 0
	Flags: None
*/
function function_7a243f7c()
{
	wait(1.2);
	self.var_51a0d4ef = function_ad13099a(self);
	self.var_51a0d4ef.var_b5536acc = "center";
	self.var_51a0d4ef.var_db55e535 = "middle";
	self.var_51a0d4ef.var_740218b1 = "center";
	self.var_51a0d4ef.var_f9134763 = "middle";
	self.var_51a0d4ef.var_79e0f792 = 1;
	self.var_51a0d4ef.var_2363da9c = 2;
	self.var_51a0d4ef.var_aabe9f43 = 0;
	self.var_51a0d4ef.var_d900369a = (1, 1, 1);
	self.var_51a0d4ef function_f6181aca(&"GAME_YOU_DIED");
	self.var_51a0d4ef function_ba7f003e(1);
	self.var_51a0d4ef.var_aabe9f43 = 1;
}

/*
	Name: function_4f6eaa7
	Namespace: namespace_c03736ba
	Checksum: 0xA259A4E0
	Offset: 0x2460
	Size: 0x13F
	Parameters: 1
	Flags: None
*/
function function_4f6eaa7(var_34ab38ea)
{
	wait(1);
	self.var_d1a09d1e = function_ad13099a(self);
	self.var_d1a09d1e.var_b5536acc = "center";
	self.var_d1a09d1e.var_db55e535 = "middle";
	self.var_d1a09d1e.var_740218b1 = "center";
	self.var_d1a09d1e.var_f9134763 = "middle";
	self.var_d1a09d1e.var_79e0f792 = 1;
	self.var_d1a09d1e.var_2363da9c = 2;
	self.var_d1a09d1e.var_aabe9f43 = 0;
	self.var_d1a09d1e.var_d900369a = (1, 1, 1);
	self.var_d1a09d1e function_f6181aca(&"GAME_TEAMMATE_DIED", var_34ab38ea);
	self.var_d1a09d1e function_ba7f003e(1);
	self.var_d1a09d1e.var_aabe9f43 = 1;
}

/*
	Name: function_c14603ce
	Namespace: namespace_c03736ba
	Checksum: 0x1649B21E
	Offset: 0x25A8
	Size: 0xE9
	Parameters: 0
	Flags: None
*/
function function_c14603ce()
{
	self endon("hash_643a7daf");
	self endon("hash_1528244e");
	level endon("hash_c8ab51de");
	self namespace_71e9cb84::function_e9c3870b("killcam_menu", 1);
	/#
		function_d0eaf029("Dev Block strings are not supported", (1, 0, 1));
	#/
	while(self function_d5ef124())
	{
		wait(0.05);
	}
	while(!self function_d5ef124())
	{
		wait(0.05);
	}
	self.var_acfedf1c = 1;
	self namespace_71e9cb84::function_e9c3870b("killcam_menu", 0);
	self notify("hash_261f3a82");
}

/*
	Name: function_e82a1210
	Namespace: namespace_c03736ba
	Checksum: 0x578E4791
	Offset: 0x26A0
	Size: 0x187
	Parameters: 0
	Flags: None
*/
function function_e82a1210()
{
	if(!isdefined(self.var_ee8c475a))
	{
		self.var_ee8c475a = function_ad13099a(self);
		self.var_ee8c475a.var_740f6833 = 0;
		self.var_ee8c475a.var_4f8217af = 0;
		self.var_ee8c475a.var_b5536acc = "center";
		self.var_ee8c475a.var_db55e535 = "middle";
		self.var_ee8c475a.var_740218b1 = "center";
		self.var_ee8c475a.var_f9134763 = "bottom";
		self.var_ee8c475a.var_4d19365 = 1;
		self.var_ee8c475a.var_83253ac2 = "objective";
	}
	if(self function_33d0d4d7())
	{
		self.var_ee8c475a.var_297f9d46 = -100;
		self.var_ee8c475a.var_2363da9c = 1;
	}
	else
	{
		self.var_ee8c475a.var_297f9d46 = -180;
		self.var_ee8c475a.var_2363da9c = 1.5;
	}
	self.var_ee8c475a function_f6181aca(&"MENU_CP_KILLCAM_PROMPT");
	self.var_ee8c475a.var_aabe9f43 = 1;
}

/*
	Name: function_44e35f1a
	Namespace: namespace_c03736ba
	Checksum: 0x2C0E4C8A
	Offset: 0x2830
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_44e35f1a()
{
	self endon("hash_643a7daf");
	self endon("hash_1528244e");
	self endon("hash_d9c9cb29");
	level endon("hash_c8ab51de");
	self function_e82a1210();
	/#
		function_d0eaf029("Dev Block strings are not supported", (1, 0, 1));
	#/
	while(self function_d5ef124())
	{
		wait(0.05);
	}
	while(!self function_d5ef124())
	{
		wait(0.05);
	}
	self.var_acfedf1c = 1;
	self.var_ee8c475a.var_aabe9f43 = 0;
	if(isdefined(level.var_3a9f9a38) && level.var_3a9f9a38)
	{
		var_6d42c33a = 0;
		var_133ce9dc = [];
		var_d50db15a = [];
		self namespace_367908b2::function_367908b2(self function_c7f3ce11(), self function_c7f3ce11(), self.var_ca78829f, self.var_1b7a74aa, var_6d42c33a, self.var_d9dd0142, self.var_9f66af5e, self.var_8c0347ee, self.var_2b1ad8b, 1, undefined, var_133ce9dc, var_d50db15a, self);
	}
}

/*
	Name: function_6dc12009
	Namespace: namespace_c03736ba
	Checksum: 0xADC7C4BE
	Offset: 0x29D0
	Size: 0x1D3
	Parameters: 0
	Flags: None
*/
function function_6dc12009()
{
	if(!(isdefined(level.var_ee7cb602) && level.var_ee7cb602))
	{
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(var_5dc5e20a != self && var_5dc5e20a.var_e0beb6ee != "dead" && var_5dc5e20a.var_e0beb6ee != "spectator" && (!isdefined(var_5dc5e20a.var_564407fb) && var_5dc5e20a.var_564407fb))
			{
				return;
			}
		}
	}
	else if(!(isdefined(level.var_8118ccb1) && level.var_8118ccb1))
	{
		if(isdefined(self) && self.var_dc4a16f6 === 0 && self function_76f34311("cybercom_emergencyreserve") != 0)
		{
			self.var_dc4a16f6 = 1;
			self function_b26abbde("lives", self.var_dc4a16f6);
		}
		level thread function_5ed5738a();
	}
	level.var_8118ccb1 = 1;
	/#
		if(!(isdefined(level.var_8118ccb1) && level.var_8118ccb1))
		{
			function_95d3daf8("Dev Block strings are not supported");
		}
	#/
}

/*
	Name: function_fad7287a
	Namespace: namespace_c03736ba
	Checksum: 0x2E80BC7C
	Offset: 0x2BB0
	Size: 0x11F
	Parameters: 0
	Flags: None
*/
function function_fad7287a()
{
	self notify("hash_e5088dc8");
	self endon("hash_e5088dc8");
	if(isdefined(level.var_3da0c335) && level.var_3da0c335 || (isdefined(level.var_35a23885) && level.var_35a23885) || !isdefined(self.var_a90a3829))
	{
		self.var_a90a3829 = 1;
		return 1;
	}
	if(self function_33d0d4d7())
	{
		namespace_82b91a51::function_ad66eb43(game["strings"]["waiting_to_spawn_ss"], 15, 1);
	}
	else
	{
		namespace_82b91a51::function_ad66eb43(game["strings"]["waiting_to_spawn"], 15);
	}
	level namespace_82b91a51::function_9fcf3cd8(15, "objective_changed");
	return 1;
}

/*
	Name: function_7185e36b
	Namespace: namespace_c03736ba
	Checksum: 0xB4AF9A96
	Offset: 0x2CD8
	Size: 0xFD
	Parameters: 0
	Flags: None
*/
function function_7185e36b()
{
	level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	while(1)
	{
		level waittill("hash_4b5852e7");
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(var_5dc5e20a.var_e0beb6ee == "spectator" && namespace_c46f5728::function_d0b6aba3(var_5dc5e20a.var_808c68ef))
			{
				var_5dc5e20a namespace_7956eece::function_8deb5b1b();
			}
		}
	}
}

/*
	Name: function_e5226d10
	Namespace: namespace_c03736ba
	Checksum: 0x824977DE
	Offset: 0x2DE0
	Size: 0x17
	Parameters: 0
	Flags: None
*/
function function_e5226d10()
{
	if(!isdefined(self.var_a90a3829))
	{
		return 1;
	}
	return 0;
}

/*
	Name: function_e9f7384d
	Namespace: namespace_c03736ba
	Checksum: 0xC7BFB4C9
	Offset: 0x2E00
	Size: 0x2B5
	Parameters: 0
	Flags: None
*/
function function_e9f7384d()
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	if(isdefined(self.var_fd4f9b7c.var_84690dfd) && self.var_fd4f9b7c.var_84690dfd)
	{
		return;
	}
	var_4da6a075 = self function_21995b5a();
	var_961f11b8 = [];
	foreach(var_dfcc01fd in var_4da6a075)
	{
		if(isdefined(var_dfcc01fd.var_84690dfd) && var_dfcc01fd.var_84690dfd)
		{
			if(!isdefined(var_961f11b8))
			{
				var_961f11b8 = [];
			}
			else if(!function_6e2770d8(var_961f11b8))
			{
				var_961f11b8 = function_84970cc4(var_961f11b8);
			}
			var_961f11b8[var_961f11b8.size] = var_dfcc01fd;
		}
	}
	var_72efcecb = var_961f11b8[0];
	if(isdefined(var_72efcecb))
	{
		if(self function_159a070b(var_72efcecb) + self function_54d84899(var_72efcecb) > 0)
		{
			if(isdefined(self.var_928b1776))
			{
				if(GetTime() - self.var_928b1776 > 90000)
				{
					switch(var_72efcecb.var_8c02d299.var_4be20d44)
					{
						case "launcher_standard":
						{
							if(self.var_9b416318 < 5)
							{
								self namespace_82b91a51::function_32d40124(&"COOP_EQUIP_XM53");
							}
							break;
						}
						case "spike_launcher":
						{
							if(self.var_9b416318 < 10)
							{
								self namespace_82b91a51::function_32d40124(&"COOP_EQUIP_SPIKE_LAUNCHER");
							}
							break;
						}
						case "micromissile_launcher":
						{
							if(self.var_9b416318 < 10)
							{
								self namespace_82b91a51::function_32d40124(&"COOP_EQUIP_MICROMISSILE");
							}
							break;
						}
					}
				}
			}
		}
	}
}

/*
	Name: function_51525e38
	Namespace: namespace_c03736ba
	Checksum: 0x8DA56E8A
	Offset: 0x30C0
	Size: 0xF5
	Parameters: 0
	Flags: None
*/
function function_51525e38()
{
	self notify("hash_dc0f8e82");
	self endon("hash_128f8789");
	self endon("hash_dc0f8e82");
	var_a151e229 = 0;
	while(1)
	{
		self waittill("hash_1194c978", var_daa69c19);
		if(isdefined(var_daa69c19))
		{
			if(isdefined(var_daa69c19.var_84690dfd) && var_daa69c19.var_84690dfd)
			{
				if(!isdefined(self.var_9b416318))
				{
					self.var_9b416318 = 0;
				}
				self thread function_e9b4a63b();
				var_a151e229 = 1;
			}
			else if(var_a151e229)
			{
				self.var_928b1776 = GetTime();
			}
			self notify("hash_79135cb3");
			var_a151e229 = 0;
		}
	}
}

/*
	Name: function_e9b4a63b
	Namespace: namespace_c03736ba
	Checksum: 0x91BFA7B
	Offset: 0x31C0
	Size: 0x6F
	Parameters: 0
	Flags: None
*/
function function_e9b4a63b()
{
	self endon("hash_128f8789");
	self endon("hash_79135cb3");
	while(1)
	{
		self waittill("hash_aa1618b0", var_daa69c19);
		if(isdefined(var_daa69c19.var_84690dfd) && var_daa69c19.var_84690dfd)
		{
			self.var_9b416318++;
		}
	}
}

